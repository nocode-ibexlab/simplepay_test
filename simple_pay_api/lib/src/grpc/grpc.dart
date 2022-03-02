import 'dart:async';
import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:simple_pay_api/src/Database/BusinessLogic/us/TraceBL.dart';
import 'package:simple_pay_api/src/Database/Entity/TraceLog.dart';
import 'package:simple_pay_api/src/Database/Util/Log.dart';

import '../device.dart';
import '../simple.dart';
import 'auth.dart';
import 'exception.dart';
import 'generated/api/v1/hello.pbgrpc.dart';
import 'generated/api/v1/message.pb.dart' as pbm;
import 'generated/api/v1/service.pbgrpc.dart';
import 'generated/api/v1/table/table.pb.dart' as pbt;
import 's3client.dart';
import 'services.dart';

final gRpcClient = GRpcClient.instance;

const _PKG_BUSINESS_V1 = 'g00.business.v1';
const _PKG_ITEMS_V1 = 'g00.items.v1';
const _PKG_LOG_V1 = 'g00.log.v1';
const _PKG_LICENSE_V1 = 'g00.license.v1';
const _PKG_ORDER_V1 = 'g00.order.v1';
const _PKG_INVENTORY_V1 = "g00.inventory.v1";

class GRpcClient extends GRpcBaseClient {
  static const String _TAG = 'gRPC';
  static const int _LISTEN_ORDER_PING_TIME = 60;

  static GRpcClient get instance => _instance;

  static final GRpcClient _instance = GRpcClient._internal();

  GRpcClient._internal() {
    _ap3service = Ap3Service();
    _downloadService = DownloadService();
    _uploadService = UploadService();
    _orderService = OrderSyncService();
    _inventoryService = InventoryService();
  }

  late Ap3Service _ap3service;
  late DownloadService _downloadService;
  late UploadService _uploadService;
  late OrderSyncService _orderService;
  late InventoryService _inventoryService;

  ///
  /// Ping
  ///
  Future<void> ping() async {
    TLog.d(_TAG, 'Ping (dart) >>>');
    HelloReply response =
        await tryRequest(() => _helloClient.sayHello(HelloRequest()));
    var msg = response.message;
    TLog.d(_TAG, 'Ping (dart) <<< ${msg.isNotEmpty ? msg : 'no response'}');
  }

  ///
  /// 앱 무결성 검증 전 서버로부터 [nonce] 값 받음
  ///
  Future<String> getNonce() async {
    TLog.d(_TAG, 'Get nonce');
    pbm.Empty request = pbm.Empty()
      ..common = createCommon(_PKG_BUSINESS_V1, 'business.getNonce');
    pbm.AppVerification response = await _businessClient.getNonce(request);

    if (response == null) {
      throw GRpcException(code: 'EC0000', message: 'No response');
    }

    return response.content.nonce;
  }

  ///
  /// 앱 무결성 검증
  ///
  Future<void> verifySelf(String nonce) async {
    TLog.d(_TAG, 'Verify app');
    String codePath = Simple.result(await Device().getDevicePath(), 'codePath');
    pbm.AppVerification request = pbm.AppVerification()
      ..common = createCommon(_PKG_BUSINESS_V1, 'business.verifyApp')
      ..content = (pbm.AppVerification_Content()
        ..ap3Data = await _ap3service.getAp3Data(codePath, nonce));
    pbm.AppVerification response = await _businessClient.verifyApp(request);

    if (response == null) {
      throw GRpcException(code: 'EC0000', message: 'No response');
    }

    if (response.content.keyHint.isEmpty) {
      throw GRpcException(code: 'EC1111', message: 'Verification fail');
    }
  }

  ///
  /// 앱 등록
  ///
  /// * [loginId]: 로그인 ID (상점 ID 받기전 일 수 있어 로그인 ID 사용해야 함)
  /// * [storeTerminalId]: 상점 터미널 ID
  /// * [appKey]: 앱 구분자
  /// * [appPkgKey]: 앱 패키지 구분자
  /// * [version]: 버전
  /// * [deviceId]: 장치 ID (현재 MAC 주소 사용)
  Future<void> registerApp({
    required String loginId,
    required String storeTerminalId,
    required String appKey,
    required String appPkgKey,
    required String version,
    required String deviceId,
  }) async {
    pbm.AppRegistration request = pbm.AppRegistration()
      ..common = createCommon(_PKG_BUSINESS_V1, 'business.registerApp')
      ..content = (pbm.AppRegistration_Content()
        ..loginId = loginId
        ..storeTerminalId = storeTerminalId
        ..appKey = appKey
        ..appPkgKey = appPkgKey
        ..version = version
        ..deviceId = deviceId);
    pbm.AppRegistration response =
        await tryRequest(() => _businessClient.registerApp(request));

    if (response.common.resCode != '00') {
      throw GRpcException(
          code: response.common.resCode, message: response.common.resMessage);
    }
  }

  ///
  /// 도메인 목록 가져오기
  ///
  Future<List<String?>> getLoginDomains() async {
    pbm.Empty request = pbm.Empty()
      ..common = createCommon(_PKG_BUSINESS_V1, 'business.getLoginDomains');
    pbm.LoginDomain response = await _businessClient.getLoginDomains(request);
    return response.content.domain;
  }

  ///
  /// Trace 로그 업로드
  ///
  Future<void> uploadTraceLog() async {
    List<TraceLog> logs = await TraceBL().getNotSynced();

    if (logs.length == 0) {
      return;
    }

    TLog.d(_TAG, '+++ Upload log data >>> TraceLog count=${logs.length}');

    tryRequest(() async {
      String tranNo = transactionNo();
      int now = DateTime.now().millisecondsSinceEpoch;
      Stream<pbm.LogMessage> request =
          Stream.fromIterable(logs.map((i) => pbm.LogMessage()
            ..common =
                createCommon(_PKG_LOG_V1, 'log.uploadLog', tranNo: tranNo)
            ..content = (pbm.LogMessage_Content()
              ..logId = Int64(i.id!)
              ..logText = i.log!
              ..storeId = i.storeId ?? ''
              ..storeTerminalId = i.storeTerminalId!
              ..modificationTime = i.lastRevisionDatetime!
              ..sendingTimestamp = Int64(now))));

      await for (pbm.LogMessage response
          in _logClient.uploadLogCloud(request)) {
        int id = response.content.logId.toInt();
        await TraceBL().setSynced(id);
      }

      TLog.d(_TAG, '+++ Upload log data >>> SUCCESS');
    });
  }

