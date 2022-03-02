class IntentCommon {
  String? targetPackage;
  String? targetName;
  String? targetSvc;
  String? targetApi;
  String? authorization;
  String? sourceSvc;
  String? sourceVer;
  String? sourceAddr;
  String? reqTimestamp;
  String? languageCode;
  String? tranNo;
  String? resTimestamp;
  String? resCode;
  String? resMessage;

  IntentCommon();

  IntentCommon.fromJson(Map json)
      : targetPackage = json['target_package'],
        targetName = json['target_name'],
        targetSvc = json['target_svc'],
        targetApi = json['target_api'],
        authorization = json['authorization'],
        sourceSvc = json['source_svc'],
        sourceVer = json['source_ver'],
        sourceAddr = json['source_addr'],
        reqTimestamp = json['req_timestamp'],
        languageCode = json['language_code'],
        tranNo = json['tran_no'],
        resTimestamp = json['res_timestamp'],
        resCode = json['res_code'],
        resMessage = json['res_message'];

  Map<String, dynamic> toJson() => {
        'target_package': targetPackage,
        'target_name': targetName,
        'target_svc': targetSvc,
        'target_api': targetApi,
        'authorization': authorization,
        'source_svc': sourceSvc,
        'source_ver': sourceVer,
        'source_addr': sourceAddr,
        'req_timestamp': reqTimestamp,
        'language_code': languageCode,
        'tran_no': tranNo,
        'res_timestamp': resTimestamp,
        'res_code': resCode,
        'res_message': resMessage,
      }..removeWhere((k, v) => v == null);
}

class IntentContentRequest {
  static const String TRAN_TYPE_APPROVAL = "T";
  static const String TRAN_TYPE_CANCEL = "C";
  static const String TRAN_TYPE_QUERY = "Q";
  static const String TRAN_TYPE_AUTHORIZATION_CONFIRMATION = "A";
  static const String TRAN_TYPE_REWARD = 'R';
  static const String TRAN_TYPE_REWARD_CANCEL = 'D';
  static const String TRAN_TYPE_ISSUE_REWARD = 'I';

  String? apprType;
  String? tranType;
  String? totalAmount;
  String? price;
  String? tax;
  String? tip;
  String? taxExempt;
  String? approTrNo;
  String? approNo;
  String? approDate;
  String? printYn;
  String? currency;
  Object? param;
  String? reqIdx;
  String? reqTotal;

  IntentContentRequest();

  IntentContentRequest.fromJson(Map json)
      : apprType = json['appr_type'],
        tranType = json['tran_type'],
        totalAmount = json['total_amount'].toString(),
        price = json['price'].toString(),
        tax = json['tax'].toString(),
        tip = json['tip'].toString(),
        taxExempt = json['tax_exempt'].toString(),
        approTrNo = json['appro_tr_no'],
        approNo = json['appro_no'],
        approDate = json['appro_date'],
        printYn = json['print_yn'],
        currency = json['currency'],
        param = json['param'],
        reqIdx = json['req_idx'],
        reqTotal = json['req_total'];

  Map<String, dynamic> toJson() => {
        'appr_type': apprType,
        'tran_type': tranType,
        'total_amount': totalAmount,
        'price': price,
        'tax': tax,
        'tip': tip,
        'tax_exempt': taxExempt,
        'appro_tr_no': approTrNo,
        'appro_no': approNo,
        'appro_date': approDate,
        'print_yn': printYn,
        'currency': currency,
        'param': param,
        'req_idx': reqIdx,
        'req_total': reqTotal,
      }..removeWhere((k, v) => v == null);
}

class IntentContentResponse extends IntentContentRequest {
  String? resultCode;
  String? resultMsg;
  String? approAmount;
  String? orgApproNo;
  String? orgApproDate;
  String? deviceCode;
  String? deviceName;
  String? acquirerCode;
  String? acquirerName;
  String? issuerCode;
  String? issuerName;
  List? printMsg1;
  Map? shopInfo;
  Map? approvalRes;
  Map? etc;

  IntentContentResponse(IntentContentRequest request) {
    fromRequest(request);
  }

  void fromRequest(IntentContentRequest source) {
    apprType = source.apprType;
    tranType = source.tranType;
    printYn = source.printYn;
    reqIdx = source.reqIdx;
    reqTotal = source.reqTotal;
  }

