class ApiException implements Exception {
  int code;
  String? message;
  dynamic rawData;

  ApiException(this.code, [this.message, dynamic rawData]);

  @override
  String toString() => 'ApiException: [$code]${message ?? ''}';
}