  ///
  ///  관리자 (대리점 또는 총판) 비밀번호 검증
  ///
  Future<bool> verifyAdminPassword(String password) async {
    pbm.PasswordVerification request = pbm.PasswordVerification()
      ..common = createCommon(_PKG_BUSINESS_V1, 'business.verifyAdminPassword')
      ..content = (pbm.PasswordVerification_Content()..password = password);
    pbm.PasswordVerification response =
        await tryRequest(() => _businessClient.verifyAdminPassword(request));

    String code = response.common.resCode;
    String message = response.common.resMessage;
    TLog.d(_TAG, 'Verify admin password: resCode=$code resMessage=$message');
    return code == '00';
  }

  ///
  /// 상품 그룹 업로드
  ///
  Future<String?> insertItemGroup({
    String? name,
    String? itemGroupTypeCode,
    String? operationTypeCode,
    String? storeId,
    String? loginId,
    String? dateTime,
  }) async {
    // cloud stream 사용하는 경우 source address 반드시 존재해야 함
    if (_address == null || _address!.isEmpty) {
      TLog.d(_TAG, 'insertItemGroup: source address is empty');
      return null;
    }

    TLog.d(_TAG, '+++ Upload insertItemGroup data >>> ');

    return await tryRequest(() async {
      Stream<pbm.ItemGroup> request = Stream.value(pbm.ItemGroup()
        ..common = createCommon(_PKG_ITEMS_V1, 'items.insertItemGroup')
        ..content = (pbm.ItemGroup_Content()
          ..itemGroupName = name!
          ..itemGroupTypeCode = itemGroupTypeCode!
          ..operationTypeCode = operationTypeCode!
          ..hidingYn = false
          ..firstRegistrantId = loginId!
          ..firstRegistrationDatetime = dateTime!
          ..lastReviserId = loginId
          ..lastRevisionDatetime = dateTime
          ..stateCode = '00'
          ..storeId = storeId!));
      String? itemGroupId;

      await for (pbm.ItemGroup response
          in _itemsClient.insertItemGroupCloud(request)) {
        itemGroupId = response.content.itemGroupId;
      }

      TLog.d(_TAG, '+++ Upload insertItemGroup data >>> SUCCESS');
      return itemGroupId;
    });
  }

  ///
  /// 상품 업로드
  ///
  Future<String?> insertItem({
    String? groupId,
    String? name,
    String? operationTypeCode,
    String? saleTypeCode,
    String? priceTypeCode,
    String? itemCode,
    double? sellingPrice,
    String? barcode,
    String? applyTax0Yn,
    String? storeId,
    String? loginId,
    String? linkCode,
    String? dateTime,
  }) async {
    // cloud stream 사용하는 경우 source address 반드시 존재해야 함
    if (_address == null || _address!.isEmpty) {
      TLog.d(_TAG, 'insertItem: source address is empty');
      return null;
    }

    TLog.d(_TAG, '+++ Upload insertItem data >>> ');

    return await tryRequest(() async {
      Stream<pbm.Item> request = Stream.value(pbm.Item()
        ..common = createCommon(_PKG_ITEMS_V1, 'items.insertItem')
        ..content = (pbm.Item_Content()
          ..itemName = name!
          ..itemCode = itemCode!
          ..itemGroupId = groupId!
          ..operationTypeCode = operationTypeCode!
          ..saleTypeCode = saleTypeCode!
          ..cost = 0
          ..priceTypeCode = priceTypeCode!
          ..sellingPrice = sellingPrice!
          ..openPriceYn = false
          ..barcode = barcode!
          ..applyTax0Yn = applyTax0Yn!
          ..applyTax1Yn = '0'
          ..applyTax2Yn = '0'
          ..applyDiscountYn = false
          ..hidingYn = false
          ..inventoryQuantity = 0
          ..kitchenPrinterOutputYn = true
          ..optionUseTypeCode = 'N'
          ..recommendedItemYn = false
          ..packingPossibleYn = false
          ..onlineSaleYn = false
          ..soldOutYn = false
          ..imageUrl = ''
          ..linkCode = linkCode!
          ..firstRegistrantId = loginId!
          ..firstRegistrationDatetime = dateTime!
          ..lastReviserId = loginId
          ..lastRevisionDatetime = dateTime
          ..stateCode = '00'
          ..storeId = storeId!));
      String? itemId;

      await for (pbm.Item response in _itemsClient.insertItemCloud(request)) {
        itemId = response.content.itemId;
      }

      TLog.d(_TAG, '+++ Upload insertItem data >>> SUCCESS');
      return itemId;
    });
  }

  ///
  /// 테이블 다운로드
  ///
  Future<bool> downloadTables() async {
    TLog.d(_TAG, '+++ Request S3 file for downloading all tables >>> ');
    var time1 = DateTime.now();
    pbm.LastModified request = pbm.LastModified()
      ..common = createCommon(_PKG_BUSINESS_V1, 'business.allTables')
      ..content = (pbm.LastModified_Content()
        ..tableNames.addAll(_downloadService.tableNames)
        ..times.addAll(await _downloadService.lastModifiedAll()));
    pbm.S3File response =
        await tryRequest(() => _businessClient.allTables(request));

    if (response.common.resCode != '00') {
      TLog.d(
          _TAG, '+++ Request S3 file >>> FAIL (${response.common.resMessage})');
      return false;
    }

    var time2 = DateTime.now();
    var duration = time2.difference(time1).inMilliseconds;
    TLog.d(_TAG, '+++ Request S3 file >>> SUCCESS ($duration ms)');

    TLog.d(_TAG,
        '+++ Download S3 file: ${response.content.endpoint}/${response.content.bucket}/${response.content.key}');
    S3Client.instance.init(
      accessKey: response.content.accessKey,
      secretKey: response.content.secretKey,
      dataBucket: response.content.bucket,
      imageBucket: response.content.bucket2,
      region: response.content.region,
      endpoint: response.content.endpoint,
    );

    try {
      var content = await S3Client.instance.download(response.content.key);
      var inflated = zlib.decode(content);
      var time3 = DateTime.now();
      var duration = time3.difference(time2).inMilliseconds;
      TLog.d(_TAG, '+++ Download S3 file >>> SUCCESS ($duration ms)');
      TLog.d(_TAG,
          'File size: ${inflated.length ~/ 1024} KB (compressed: ${content.length ~/ 1024} KB)');

      TLog.d(_TAG, '+++ Process S3 file');
      var tables = pbt.AllTables.fromBuffer(inflated);
      await _downloadService.processAllTables(tables);
      var time4 = DateTime.now();
      duration = time4.difference(time3).inMilliseconds;
      TLog.d(_TAG, '+++ Process S3 file >>> SUCCESS ($duration ms)');
      return true;
    } catch (e, stacktrace) {
      TLog.d(_TAG, '+++ Download/Process S3 file >>> FAIL ($e)');
      print(stacktrace);
    }

    return false;
  }