  void merge(IntentContentResponse? source) {
    if (source == null) {
      return;
    }

    // from IntentContentRequest
    apprType = source.apprType ?? apprType;
    tranType = source.tranType ?? tranType;
    totalAmount = source.totalAmount ?? totalAmount;
    price = source.price ?? price;
    tax = source.tax ?? tax;
    tip = source.tip ?? tip;
    taxExempt = source.taxExempt ?? taxExempt;
    approTrNo = source.approTrNo ?? approTrNo;
    approNo = source.approNo ?? approNo;
    approDate = source.approDate ?? approDate;
    printYn = source.printYn ?? printYn;
    currency = source.currency ?? currency;
    param = source.param ?? param;
    reqIdx = source.reqIdx ?? reqIdx;
    reqTotal = source.reqTotal ?? reqTotal;

    resultCode = source.resultCode ?? resultCode;
    resultMsg = source.resultMsg ?? resultMsg;
    approAmount = source.approAmount ?? approAmount;
    orgApproNo = source.orgApproNo ?? orgApproNo;
    orgApproDate = source.orgApproDate ?? orgApproDate;
    deviceCode = source.deviceCode ?? deviceCode;
    deviceName = source.deviceName ?? deviceName;
    acquirerCode = source.acquirerCode ?? acquirerCode;
    acquirerName = source.acquirerName ?? acquirerName;
    issuerCode = source.issuerCode ?? issuerCode;
    issuerName = source.issuerName ?? issuerName;
    shopInfo = source.shopInfo ?? shopInfo;
    approvalRes = source.approvalRes ?? approvalRes;
    etc = source.etc ?? etc;
  }

  IntentContentResponse.fromJson(Map json)
      : resultCode = json['result_code'],
        resultMsg = json['result_msg'],
        approAmount = json['appro_amount'].toString(),
        orgApproNo = json['org_appro_no'],
        orgApproDate = json['org_appro_date'],
        deviceCode = json['device_code'],
        deviceName = json['device_name'],
        acquirerCode = json['acquirer_code'],
        acquirerName = json['acquirer_name'],
        issuerCode = json['issuer_code'],
        issuerName = json['issuer_name'],
        printMsg1 = json['print_msg1'],
        shopInfo = json['shop_info'],
        approvalRes = json['approval_res'],
        etc = json['etc'],
        super.fromJson(json);

  Map<String, dynamic> toJson() => {
        'result_code': resultCode,
        'result_msg': resultMsg,
        'appro_amount': approAmount,
        'org_appro_no': orgApproNo,
        'org_appro_date': orgApproDate,
        'device_code': deviceCode,
        'device_name': deviceName,
        'acquirer_code': acquirerCode,
        'acquirer_name': acquirerName,
        'issuer_code': issuerCode,
        'issuer_name': issuerName,
        'print_msg1': printMsg1,
        'shop_info': shopInfo,
        'approval_res': approvalRes,
        'etc': etc,
      }
        ..addAll(super.toJson())
        ..removeWhere((k, v) => v == null);
}

class IntentRequest {
  IntentCommon? common;
  IntentContentRequest? content;

  IntentRequest();

  IntentRequest.fromJson(Map json)
      : common = json['common'] != null
            ? IntentCommon.fromJson(json['common'])
            : null,
        content = json['content'] != null
            ? IntentContentRequest.fromJson(json['content'])
            : null;

  Map<String, dynamic> toJson() => {
        'common': common?.toJson(),
        'content': content?.toJson(),
      };
}

class IntentResponse {
  IntentCommon? common;
  IntentContentResponse? content;

  IntentResponse();

  IntentResponse.fromJson(Map json)
      : common = json['common'] != null
            ? IntentCommon.fromJson(json['common'])
            : null,
        content = json['content'] != null
            ? IntentContentResponse.fromJson(json['content'])
            : null;

  Map<String?, dynamic> toJson() => {
        'common': common?.toJson(),
        'content': content?.toJson(),
      };

  static IntentResponse create(
    String api,
    String tranNo,
    String code,
    String message,
  ) {
    return IntentResponse()
      ..common = (IntentCommon()
        ..targetApi = api
        ..tranNo = tranNo
        ..resCode = code
        ..resMessage = message);
  }
}
