import 'package:grpc/grpc.dart';

import 'generated/api/v1/message.pb.dart';

class GRpcException implements Exception {
  String code;
  String message;
  dynamic rawData;

  GRpcException({required this.code, required this.message}) {
    switch (code) {
      case '${StatusCode.unauthenticated}':
        code = 'EC0001';
        break;
      case '${StatusCode.unavailable}':
        code = 'EC9999';
        break;
    }
  }

  GRpcException.network(Common common, [dynamic rawData])
      : code = common.resCode,
        message = common.resMessage,
        rawData = rawData;

  @override
  String toString() => 'GRpcException: [$code] $message';
}