  ///
  /// 설정 동기화
  ///
  Future<void> uploadSettings() async {
    var content = await _uploadService.createSettingsData();

    if (content == null) {
      return;
    }

    Log.d(_TAG, '+++ Upload settings >>>');
    pbm.SettingsData request = pbm.SettingsData()
      ..common = createCommon(_PKG_BUSINESS_V1, 'business.uploadSettings')
      ..content = content;
    pbm.SettingsData response =
        await tryRequest(() => _businessClient.uploadSettings(request));

    if (response.common.resCode != '00') {
      TLog.d(_TAG, '+++ Upload settings >>> FAIL');
      throw GRpcException(code: 'EC0000', message: response.common.resMessage);
    }

    await _uploadService.uploadSettingsDone(response.content);
    Log.d(_TAG, '+++ Upload settings >>> SUCCESS');
  }

  ///
  /// 판매 데이터 동기화
  ///
  Future<void> uploadSales() async {
    var content = await _uploadService.createSalesData();

    if (content == null) {
      return;
    }

    Log.d(_TAG, '+++ Upload sales >>>');
    pbm.SalesData request = pbm.SalesData()
      ..common = createCommon(_PKG_BUSINESS_V1, 'business.uploadSales')
      ..content = content;
    pbm.SalesData response =
        await tryRequest(() => _businessClient.uploadSales(request));

    if (response.common.resCode != '00') {
      TLog.d(_TAG, '+++ Upload sales >>> FAIL');
      throw GRpcException(code: 'EC0000', message: response.common.resMessage);
    }

    await _uploadService.uploadSalesDone(response.content);
    Log.d(_TAG, '+++ Upload sales >>> SUCCESS');
  }

  ///
  /// 영업 데이터 동기화
  ///
  Future<void> uploadCashierData() async {
    var content = await _uploadService.createCashierData();

    if (content == null) {
      return;
    }

    Log.d(_TAG, '+++ Upload cashier data >>>');
    pbm.CashierData request = pbm.CashierData()
      ..common = createCommon(_PKG_BUSINESS_V1, 'business.uploadCashierData')
      ..content = content;
    pbm.CashierData response =
        await tryRequest(() => _businessClient.uploadCashierData(request));

    if (response.common.resCode != '00') {
      TLog.d(_TAG, '+++ Upload cashier data >>> FAIL');
      throw GRpcException(code: 'EC0000', message: response.common.resMessage);
    }

    await _uploadService.uploadCashierDataDone(response.content);
    Log.d(_TAG, '+++ Upload cashier data >>> SUCCESS');
  }

  ///
  /// 보고서 동기화
  ///
  Future<void> uploadReports() async {
    var content = await _uploadService.createReportData();

    if (content == null) {
      return;
    }

    Log.d(_TAG, '+++ Upload report data >>>');
    pbm.ReportData request = pbm.ReportData()
      ..common = createCommon(_PKG_BUSINESS_V1, 'business.uploadReports')
      ..content = content;
    pbm.ReportData response =
        await tryRequest(() => _businessClient.uploadReports(request));

    if (response.common.resCode != '00') {
      TLog.d(_TAG, '+++ Upload report data >>> FAIL');
      throw GRpcException(code: 'EC0000', message: response.common.resMessage);
    }

    await _uploadService.uploadReportDone(response.content);
    Log.d(_TAG, '+++ Upload report data >>> SUCCESS');
  }

  ///
  /// 판매/영업/보고서 데이터 다운로드
  ///
  Future<bool> downloadSalesAndReportData() async {
    TLog.d(_TAG,
        '+++ Request S3 file for downloading sales and report tables >>> ');
    var start = DateTime.now();
    pbm.Empty request = pbm.Empty()
      ..common =
          createCommon(_PKG_BUSINESS_V1, 'business.salesAndReportTables');
    pbm.S3File response =
        await tryRequest(() => _businessClient.salesAndReportTables(request));

    if (response.common.resCode != '00') {
      TLog.d(_TAG, '+++ Request S3 file >>> FAIL');
      return false;
    }

    var duration = DateTime.now().difference(start).inMilliseconds;
    TLog.d(_TAG, '+++ Request S3 file >>> SUCCESS ($duration ms)');

    TLog.d(_TAG, '+++ Download S3 file');
    S3Client.instance.init(
      accessKey: response.content.accessKey,
      secretKey: response.content.secretKey,
      dataBucket: response.content.bucket,
      region: response.content.region,
      endpoint: response.content.endpoint,
    );

    try {
      var content = await S3Client.instance.download(response.content.key);
      var inflated = zlib.decode(content);
      var duration = DateTime.now().difference(start).inMilliseconds;
      TLog.d(_TAG, '+++ Download S3 file >>> SUCCESS ($duration ms)');
      TLog.d(_TAG,
          'File size: ${inflated.length ~/ 1024} KB (compressed: ${content.length ~/ 1024} KB)');

      TLog.d(_TAG, '+++ Process S3 file');
      var tables = pbt.SalesAndReportTables.fromBuffer(inflated);
      await _downloadService.processSalesAndReportTables(tables);
      duration = DateTime.now().difference(start).inMilliseconds;
      TLog.d(_TAG, '+++ Process S3 file >>> SUCCESS ($duration ms');
      return true;
    } catch (e, stacktrace) {
      TLog.d(_TAG, '+++ Download/Process S3 file >>> FAIL ($e)');
      print(stacktrace);
    }

    return false;
  }

