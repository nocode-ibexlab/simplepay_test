import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:simple_pay_api/src/Util/background_service.dart';
import 'package:update_app/bean/download_process.dart';
import 'package:update_app/update_app.dart';

import 'Database/BusinessLogic/bl.dart';
import 'Database/Util/BuildConfig.dart';
import 'Database/Util/CommonUtil.dart';
import 'Database/Util/CultureManager.dart';
import 'Database/Util/License.dart';
import 'Database/Util/MyPrefs.dart';
import 'Database/db.dart';
import 'device.dart';
import 'exception.dart';
import 'grpc/exception.dart';
import 'grpc/grpc.dart';
import 'simple.dart';
import 'utils.dart';

class Sync with Utils {
  static const _tag = 'Sync';
  static const _appleId = '375380948';
  static const _replaceStoreTerminal = 'REPLACE:';
  static const String _licUsing = '0000'; // 사용중
  static const String _licWaitingForApproval = '1000'; // 승인대기
  static const String _licPause = '8000'; // 일시중지
  static const String _licDisposal = '9000'; // 폐기
  static const String _licExpired = '9100'; // 만료
  static const String _licInvalid = '9200'; // 잘못된 인증서

  static final Sync _singleton = Sync._internal();

  factory Sync() => _singleton;

  Sync._internal();

  Future invoke(String method, dynamic data) async {
    switch (method) {
      case 'listServers':
        return listServers();
      case 'clearAuth':
        return clearAuth();
      case 'setAuth':
        return setAuth(
          data['serverIndex'],
          data['loginId'],
          data['domain'],
          data['password'],
        );
      case 'getRegistrationInfo':
        return getRegistrationInfo();
      case 'registerApp':
        return registerApp(data['storeTerminalId']);
      case 'login':
        return login();
      case 'initGrpc':
        return initGrpc();
      case 'verifyLicense':
        return verifyLicense();
      case 'updateApp':
        return updateApp(data['packageName'], data['versionName']);
      case 'getStatus':
        return getStatus();
      case 'uploadData':
        return uploadData();
    }

    throw ApiException(501, 'Not implemented');
  }

  Future<Map> listServers() async {
    final opBL = OperationBL();
    List<String?> labels = opBL.getStringArray('label');
    List<String?> urls = opBL.getStringArray('grpc');
    int index = urls.indexOf(await opBL.getGRpcApiServerUrl());

    return bizResponse(200, 'success', {
      'labels': labels,
      'urls': urls,
      'index': index != -1 ? index : 0,
    });
  }

  Future<Map> clearAuth() async {
    final opBL = OperationBL();
    await opBL.setServerIndex(0);
    await opBL.setLoginId('');
    await opBL.setLoginPasswordNoSecurity('');
    await opBL.setLoginDomain('');
    return bizResponse(200, 'success');
  }

  Future<Map> setAuth([
    int? serverIndex,
    String? loginId,
    String? domain,
    String? password,
  ]) async {
    final opBL = OperationBL();

    if (serverIndex != null) {
      await opBL.setServerIndex(serverIndex);
    }

    if (loginId != null) {
      await opBL.setLoginId(loginId);
    }

    if (password != null) {
      await opBL.setLoginPassword(password);
    }

    if (domain != null) {
      await opBL.setLoginDomain(domain);
    }

    return bizResponse(200, 'success');
  }

  Future<Map> getRegistrationInfo() async {
    final opBL = OperationBL();
    await _initGrpc();
    String? loginId = await opBL.getLoginId();
    var data = await gRpcClient.getRegistrationForm(loginId!);
    return bizResponse(200, 'success', data);
  }

  Map registerApp(String storeTerminalId) {
    OperationBL().setStoreTerminalId(storeTerminalId);
    return bizResponse(200, 'success');
  }

