import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:minio/minio.dart';
import 'package:minio/models.dart';
import 'package:minio/src/minio_client.dart';
import 'package:xml/xml.dart' as xml;
import 'package:xml/xml.dart' show XmlElement;

class S3Client {
  static S3Client get instance => _instance;

  static final S3Client _instance = S3Client._internal();

  S3Client._internal();

  late Minio _client;
  String? _dataBucket;
  String? _imageBucket;

  void init({
    required String accessKey,
    required String secretKey,
    String? dataBucket,
    String? imageBucket,
    String? region,
    required String endpoint,
  }) {
    if (endpoint.isEmpty) {
      endpoint = 'https://s3.amazonaws.com';
    }

    var uri = Uri.parse(endpoint);
    _client = Minio2(
      accessKey: accessKey,
      secretKey: secretKey,
      region: region,
      endPoint: uri.host,
      useSSL: uri.scheme == 'https',
      enableTrace: !kReleaseMode,
    );
    _dataBucket = dataBucket;
    _imageBucket = imageBucket;
  }

  Future<Uint8List> download(String path) async {
    return await _toBytes(await _client.getObject(_dataBucket!, path));
  }

  Future<Uint8List?> downloadImage(String path, String? etag) async {
    try {
      // Minio 에서 서버에서 받아온 시간 정보를 파싱할 때 DateFormat 사용하는데 locale 영향을 받음
      // 파싱하는 동안에만 locale 을 "en_US"로 변경
      var locale = Intl.defaultLocale;
      Intl.defaultLocale = Intl.systemLocale;
      var stat = await _client.statObject(_imageBucket!, path);
      Intl.defaultLocale = locale;

      if (stat.etag == etag) {
        print('downloadImage($path): Same ETag');
        return null;
      }

      return await _toBytes(await _client.getObject(_imageBucket!, path));
    } on MinioError catch (e) {
      print('downloadImage($path): $e');
      return null;
    }
  }

  Future<Uint8List> _toBytes(Stream stream) {
    Completer<Uint8List> completer = Completer<Uint8List>();
    Sink sink = ByteConversionSink.withCallback(
            (bytes) => completer.complete(Uint8List.fromList(bytes)));

    stream.listen(
      sink.add,
      onError: completer.completeError,
      onDone: sink.close,
      cancelOnError: true,
    );

    return completer.future;
  }
}

// Minio.getObjectACL 에 버그가 있어 파일의 ETAG 를 구하지 못해 다운로드 하지 못함
// 편법으로 Minio 를 상속하여 문제되는 함수를 override 함
// 추후 Minio 패키지가 수정되면 삭제
class Minio2 extends Minio {
  late MinioClient _client;

  Minio2({
    required accessKey,
    required secretKey,
    region,
    endPoint,
    useSSL,
    enableTrace,
  }) : super(
          accessKey: accessKey,
          secretKey: secretKey,
          region: region,
          endPoint: endPoint,
          useSSL: useSSL,
          enableTrace: enableTrace,
        ) {
    _client = MinioClient(this);
  }

  @override
  Future<AccessControlPolicy> getObjectACL(String bucket, String object) async {
    MinioInvalidBucketNameError.check(bucket);
    MinioInvalidObjectNameError.check(object);

    final resp = await _client.request(
      method: 'GET',
      bucket: bucket,
      object: object,
      queries: {'acl': ''},
    );

    return AccessControlPolicy.fromXml(
      // 원 소스에는 firstChild 로 되어 있음
      // 그러나 XmlDeclaration (<?xml version="1.0" encoding="UTF-8"?>)이 먼저 옴
      xml.XmlDocument.parse(resp.body).lastChild as XmlElement?,
    );
  }
}