  ///
  /// 앱 등록 화면에 필요한 데이터 (등록 가능한 상점 터미널 목록, 약관)
  ///
  Future<Map> getRegistrationForm(String loginId) async {
    pbm.RegistrationForm request = pbm.RegistrationForm()
      ..common = createCommon(_PKG_BUSINESS_V1, 'business.getRegistrationForm')
      ..content = (pbm.RegistrationForm_Content()..loginId = loginId);
    pbm.RegistrationForm response =
        await tryRequest(() => _businessClient.getRegistrationForm(request));

    return {
      'storeTerminals': response.content.storeTerminals
          .map((i) => {
                'id': i.storeTerminalId,
                'name': i.storeTerminalName,
              })
          .toList(),
      'softwareTerms': response.content.software,
      'serviceTerms': response.content.service,
      'personalInfoAgreement': response.content.personalInfoAgreement,
      'marketingInfoAgreement': response.content.marketingInfoAgreement,
    };
  }

  ///
  /// 출입등록
  ///
  Future<void> entranceRegistration(String loginId, String storeId,
      String storeTerminalId, String phoneNumber, bool isAgree) async {
    pbm.EntranceRegistrationData request = pbm.EntranceRegistrationData()
      ..common = createCommon(
          _PKG_BUSINESS_V1,
          'business'
          '.entranceRegistration')
      ..content = (pbm.EntranceRegistrationData_Content()
        ..storeId = storeId
        ..storeTerminalId = storeTerminalId
        ..phoneNumber = phoneNumber
        ..isAgree = isAgree);
    pbm.EntranceRegistrationData response =
        await tryRequest(() => _businessClient.entranceRegistration(request));
  }

  ///
  /// MenuGroupUse 테이블 다운로드
  ///
  Future<bool> downloadMenuGroupUseTables() {
    return _downloadItemTables('MenuGroupUse');
  }

  ///
  /// MenuGroup 테이블 다운로드
  ///
  Future<bool> downloadMenuGroupTables() {
    return _downloadItemTables('MenuGroup');
  }

  ///
  /// MenuItem 테이블 다운로드
  ///
  Future<bool> downloadMenuItemTables() {
    return _downloadItemTables('MenuItem');
  }

  ///
  /// Item 테이블 다운로드
  ///
  Future<bool> downloadItemTables() {
    return _downloadItemTables('Item');
  }

  ///
  /// ItemGroup 테이블 다운로드
  ///
  Future<bool> downloadItemGroupTables() {
    return _downloadItemTables('ItemGroup');
  }

  Future<bool> _downloadItemTables(String name) async {
    pbm.LastModified request = pbm.LastModified()
      ..common = createCommon(_PKG_BUSINESS_V1, 'business.itemTables')
      ..content = (pbm.LastModified_Content()
        ..tableNames.add(name)
        ..times.add(await _downloadService.lastModified(name)));
    pbm.ItemData response =
        await tryRequest(() => _businessClient.itemTables(request));

    if (response.common.resCode != '00') {
      return false;
    }

    await _downloadService.processItemTables(response.content);
    return true;
  }

  Future<Map> issueLicense(
      {String? licenseVersion, String? packageName}) async {
    Log.d(_TAG, '+++ issueLicense >>>');
    pbm.IssueLicenseRequest request = pbm.IssueLicenseRequest()
      ..common = createCommon(_PKG_LICENSE_V1, 'issueLicense')
      ..content = (pbm.IssueLicenseRequest_Content()
        ..licenseInfo = pbm.LicenseInfo(ver: licenseVersion, pkg: packageName));
    pbm.IssueLicenseResponse response =
        await tryRequest(() => _licenseClient.issueLicense(request));

    if (response.common.resCode != '00') {
      TLog.d(_TAG, '+++ issueLicense >>> FAIL');
      throw GRpcException(code: 'EC0000', message: response.common.resMessage);
    }

    Log.d(_TAG, '+++ issueLicense >>> SUCCESS');
    return {'licenseInfo': _convertLicenseInfo(response.content.licenseInfo)};
  }

  Future<Map> requestPermission({
    required Map licenseMap,
    String? deviceId,
    String? storeId,
    String? terminalId,
    String? regDate,
    required int expireDate,
    String? updateDate,
    String? appVersion,
    String? appVersionCode,
    String? sign,
    String? state,
    String? note,
  }) async {
    Log.d(_TAG, '+++ requestPermission >>>');
    pbm.RequestPermissionRequest request = pbm.RequestPermissionRequest()
      ..common = createCommon(_PKG_LICENSE_V1, 'requestPermission')
      ..content = (pbm.RequestPermissionRequest_Content()
        ..licenseInfo =
            _convertMapToLicenseInfo(licenseMap['licenseInfo'] ?? Map())
        ..permission = pbm.LicensePermission(
          deviceId: deviceId,
          storeId: storeId,
          terminalId: terminalId,
          regDate: regDate,
          expireDate: Int64(expireDate),
          updateDate: updateDate,
          appVersion: appVersion,
          appVersionCode: appVersionCode,
          sign: sign,
          state: state,
          note: note,
        ));
    pbm.RequestPermissionResponse response =
        await tryRequest(() => _licenseClient.requestPermission(request));

    if (response.common.resCode != '00') {
      TLog.d(_TAG, '+++ requestPermission >>> FAIL');
      throw GRpcException(code: 'EC0000', message: response.common.resMessage);
    }

    Log.d(_TAG, '+++ requestPermission >>> SUCCESS');

    return {
      'licenseInfo': _convertLicenseInfo(response.content.licenseInfo),
      'permission': _convertLicensePermission(response.content.permission),
    };
  }