  Future<Map> login() async {
    final opBL = OperationBL();
    final basBL = BasBL();

    await _initGrpc();

    String? loginId = await opBL.getLoginId();
    String? domain = await opBL.getLoginDomain();
    String? password = await opBL.getLoginPassword();

    if (loginId!.isEmpty || password!.isEmpty || domain!.isEmpty) {
      throw ApiException(Simple.errNoAuth, 'No login data');
    }

    try {
      if (BuildConfig.CHECK_INTEGRITY) {
        String nonce = await gRpcClient.getNonce();
        await gRpcClient.verifySelf(nonce);
      }

      String? storeTerminalId = await opBL.getStoreTerminalId();
      String deviceId = await opBL.getDeviceKey();
      bool? isDbRestored = await opBL.isDbRestored();

      if (isDbRestored ?? false) {
        var terminals = await basBL.getStoreTerminals();

        if (terminals.isNotEmpty) {
          storeTerminalId = terminals[0].getStoreTerminalId();
        }

        deviceId = _replaceStoreTerminal + deviceId;
        opBL.setDbRestored(false);
      }

      await gRpcClient.registerApp(
        loginId: loginId,
        storeTerminalId: storeTerminalId!,
        appKey: BuildConfig.APP_DISTINCT_KEYWORD,
        appPkgKey: BuildConfig.APP_PKG_DISTINCT_KEYWORD,
        version: await CommonUtil.getVersionName(),
        deviceId: deviceId,
      );

      var success = await gRpcClient.downloadTables();

      if (!success) {
        throw ApiException(500, 'Fail to load data');
      }

      await _initLog();
      await initCulture();
      await _loadDeviceModels();
      return bizResponse(200, 'success');
    } on GRpcException catch (e, stack) {
      print('login: $e\n$stack');

      switch (e.code) {
        case 'EC0000':
          throw ApiException(500, 'Fail to load data');
        case 'EC0001':
          throw ApiException(Simple.errInvalidAuth, 'Fail to login');
        case 'EC4001':
          throw ApiException(
              Simple.errRegistrationRequired, 'Fail to register');
        case 'EC5005':
          throw ApiException(Simple.errNoLicense, 'No license');
        case 'EC1111':
          throw ApiException(500, 'Fail to verify app integrity');
        case 'EC9999':
          await _initLog();
          await initCulture();
          await _loadDeviceModels();
          return bizResponse(200, 'success'); //OFF Line Mode
        default:
          TLog.e(_tag, e);
          throw ApiException(500, 'Internal error');
      }
    }
  }

  Future initGrpc() async {
    await _initGrpc();
    return bizResponse(200, 'success');
  }

  Future<void> _initGrpc() async {
    final opBL = OperationBL();
    String? url = await opBL.getGRpcApiServerUrl();
    String? authUrl = await opBL.getAuthServerUrl();
    String? service = BuildConfig.APP_DISTINCT_KEYWORD;
    String? version = await CommonUtil.getVersionName();
    String? address = await opBL.getStoreTerminalId();
    String? loginId = await opBL.getLoginId();
    String? domain = await opBL.getLoginDomain();
    String? password = await opBL.getLoginPassword();

    gRpcClient
      ..url = url
      ..authUrl = authUrl
      ..service = service
      ..version = version
      ..address = address;

    if (domain == null || domain.isEmpty) {
      domain =
          (await gRpcClient.getLoginDomains()).firstWhere((i) => i != null)!;
      await opBL.setLoginDomain(domain);
      print('Set login domain: $domain');
    }

    gRpcClient.onAuthenticate = () async {
      return await gRpcClient.login(
        id: loginId,
        domain: domain,
        password: password,
      );
    };
  }

  Future<void> _initLog() async {
    BasBL basBL = BasBL();
    TraceBL traceBL = TraceBL();
    OperationBL opBL = OperationBL();
    TLog.enable(await basBL.getStoreTerminalData1('TLOG') != null);
    TLog.pingEnable(await basBL.getStoreTerminalData1('PING') != null);
    Store? store = await basBL.getStore();

    if (store != null) {
      String? sid = store.getStoreId();
      String? tid = await opBL.getStoreTerminalId();
      traceBL.setPosInfo(sid, tid);
    }
  }

  Future<void> initCulture() async {
    CultureManager manager = CultureManager();
    await manager.initCulture();
    BaseBL.lang = await manager.getLangMapList();
    BaseBL.receiptLang = await manager.getReceiptLangMapList();
  }

  Future<void> _loadDeviceModels() async {
    OperationBL opBL = OperationBL();
    opBL.loadSignPadModel(await opBL.getSignPadModel());
    await opBL.loadReceiptPrinterModel(await opBL.getReceiptPrinterModel());
    await opBL.loadKitchenPrinterModel(await opBL.getKitchenPrinterModel());
    await Device().initPrinter();
  }

  Future verifyLicense() async {
    await _checkLicenseFile();
    Map result = await _verifyLicense();
    return bizResponse(200, 'success', result);
  }