  Future<Map> verifyLicense(
      {required Map licenseMap,
      required String updateDate,
      required String appVersion,
      required String appVersionCode}) async {
    Log.d(_TAG, '+++ verifyLicense >>>');
    pbm.VerifyLicenseRequest request = pbm.VerifyLicenseRequest()
      ..common = createCommon(_PKG_LICENSE_V1, 'verifyLicense')
      ..content = (pbm.VerifyLicenseRequest_Content()
        ..licenseInfo =
            _convertMapToLicenseInfo(licenseMap['licenseInfo'] ?? Map())
        ..permission =
            (_convertMapToLicensePermission(licenseMap['permission'] ?? Map())
              ..updateDate = updateDate
              ..appVersion = appVersion
              ..appVersionCode = appVersionCode)
        ..appVerInfo = pbm.AppVersionInfo());
    pbm.VerifyLicenseResponse response =
        await tryRequest(() => _licenseClient.verifyLicense(request));

    if (response.common.resCode != '00') {
      TLog.d(_TAG, '+++ verifyLicense >>> FAIL');
      throw GRpcException(code: 'EC0000', message: response.common.resMessage);
    }

    Log.d(_TAG, '+++ verifyLicense >>> SUCCESS');

    return {
      'licenseInfo': _convertLicenseInfo(response.content.licenseInfo),
      'permission': _convertLicensePermission(response.content.permission),
      'appVerInfo': _convertAppVersionInfo(response.content.appVerInfo),
    };
  }

  Map _convertLicenseInfo(pbm.LicenseInfo licenseInfo) {
    return {
      'ver': licenseInfo.ver,
      'key': licenseInfo.key,
      'pkg': licenseInfo.pkg,
      'sign': licenseInfo.sign,
    };
  }

  pbm.LicenseInfo _convertMapToLicenseInfo(Map map) {
    return pbm.LicenseInfo(
      ver: map['ver'] ?? '',
      key: map['key'] ?? '',
      pkg: map['pkg'] ?? '',
      sign: map['sign'] ?? '',
    );
  }

  Map _convertLicensePermission(pbm.LicensePermission licensePermission) {
    return {
      'deviceId': licensePermission.deviceId,
      'storeId': licensePermission.storeId,
      'terminalId': licensePermission.terminalId,
      'regDate': licensePermission.regDate,
      'expireDate': licensePermission.expireDate.toInt(),
      'updateDate': licensePermission.updateDate,
      'appVersion': licensePermission.appVersion,
      'appVersionCode': licensePermission.appVersionCode,
      'sign': licensePermission.sign,
      'state': licensePermission.state,
      'note': licensePermission.note,
    };
  }

  pbm.LicensePermission _convertMapToLicensePermission(Map map) {
    return pbm.LicensePermission(
      deviceId: map['deviceId'] ?? '',
      storeId: map['storeId'] ?? '',
      terminalId: map['terminalId'] ?? '',
      regDate: map['regDate'] ?? '',
      expireDate: Int64(map['expireDate'] ?? 0),
      updateDate: map['updateDate'] ?? '',
      appVersion: map['appVersion'] ?? '',
      appVersionCode: map['appVersionCode'] ?? '',
      sign: map['sign'] ?? '',
      state: map['state'] ?? '1000',
      note: map['note'] ?? '',
    );
  }

  Map _convertAppVersionInfo(pbm.AppVersionInfo appVersionInfo) {
    return {
      'minVer': appVersionInfo.minVer,
      'lastVer': appVersionInfo.lastVer,
      'isLock': appVersionInfo.isLock,
    };
  }

  ///
  /// 테이블 잠금
  ///
  Future<Map> holdTableLock(String tableId) async {
    pbm.TableLock request = pbm.TableLock()
      ..common = createCommon(_PKG_ORDER_V1, 'order.holdTableLock')
      ..content = await _orderService.createTableLock(tableId);
    try {
      pbm.TableLock response =
          await tryRequest(() => _orderClient.holdTableLock(request));
      return {
        'resCode': response.common.resCode,
        'message': response.common.resMessage
      };
    } on GRpcException catch (e) {
      return {'resCode': '00', 'message': e.message};
    }
  }

  ///
  /// 테이블 잠금 해제
  ///
  Future<Map> releaseTableLock(String tableId) async {
    pbm.TableLock request = pbm.TableLock()
      ..common = createCommon(_PKG_ORDER_V1, 'order.releaseTableLock')
      ..content = await _orderService.createTableLock(tableId);

    try {
      pbm.TableLock response =
          await tryRequest(() => _orderClient.holdTableLock(request));
      return {
        'resCode': response.common.resCode,
        'message': response.common.resMessage
      };
    } on GRpcException catch (e) {
      return {'resCode': '00', 'message': e.message};
    }
  }

  ///
  /// 주문 업로드
  ///
  Future<Map> putOrder() async {
    var content = await _orderService.updatingOrderData();

    if (content == null) {
      return {'resCode': '00', 'message': 'No orders to put'};
    }

    Log.d(_TAG, '+++ Put order >>>');
    pbm.OrderData request = pbm.OrderData()
      ..common = createCommon(_PKG_ORDER_V1, 'order.putOrder')
      ..content = content;
    pbm.OrderData response =
        await tryRequest(() => _orderClient.putOrder(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
    };

    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ Put order >>> FAIL');
      return result;
    }

    await _orderService.uploadOrderDataDone(response.content);
    Log.d(_TAG, '+++ Put order >>> SUCCESS');
    return result;
  }

  ///
  /// 주문 삭제
  ///
  Future<Map> deleteOrder() async {
    var content = await _orderService.deletingOrderData();

    if (content == null) {
      return {'resCode': '00', 'message': 'No orders to delete'};
    }

    Log.d(_TAG, '+++ Delete order >>>');
    pbm.OrderData request = pbm.OrderData()
      ..common = createCommon(_PKG_ORDER_V1, 'order.deleteOrder')
      ..content = content;
    pbm.OrderData response =
        await tryRequest(() => _orderClient.deleteOrder(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
    };

    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ Delete order >>> FAIL');
      return result;
    }

    await _orderService.deleteOrderDataDone(response.content);
    Log.d(_TAG, '+++ Delete order >>> SUCCESS');
    return result;
  }

  ///
  /// 기존 동기화된 주문 삭제 후 전체 주문 다운로드
  ///
  Future<Map> getOrders() async {
    Log.d(_TAG, '+++ Get orders >>>');

    pbm.OrderData request = pbm.OrderData()
      ..common = createCommon(_PKG_ORDER_V1, 'order.getOrders')
      ..content = await _orderService.downloadingOrderData();
    pbm.OrderData response =
        await tryRequest(() => _orderClient.getOrders(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
    };

    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ Get orders >>> FAIL');
      return result;
    }

    Log.d(_TAG, '+++ Get orders >>> SUCCESS');
    await _orderService.downloadAllOrderDataDone(response.content);
    return result;
  }

  ///
  /// 외부 주문 동기화
  ///
  Future<void> listenOrder() async {
    var ping;

    tryRequest(() async {
      var request = StreamController<pbm.OrderData>();
      var data = pbm.OrderData()
        ..common = createCommon(_PKG_ORDER_V1, 'order.listenOrder')
        ..content = await _orderService.downloadingOrderData();
      request.add(data);
      Log.d(_TAG, '+++ Listen order >>> START');

      if (ping == null) {
        ping = Stream.periodic(Duration(seconds: _LISTEN_ORDER_PING_TIME))
            .takeWhile((_) => !request.isClosed)
            .listen((event) {
          Log.d(_TAG, '+++ Listen order >>> PING');
          request.add(data);
        });
      }

      await for (pbm.OrderData response
          in _orderClient.listenOrder(request.stream)) {
        var resCode = response.common.resCode;
        var message = response.common.resMessage;
        Log.d(_TAG, '+++ Listen order >>> $resCode $message');

        if (resCode != '00' || response.content.orders.isEmpty) {
          continue;
        }

        if (response.content.isDelete) {
          await _orderService.deleteOrderDataDone(response.content,
              bySync: true);
        } else {
          await _orderService.downloadOrderDataDone(response.content);
        }
      }

      request.close();
    }, reconnect: true);

    ping?.cancel();
  }