  Future<void> _checkLicenseFile() async {
    Map result = await License.checkLicenseFile();

    if (result['invalidLicense']) {
      await License.issueLicense();
    }

    await License.requestPermission();
  }

  Future<Map> _verifyLicense([bool retry = false]) async {
    Map result = await License.verifyLicense();
    String state = result['state'] ?? _licUsing;

    switch (state) {
      case _licUsing:
        print('verifyLicense: License OK');
        break;
      case _licPause:
        print('verifyLicense: License paused');

        // retry true: 기존 flutter pay에서의 재시작한 경우
        if (!retry) {
          await _checkLicenseFile();
          result = await _verifyLicense(true);
        }
        break;
      case _licDisposal:
        print('verifyLicense: License disposed');

        if (!retry) {
          await License.issueLicense();
          await License.requestPermission();
          result = await _verifyLicense(true);
        }
        break;
      case _licExpired:
        print('verifyLicense: License expired');

        if (!retry) {
          await _checkLicenseFile();
          result = await _verifyLicense(true);
        }
        break;
      case _licInvalid:
        print('verifyLicense: License invalid');

        if (!retry) {
          await _checkLicenseFile();
          result = await _verifyLicense(true);
        }
        break;
      case _licWaitingForApproval:
      default:
        print('verifyLicense: Waiting for approval');

        if (!retry) {
          await _checkLicenseFile();
          result = await _verifyLicense(true);
        }
        break;
    }

    String latest = result['appVersion'] ?? '';
    String current = result['currAppVersion'] ?? '';
    String package = result['appPackage'] ?? '';
    result['updatable'] = _version(latest) > _version(current);
    print('latest: $latest current: $current package: $package');
    return result;
  }

  int _version(String version) {
    if (version.isEmpty) {
      return 1;
    }

    List v = version.split('.');

    for (int i = v.length; i < 3; i++) {
      v.add('0');
    }

    return (int.tryParse(v[0]) ?? 0) * 10000 +
        (int.tryParse(v[1]) ?? 0) * 100 +
        (int.tryParse(v[2]) ?? 0);
  }

  Future updateApp(String packageName, String versionName) async {
    String updateUrl = BuildConfig.SERVER_REGION == 'KZ' ||
            BuildConfig.SERVER_REGION == 'DEV_KZ'
        ? 'http://download.yollet.net/update_kz'
        : 'http://download.yollet.net/update';
    String fileUrl = '$updateUrl/$packageName/$versionName.apk';
    debugPrint('fileUrl=$fileUrl');
    int id = await UpdateApp.updateApp(
        url: fileUrl,
        appleId: _appleId,
        title: 'Download',
        description: 'Download');

    if (id == 0) {
      return bizResponse(200, 'File already exists');
    } else if (id == -1) {
      throw ApiException(500, 'Download failed');
    }

    Completer<Map> completer = Completer<Map>();

    Timer.periodic(const Duration(milliseconds: 100), (timer) async {
      DownloadProcess ps = await UpdateApp.downloadProcess(downloadId: id);

      if (ps.status == ProcessState.STATUS_SUCCESSFUL) {
        timer.cancel();
        completer.complete(bizResponse(200, 'Download complete'));
      } else if (ps.status == ProcessState.STATUS_FAILED) {
        timer.cancel();
        completer.complete(bizResponse(500, 'Download failed'));
      } else {
        Simple.sendEvent(
          Simple.evtDownload,
          (ps.current / ps.count * 100).toInt(),
        );
      }
    });

    return completer.future;
  }

  Future getStatus() async {
    final prefs = MyPrefs();
    bool offline = true;

    try {
      ConnectivityResult result = await Connectivity().checkConnectivity();
      offline = result == ConnectivityResult.none;
    } catch (e) {
      debugPrint('getStatus: $e');
    }

    return bizResponse(200, 'success', {
      'networkStatus': !offline,
      'syncStatus': await prefs.isSync().get(),
      'syncLastTime': await prefs.lastSyncTime().get(),
    });
  }

  Future<Map> uploadData() async {
    final service = BackgroundService();
    final prefs = MyPrefs();
    await service.uploadData();

    return bizResponse(200, 'success', {
      'syncStatus': await prefs.isSync().get(),
      'syncLastTime': await prefs.lastSyncTime().get(),
    });
  }
}