  //inventory
  Future<Map> balanceItems(
      String itemGroupId,
      String name,
      String barcode,
      int pageIndex,
      int pageSize
      ) async {
    Log.d(_TAG, '+++ balanceItems >>>');
    pbm.BalanceItemRequest request = pbm.BalanceItemRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'appbalanceItems')
      ..content = await _inventoryService.balanceItemsRequestData(
          itemGroupId,
          name,
          barcode,
          pageIndex,
          pageSize
      );
    pbm.BalanceItemResponse response =
    await tryRequest(() => _inventoryClient.balanceItems(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'count': response.content.count,
      'items': _inventoryService.balanceItemsResponseItemsData(response.content),
    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ balanceItems >>> FAIL');
    }else {
      Log.d(_TAG, '+++ balanceItems >>> SUCCESS');
    }

    return result;
  }
  Future<Map> listAcceptanceItems(
      String startDate,
      String endDate,
      String type,
      int pageIndex,
      int pageSize
      ) async {
    Log.d(_TAG, '+++ listAcceptanceItems >>>');
    pbm.ListAcceptanceItemsRequest request = pbm.ListAcceptanceItemsRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'applistAcceptanceItems')
      ..content = await _inventoryService.listAcceptanceItemsRequestData(
          startDate,
          endDate,
          type,
          pageIndex,
          pageSize
      );
    pbm.ListAcceptanceItemsResponse response =
    await tryRequest(() => _inventoryClient.listAcceptanceItems(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'count': response.content.count,
      'items': _inventoryService.listAcceptanceItemsResponseItemsData(response.content),
    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ listAcceptanceItems >>> FAIL');
    }else {
      Log.d(_TAG, '+++ listAcceptanceItems >>> SUCCESS');
    }

    return result;
  }
  Future<Map> addAcceptanceItem(
      String type,
      String name,
  String supplierId,
      List<Map> items
      ) async {
    Log.d(_TAG, '+++ addAcceptanceItem >>>');
    pbm.AddAcceptanceItemRequest request = pbm.AddAcceptanceItemRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'appaddAcceptanceItem')
      ..content = await _inventoryService.addAcceptanceItemRequestData(
          type,
          name,
      supplierId,
          items
      );
    pbm.AddAcceptanceItemResponse response =
    await tryRequest(() => _inventoryClient.addAcceptanceItem(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'acceptanceItemsId': response.content.acceptanceItemsId,
    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ addAcceptanceItem >>> FAIL');
    }else {
      Log.d(_TAG, '+++ addAcceptanceItem >>> SUCCESS');
    }

    return result;
  }
  Future<Map> updateAcceptanceItem(
  String acceptanceItemsId,
      String type,
      String name,
          String supplierId,
      List<Map> items
      ) async {
    Log.d(_TAG, '+++ updateAcceptanceItem >>>');
    pbm.UpdateAcceptanceItemRequest request = pbm.UpdateAcceptanceItemRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'appupdateAcceptanceItem')
      ..content = await _inventoryService.updateAcceptanceItemRequestData(
          acceptanceItemsId,
          type,
          name,
supplierId,
          items
      );
    pbm.UpdateAcceptanceItemResponse response =
    await tryRequest(() => _inventoryClient.updateAcceptanceItem(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'acceptanceItemsId': response.content.acceptanceItemsId,
    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ updateAcceptanceItem >>> FAIL');
    }else {
      Log.d(_TAG, '+++ updateAcceptanceItem >>> SUCCESS');
    }

    return result;
  }
  Future<Map> deleteAcceptanceItem(
      String acceptanceItemsId
      ) async {
    Log.d(_TAG, '+++ deleteAcceptanceItem >>>');
    pbm.DeleteAcceptanceItemRequest request = pbm.DeleteAcceptanceItemRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'appdeleteAcceptanceItem')
      ..content = await _inventoryService.deleteAcceptanceItemRequestData(
          acceptanceItemsId
      );
    pbm.DeleteAcceptanceItemResponse response =
    await tryRequest(() => _inventoryClient.deleteAcceptanceItem(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'acceptanceItemsId': response.content.acceptanceItemsId,
    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ deleteAcceptanceItem >>> FAIL');
    }else {
      Log.d(_TAG, '+++ deleteAcceptanceItem >>> SUCCESS');
    }

    return result;
  }
  Future<Map> detailAcceptanceItem(
      String acceptanceItemsId
      ) async {
    Log.d(_TAG, '+++ detailAcceptanceItem >>>');
    pbm.DetailAcceptanceItemRequest request = pbm.DetailAcceptanceItemRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'appdetailAcceptanceItem')
      ..content = await _inventoryService.detailAcceptanceItemRequestData(
          acceptanceItemsId
      );
    pbm.DetailAcceptanceItemResponse response =
    await tryRequest(() => _inventoryClient.detailAcceptanceItem(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'acceptanceItemsId': response.content.acceptanceItemsId,
      'date': response.content.date,
      'name': response.content.name,
      'items': _inventoryService.detailAcceptanceItemResponseItemsData(response.content),
    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ detailAcceptanceItem >>> FAIL');
    }else {
      Log.d(_TAG, '+++ detailAcceptanceItem >>> SUCCESS');
    }

    return result;
  }
  Future<Map> listSupplier(
      ) async {
    Log.d(_TAG, '+++ listSupplier >>>');
    pbm.ListSupplierRequest request = pbm.ListSupplierRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'applistSupplier')
      ..content = await _inventoryService.listSupplierRequestData(
      );
    pbm.ListSupplierResponse response =
    await tryRequest(() => _inventoryClient.listSupplier(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'count': response.content.count,
      'items': _inventoryService.listSupplierResponseItemsData(response.content),
    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ listSupplier >>> FAIL');
    }else {
      Log.d(_TAG, '+++ listSupplier >>> SUCCESS');
    }

    return result;
  }
  Future<Map> addSupplier(
      String name,
      ) async {
    Log.d(_TAG, '+++ addSupplier >>>');
    pbm.AddSupplierRequest request = pbm.AddSupplierRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'appaddSupplier')
      ..content = await _inventoryService.addSupplierRequestData(
          name,
      );
    pbm.AddSupplierResponse response =
    await tryRequest(() => _inventoryClient.addSupplier(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'supplierId': response.content.supplierId,
    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ addSupplier >>> FAIL');
    }else {
      Log.d(_TAG, '+++ addSupplier >>> SUCCESS');
    }

    return result;
  }
  Future<Map> updateSupplier(
      String supplierId,
      String name,
      ) async {
    Log.d(_TAG, '+++ updateSupplier >>>');
    pbm.UpdateSupplierRequest request = pbm.UpdateSupplierRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'appupdateSupplier')
      ..content = await _inventoryService.updateSupplierRequestData(
          supplierId,
          name,
      );
    pbm.UpdateSupplierResponse response =
    await tryRequest(() => _inventoryClient.updateSupplier(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'supplierId': response.content.supplierId,
    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ updateSupplier >>> FAIL');
    }else {
      Log.d(_TAG, '+++ updateSupplier >>> SUCCESS');
    }

    return result;
  }
  Future<Map> deleteSupplier(
  String supplierId,
      ) async {
    Log.d(_TAG, '+++ deleteSupplier >>>');
    pbm.DeleteSupplierRequest request = pbm.DeleteSupplierRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'appdeleteSupplier')
      ..content = await _inventoryService.deleteSupplierRequestData(
          supplierId,
      );
    pbm.DeleteSupplierResponse response =
    await tryRequest(() => _inventoryClient.deleteSupplier(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'supplierId': response.content.supplierId,

    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ deleteSupplier >>> FAIL');
    }else {
      Log.d(_TAG, '+++ deleteSupplier >>> SUCCESS');
    }

    return result;
  }
  Future<Map> listRevisionItems(
  String startDate,
  String endDate,
  int pageIndex,
  int pageSize,
      ) async {
    Log.d(_TAG, '+++ listRevisionItems >>>');
    pbm.ListRevisionItemsRequest request = pbm.ListRevisionItemsRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'applistRevisionItems')
      ..content = await _inventoryService.listRevisionItemsRequestData(
          startDate,
          endDate,
          pageIndex,
          pageSize
      );
    pbm.ListRevisionItemsResponse response =
    await tryRequest(() => _inventoryClient.listRevisionItems(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'count': response.content.count,
      'items': _inventoryService.listRevisionItemsResponseItemsData(response.content),
    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ listRevisionItems >>> FAIL');
    }else {
      Log.d(_TAG, '+++ listRevisionItems >>> SUCCESS');
    }

    return result;
  }
  Future<Map> addRevisionItems(
      String date,
      String name,
      List<Map> items
      ) async {
    Log.d(_TAG, '+++ addRevisionItems >>>');
    pbm.AddRevisionItemsRequest request = pbm.AddRevisionItemsRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'appaddRevisionItems')
      ..content = await _inventoryService.addRevisionItemsRequestData(
          date,
          name,
          items
      );
    pbm.AddRevisionItemsResponse response =
    await tryRequest(() => _inventoryClient.addRevisionItems(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'revisionItemsId': response.content.revisionItemsId,
    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ addRevisionItems >>> FAIL');
    }else {
      Log.d(_TAG, '+++ addRevisionItems >>> SUCCESS');
    }

    return result;
  }
  Future<Map> detailRevisionItems(
      String revisionItemsId
      ) async {
    Log.d(_TAG, '+++ detailRevisionItems >>>');
    pbm.DetailRevisionItemsRequest request = pbm.DetailRevisionItemsRequest()
      ..common = createCommon(_PKG_INVENTORY_V1, 'appdetailRevisionItems')
      ..content = await _inventoryService.detailRevisionItemsRequestData(
          revisionItemsId
      );
    pbm.DetailRevisionItemsResponse response =
    await tryRequest(() => _inventoryClient.detailRevisionItems(request));
    var result = {
      'resCode': response.common.resCode,
      'message': response.common.resMessage,
      'date': response.content.date,
      'name': response.content.name,
      'items': _inventoryService.detailRevisionItemsResponseItemsData(response.content),
    };
    if (result['resCode'] != '00') {
      TLog.d(_TAG, '+++ detailRevisionItems >>> FAIL');
    }else {
      Log.d(_TAG, '+++ detailRevisionItems >>> SUCCESS');
    }

    return result;
  }

}

///
/// 인증이 필요할 경우 호출
///
/// * true 응답이면 요청을 재시도
/// * false 응답이면 요청을 재시도 하지 않음
///
typedef OnAuthenticate = Future<bool> Function();

abstract class GRpcBaseClient {
  Auth _auth = Auth();
  late ClientChannel _channel;
  String? _service;
  String? _version;
  String? _address;
  String? _token;
  late HelloClient _helloClient;
  late BusinessServiceClient _businessClient;
  late ItemsServiceClient _itemsClient;
  late LogServiceClient _logClient;
  late LicenseServiceClient _licenseClient;
  late OrderServiceClient _orderClient;
  late InventoryServiceClient _inventoryClient;

  /// 로그인 성공한 경우 인증 [token]
  String? get token => _token;

  /// gRPC 서버 주소 설정
  set url(String? url) {
    if (url != null) {
      print('gRPC URL: $url');
      Uri uri = Uri.parse(url);

      if (uri.scheme == 'http') {
        _channel = ClientChannel(
          uri.host,
          port: uri.port,
          options:
              const ChannelOptions(credentials: ChannelCredentials.insecure()),
        );
      } else {
        _channel = ClientChannel(uri.host, port: uri.port);
      }

      _helloClient = HelloClient(_channel);
      _businessClient = BusinessServiceClient(_channel);
      _itemsClient = ItemsServiceClient(_channel);
      _logClient = LogServiceClient(_channel);
      _licenseClient = LicenseServiceClient(_channel);
      _orderClient = OrderServiceClient(_channel);
      _inventoryClient = InventoryServiceClient(_channel);
    }
  }

  /// 인증 서버 주소 설정
  set authUrl(String? authUrl) {
    print('Auth URL: $authUrl');
    _auth.url = authUrl;
  }

  /// [service] 예로 POS
  /// * http://pms.ibexlab.com/confluence/pages/viewpage.action?pageId=24281269
  set service(String service) {
    _service = service;
    _auth.service = service;
  }

  /// [version] 예로 1.0.0
  /// * http://pms.ibexlab.com/confluence/pages/viewpage.action?pageId=24281269
  set version(String version) {
    _version = version;
    _auth.version = version;
  }

  set address(String? address) {
    _address = address;
    _auth.address = address;
  }

  /// 인증이 필요할 시 호출됨
  OnAuthenticate? onAuthenticate;

  ///
  /// JWT 토큰 설정
  ///
  void setToken(String? token) {
    _token = null;

    if (token == null) {
      return;
    }

    _token = token;
    var options = CallOptions(metadata: {'Authorization': 'Bearer $_token'});
    _authenticated(options);
  }

  ///
  /// 로그인
  ///
  Future<bool> login({String? id, String? domain, String? password}) async {
    if (id == null || domain == null || password == null) {
      print('No authentication data');
      return false;
    }

    _token =
        await _auth.authenticate(id: id, domain: domain, password: password);

    if (_token == null) {
      _authenticated(null);
      return false;
    }

    setToken(_token);
    return true;
  }

  ///
  /// 로그아웃
  ///
  void logout() {
    _token = null;
    _authenticated(null);
  }

  void _authenticated(CallOptions? options) {
    _helloClient = HelloClient(_channel, options: options);
    _businessClient = BusinessServiceClient(_channel, options: options);
    _itemsClient = ItemsServiceClient(_channel, options: options);
    _logClient = LogServiceClient(_channel, options: options);
    _licenseClient = LicenseServiceClient(_channel, options: options);
    _orderClient = OrderServiceClient(_channel, options: options);
    _inventoryClient = InventoryServiceClient(_channel, options: options);
  }

  Future<T> tryRequest<T>(Function request, {bool reconnect = false}) async {
    bool retriedDueToInternalError = false;

    while (true) {
      DateTime requestTime = DateTime.now();

      try {
        T result = await request();

        if (!reconnect) {
          return result;
        }
      } on GrpcError catch (e, stacktrace) {
        if (Simple.isFlutterTest) {
          print('GRPC ERROR: [${e.code}]${e.message}');
        } else {
          print('GRPC ERROR: [${e.code}]${e.message}\n$stacktrace');
        }

        // 가끔씩 internal error 로 최초 연결이 실패하는 경우가 있음
        // 이게 grpc 버그 때문인지 알 수 없으나 한번은 재시도를 하도록 함
        if (e.code == StatusCode.internal && !retriedDueToInternalError) {
          print('Retry to grpc request when an internal error occurred');
          retriedDueToInternalError = true;
          continue;
        }

        if (onAuthenticate != null &&
            (e.code == StatusCode.unauthenticated ||
                e.code == StatusCode.permissionDenied)) {
          print('Try to authenticate...');

          if (await onAuthenticate!()) {
            try {
              return await request();
            } on GrpcError catch (e) {
              print('GRPC ERROR: [${e.code}]${e.message}');

              if (!reconnect) {
                throw GRpcException(
                    code: e.code.toString(), message: e.message ?? '');
              }
            }
          }
        }

        if (!reconnect) {
          throw GRpcException(
              code: e.code.toString(), message: e.message ?? '');
        }
      }

      if (DateTime.now().difference(requestTime).inSeconds < 30) {
        print('Wait 30 sec to avoid reconnecting too quickly');
        await Future.delayed(const Duration(seconds: 30));
      }

      print('Reconnecting...');
    }
  }

  pbm.Common createCommon(String package, String api, {String? tranNo}) {
    String time = DateTime.now().millisecondsSinceEpoch.toString();
    String targetName;
    String targetSvc;

    switch (package) {
      case _PKG_BUSINESS_V1:
        targetName = 'Business API';
        targetSvc = 'business.yoshop.net';
        break;
      case _PKG_ITEMS_V1:
        targetName = 'Items1 API';
        targetSvc = 'items1.yoshop.net';
        break;
      case _PKG_LOG_V1:
        targetName = 'Log API';
        targetSvc = 'log.yoshop.net';
        break;
      case _PKG_LICENSE_V1:
        targetName = 'License API';
        targetSvc = 'license.yoshop.net';
        break;
      case _PKG_ORDER_V1:
        targetName = 'Order API';
        targetSvc = 'order-sync.yoshop.net';
        break;
      case _PKG_INVENTORY_V1:
        targetName = 'Inventory API';
        targetSvc = 'inventory.yoshop.net';
        break;
      default:
        targetName = 'gRPC API';
        targetSvc = 'grpc.yoshop.net';
        break;
    }

    return pbm.Common.create()
      ..targetName = targetName
      ..targetSvc = targetSvc
      ..targetPackage = package
      ..targetApi = api
      ..sourceSvc = _service ?? ''
      ..sourceVer = _version ?? ''
      ..sourceAddr = _address ?? ''
      ..reqTimestamp = time
      ..tranNo = tranNo ?? transactionNo(time);
  }

  String transactionNo([String? time]) {
    String time2 = time ?? DateTime.now().millisecondsSinceEpoch.toString();
    return time2.substring(time2.length - 5);
  }
}
