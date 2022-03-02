///
//  Generated code. Do not modify.
//  source: api/v1/message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'table/table.pb.dart' as $2;

class Common extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Common', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetSvc')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetPackage')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetApi')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sourceSvc')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sourceVer')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sourceAddr')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reqTimestamp')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lauguageCode')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rspTimestamp')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tranNo')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resCode')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resMessage')
    ..hasRequiredFields = false
  ;

  Common._() : super();
  factory Common({
    $core.String? targetName,
    $core.String? targetSvc,
    $core.String? targetPackage,
    $core.String? targetApi,
    $core.String? sourceSvc,
    $core.String? sourceVer,
    $core.String? sourceAddr,
    $core.String? reqTimestamp,
    $core.String? lauguageCode,
    $core.String? rspTimestamp,
    $core.String? tranNo,
    $core.String? resCode,
    $core.String? resMessage,
  }) {
    final _result = create();
    if (targetName != null) {
      _result.targetName = targetName;
    }
    if (targetSvc != null) {
      _result.targetSvc = targetSvc;
    }
    if (targetPackage != null) {
      _result.targetPackage = targetPackage;
    }
    if (targetApi != null) {
      _result.targetApi = targetApi;
    }
    if (sourceSvc != null) {
      _result.sourceSvc = sourceSvc;
    }
    if (sourceVer != null) {
      _result.sourceVer = sourceVer;
    }
    if (sourceAddr != null) {
      _result.sourceAddr = sourceAddr;
    }
    if (reqTimestamp != null) {
      _result.reqTimestamp = reqTimestamp;
    }
    if (lauguageCode != null) {
      _result.lauguageCode = lauguageCode;
    }
    if (rspTimestamp != null) {
      _result.rspTimestamp = rspTimestamp;
    }
    if (tranNo != null) {
      _result.tranNo = tranNo;
    }
    if (resCode != null) {
      _result.resCode = resCode;
    }
    if (resMessage != null) {
      _result.resMessage = resMessage;
    }
    return _result;
  }
  factory Common.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Common.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Common clone() => Common()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Common copyWith(void Function(Common) updates) => super.copyWith((message) => updates(message as Common)) as Common; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Common create() => Common._();
  Common createEmptyInstance() => create();
  static $pb.PbList<Common> createRepeated() => $pb.PbList<Common>();
  @$core.pragma('dart2js:noInline')
  static Common getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Common>(create);
  static Common? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get targetName => $_getSZ(0);
  @$pb.TagNumber(1)
  set targetName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTargetName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get targetSvc => $_getSZ(1);
  @$pb.TagNumber(2)
  set targetSvc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTargetSvc() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetSvc() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get targetPackage => $_getSZ(2);
  @$pb.TagNumber(3)
  set targetPackage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetPackage() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetPackage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get targetApi => $_getSZ(3);
  @$pb.TagNumber(4)
  set targetApi($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTargetApi() => $_has(3);
  @$pb.TagNumber(4)
  void clearTargetApi() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get sourceSvc => $_getSZ(4);
  @$pb.TagNumber(5)
  set sourceSvc($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSourceSvc() => $_has(4);
  @$pb.TagNumber(5)
  void clearSourceSvc() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get sourceVer => $_getSZ(5);
  @$pb.TagNumber(6)
  set sourceVer($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSourceVer() => $_has(5);
  @$pb.TagNumber(6)
  void clearSourceVer() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get sourceAddr => $_getSZ(6);
  @$pb.TagNumber(7)
  set sourceAddr($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSourceAddr() => $_has(6);
  @$pb.TagNumber(7)
  void clearSourceAddr() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get reqTimestamp => $_getSZ(7);
  @$pb.TagNumber(8)
  set reqTimestamp($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasReqTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearReqTimestamp() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get lauguageCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set lauguageCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLauguageCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearLauguageCode() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get rspTimestamp => $_getSZ(9);
  @$pb.TagNumber(10)
  set rspTimestamp($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRspTimestamp() => $_has(9);
  @$pb.TagNumber(10)
  void clearRspTimestamp() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get tranNo => $_getSZ(10);
  @$pb.TagNumber(11)
  set tranNo($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTranNo() => $_has(10);
  @$pb.TagNumber(11)
  void clearTranNo() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get resCode => $_getSZ(11);
  @$pb.TagNumber(12)
  set resCode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasResCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearResCode() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get resMessage => $_getSZ(12);
  @$pb.TagNumber(13)
  set resMessage($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasResMessage() => $_has(12);
  @$pb.TagNumber(13)
  void clearResMessage() => clearField(13);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty({
    Common? common,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    return _result;
  }
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);
}

class LoginDomain_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginDomain.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'domain')
    ..hasRequiredFields = false
  ;

  LoginDomain_Content._() : super();
  factory LoginDomain_Content({
    $core.Iterable<$core.String>? domain,
  }) {
    final _result = create();
    if (domain != null) {
      _result.domain.addAll(domain);
    }
    return _result;
  }
  factory LoginDomain_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginDomain_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginDomain_Content clone() => LoginDomain_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginDomain_Content copyWith(void Function(LoginDomain_Content) updates) => super.copyWith((message) => updates(message as LoginDomain_Content)) as LoginDomain_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginDomain_Content create() => LoginDomain_Content._();
  LoginDomain_Content createEmptyInstance() => create();
  static $pb.PbList<LoginDomain_Content> createRepeated() => $pb.PbList<LoginDomain_Content>();
  @$core.pragma('dart2js:noInline')
  static LoginDomain_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginDomain_Content>(create);
  static LoginDomain_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get domain => $_getList(0);
}

class LoginDomain extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginDomain', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<LoginDomain_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: LoginDomain_Content.create)
    ..hasRequiredFields = false
  ;

  LoginDomain._() : super();
  factory LoginDomain({
    Common? common,
    LoginDomain_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory LoginDomain.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginDomain.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginDomain clone() => LoginDomain()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginDomain copyWith(void Function(LoginDomain) updates) => super.copyWith((message) => updates(message as LoginDomain)) as LoginDomain; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginDomain create() => LoginDomain._();
  LoginDomain createEmptyInstance() => create();
  static $pb.PbList<LoginDomain> createRepeated() => $pb.PbList<LoginDomain>();
  @$core.pragma('dart2js:noInline')
  static LoginDomain getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginDomain>(create);
  static LoginDomain? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  LoginDomain_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(LoginDomain_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  LoginDomain_Content ensureContent() => $_ensure(1);
}

class PasswordVerification_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PasswordVerification.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  PasswordVerification_Content._() : super();
  factory PasswordVerification_Content({
    $core.String? password,
  }) {
    final _result = create();
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory PasswordVerification_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PasswordVerification_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PasswordVerification_Content clone() => PasswordVerification_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PasswordVerification_Content copyWith(void Function(PasswordVerification_Content) updates) => super.copyWith((message) => updates(message as PasswordVerification_Content)) as PasswordVerification_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PasswordVerification_Content create() => PasswordVerification_Content._();
  PasswordVerification_Content createEmptyInstance() => create();
  static $pb.PbList<PasswordVerification_Content> createRepeated() => $pb.PbList<PasswordVerification_Content>();
  @$core.pragma('dart2js:noInline')
  static PasswordVerification_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PasswordVerification_Content>(create);
  static PasswordVerification_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);
}

class PasswordVerification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PasswordVerification', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<PasswordVerification_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: PasswordVerification_Content.create)
    ..hasRequiredFields = false
  ;

  PasswordVerification._() : super();
  factory PasswordVerification({
    Common? common,
    PasswordVerification_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory PasswordVerification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PasswordVerification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PasswordVerification clone() => PasswordVerification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PasswordVerification copyWith(void Function(PasswordVerification) updates) => super.copyWith((message) => updates(message as PasswordVerification)) as PasswordVerification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PasswordVerification create() => PasswordVerification._();
  PasswordVerification createEmptyInstance() => create();
  static $pb.PbList<PasswordVerification> createRepeated() => $pb.PbList<PasswordVerification>();
  @$core.pragma('dart2js:noInline')
  static PasswordVerification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PasswordVerification>(create);
  static PasswordVerification? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  PasswordVerification_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(PasswordVerification_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  PasswordVerification_Content ensureContent() => $_ensure(1);
}

class LastModified_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LastModified.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableNames')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'times')
    ..hasRequiredFields = false
  ;

  LastModified_Content._() : super();
  factory LastModified_Content({
    $core.Iterable<$core.String>? tableNames,
    $core.Iterable<$core.String>? times,
  }) {
    final _result = create();
    if (tableNames != null) {
      _result.tableNames.addAll(tableNames);
    }
    if (times != null) {
      _result.times.addAll(times);
    }
    return _result;
  }
  factory LastModified_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LastModified_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LastModified_Content clone() => LastModified_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LastModified_Content copyWith(void Function(LastModified_Content) updates) => super.copyWith((message) => updates(message as LastModified_Content)) as LastModified_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LastModified_Content create() => LastModified_Content._();
  LastModified_Content createEmptyInstance() => create();
  static $pb.PbList<LastModified_Content> createRepeated() => $pb.PbList<LastModified_Content>();
  @$core.pragma('dart2js:noInline')
  static LastModified_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LastModified_Content>(create);
  static LastModified_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tableNames => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get times => $_getList(1);
}

class LastModified extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LastModified', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<LastModified_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: LastModified_Content.create)
    ..hasRequiredFields = false
  ;

  LastModified._() : super();
  factory LastModified({
    Common? common,
    LastModified_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory LastModified.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LastModified.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LastModified clone() => LastModified()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LastModified copyWith(void Function(LastModified) updates) => super.copyWith((message) => updates(message as LastModified)) as LastModified; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LastModified create() => LastModified._();
  LastModified createEmptyInstance() => create();
  static $pb.PbList<LastModified> createRepeated() => $pb.PbList<LastModified>();
  @$core.pragma('dart2js:noInline')
  static LastModified getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LastModified>(create);
  static LastModified? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  LastModified_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(LastModified_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  LastModified_Content ensureContent() => $_ensure(1);
}

class S3File_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'S3File.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endpoint')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'region')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessKey')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secretKey')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bucket')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'etag')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bucket2')
    ..hasRequiredFields = false
  ;

  S3File_Content._() : super();
  factory S3File_Content({
    $core.String? endpoint,
    $core.String? region,
    $core.String? accessKey,
    $core.String? secretKey,
    $core.String? bucket,
    $core.String? key,
    $core.String? etag,
    $core.String? bucket2,
  }) {
    final _result = create();
    if (endpoint != null) {
      _result.endpoint = endpoint;
    }
    if (region != null) {
      _result.region = region;
    }
    if (accessKey != null) {
      _result.accessKey = accessKey;
    }
    if (secretKey != null) {
      _result.secretKey = secretKey;
    }
    if (bucket != null) {
      _result.bucket = bucket;
    }
    if (key != null) {
      _result.key = key;
    }
    if (etag != null) {
      _result.etag = etag;
    }
    if (bucket2 != null) {
      _result.bucket2 = bucket2;
    }
    return _result;
  }
  factory S3File_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory S3File_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  S3File_Content clone() => S3File_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  S3File_Content copyWith(void Function(S3File_Content) updates) => super.copyWith((message) => updates(message as S3File_Content)) as S3File_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static S3File_Content create() => S3File_Content._();
  S3File_Content createEmptyInstance() => create();
  static $pb.PbList<S3File_Content> createRepeated() => $pb.PbList<S3File_Content>();
  @$core.pragma('dart2js:noInline')
  static S3File_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<S3File_Content>(create);
  static S3File_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get endpoint => $_getSZ(0);
  @$pb.TagNumber(1)
  set endpoint($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEndpoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearEndpoint() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get region => $_getSZ(1);
  @$pb.TagNumber(2)
  set region($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegion() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accessKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set accessKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get secretKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set secretKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSecretKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearSecretKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get bucket => $_getSZ(4);
  @$pb.TagNumber(5)
  set bucket($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBucket() => $_has(4);
  @$pb.TagNumber(5)
  void clearBucket() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get key => $_getSZ(5);
  @$pb.TagNumber(6)
  set key($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasKey() => $_has(5);
  @$pb.TagNumber(6)
  void clearKey() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get etag => $_getSZ(6);
  @$pb.TagNumber(7)
  set etag($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEtag() => $_has(6);
  @$pb.TagNumber(7)
  void clearEtag() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get bucket2 => $_getSZ(7);
  @$pb.TagNumber(8)
  set bucket2($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBucket2() => $_has(7);
  @$pb.TagNumber(8)
  void clearBucket2() => clearField(8);
}

class S3File extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'S3File', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<S3File_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: S3File_Content.create)
    ..hasRequiredFields = false
  ;

  S3File._() : super();
  factory S3File({
    Common? common,
    S3File_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory S3File.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory S3File.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  S3File clone() => S3File()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  S3File copyWith(void Function(S3File) updates) => super.copyWith((message) => updates(message as S3File)) as S3File; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static S3File create() => S3File._();
  S3File createEmptyInstance() => create();
  static $pb.PbList<S3File> createRepeated() => $pb.PbList<S3File>();
  @$core.pragma('dart2js:noInline')
  static S3File getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<S3File>(create);
  static S3File? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  S3File_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(S3File_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  S3File_Content ensureContent() => $_ensure(1);
}

class LogMessage_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogMessage.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logText')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modificationTime')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendingTimestamp')
    ..hasRequiredFields = false
  ;

  LogMessage_Content._() : super();
  factory LogMessage_Content({
    $fixnum.Int64? logId,
    $core.String? logText,
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? modificationTime,
    $fixnum.Int64? sendingTimestamp,
  }) {
    final _result = create();
    if (logId != null) {
      _result.logId = logId;
    }
    if (logText != null) {
      _result.logText = logText;
    }
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (modificationTime != null) {
      _result.modificationTime = modificationTime;
    }
    if (sendingTimestamp != null) {
      _result.sendingTimestamp = sendingTimestamp;
    }
    return _result;
  }
  factory LogMessage_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogMessage_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogMessage_Content clone() => LogMessage_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogMessage_Content copyWith(void Function(LogMessage_Content) updates) => super.copyWith((message) => updates(message as LogMessage_Content)) as LogMessage_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogMessage_Content create() => LogMessage_Content._();
  LogMessage_Content createEmptyInstance() => create();
  static $pb.PbList<LogMessage_Content> createRepeated() => $pb.PbList<LogMessage_Content>();
  @$core.pragma('dart2js:noInline')
  static LogMessage_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogMessage_Content>(create);
  static LogMessage_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get logId => $_getI64(0);
  @$pb.TagNumber(1)
  set logId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get logText => $_getSZ(1);
  @$pb.TagNumber(2)
  set logText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLogText() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get storeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set storeId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStoreId() => $_has(2);
  @$pb.TagNumber(3)
  void clearStoreId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get storeTerminalId => $_getSZ(3);
  @$pb.TagNumber(4)
  set storeTerminalId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoreTerminalId() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoreTerminalId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get modificationTime => $_getSZ(4);
  @$pb.TagNumber(5)
  set modificationTime($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasModificationTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearModificationTime() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get sendingTimestamp => $_getI64(5);
  @$pb.TagNumber(6)
  set sendingTimestamp($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSendingTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearSendingTimestamp() => clearField(6);
}

class LogMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<LogMessage_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: LogMessage_Content.create)
    ..hasRequiredFields = false
  ;

  LogMessage._() : super();
  factory LogMessage({
    Common? common,
    LogMessage_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory LogMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogMessage clone() => LogMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogMessage copyWith(void Function(LogMessage) updates) => super.copyWith((message) => updates(message as LogMessage)) as LogMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogMessage create() => LogMessage._();
  LogMessage createEmptyInstance() => create();
  static $pb.PbList<LogMessage> createRepeated() => $pb.PbList<LogMessage>();
  @$core.pragma('dart2js:noInline')
  static LogMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogMessage>(create);
  static LogMessage? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  LogMessage_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(LogMessage_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  LogMessage_Content ensureContent() => $_ensure(1);
}

class PaymentApprovalMaster_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentApprovalMaster.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'approvalTransactionNumber')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sourceTerminalId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentCode')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestType')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseCode')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTime')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTime')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'approvalNumber')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceCode')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'approvalDate')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'approvalTime')
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resVan')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  PaymentApprovalMaster_Content._() : super();
  factory PaymentApprovalMaster_Content({
    $core.String? id,
    $core.String? approvalTransactionNumber,
    $core.String? transactionType,
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? sourceTerminalId,
    $core.String? paymentCode,
    $core.String? requestType,
    $core.String? amount,
    $core.String? status,
    $core.String? responseCode,
    $core.String? startTime,
    $core.String? endTime,
    $core.String? approvalNumber,
    $core.String? deviceCode,
    $core.String? approvalDate,
    $core.String? approvalTime,
    $core.String? resVan,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (approvalTransactionNumber != null) {
      _result.approvalTransactionNumber = approvalTransactionNumber;
    }
    if (transactionType != null) {
      _result.transactionType = transactionType;
    }
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (sourceTerminalId != null) {
      _result.sourceTerminalId = sourceTerminalId;
    }
    if (paymentCode != null) {
      _result.paymentCode = paymentCode;
    }
    if (requestType != null) {
      _result.requestType = requestType;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (status != null) {
      _result.status = status;
    }
    if (responseCode != null) {
      _result.responseCode = responseCode;
    }
    if (startTime != null) {
      _result.startTime = startTime;
    }
    if (endTime != null) {
      _result.endTime = endTime;
    }
    if (approvalNumber != null) {
      _result.approvalNumber = approvalNumber;
    }
    if (deviceCode != null) {
      _result.deviceCode = deviceCode;
    }
    if (approvalDate != null) {
      _result.approvalDate = approvalDate;
    }
    if (approvalTime != null) {
      _result.approvalTime = approvalTime;
    }
    if (resVan != null) {
      _result.resVan = resVan;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory PaymentApprovalMaster_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentApprovalMaster_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentApprovalMaster_Content clone() => PaymentApprovalMaster_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentApprovalMaster_Content copyWith(void Function(PaymentApprovalMaster_Content) updates) => super.copyWith((message) => updates(message as PaymentApprovalMaster_Content)) as PaymentApprovalMaster_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentApprovalMaster_Content create() => PaymentApprovalMaster_Content._();
  PaymentApprovalMaster_Content createEmptyInstance() => create();
  static $pb.PbList<PaymentApprovalMaster_Content> createRepeated() => $pb.PbList<PaymentApprovalMaster_Content>();
  @$core.pragma('dart2js:noInline')
  static PaymentApprovalMaster_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentApprovalMaster_Content>(create);
  static PaymentApprovalMaster_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get approvalTransactionNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set approvalTransactionNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApprovalTransactionNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearApprovalTransactionNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get transactionType => $_getSZ(2);
  @$pb.TagNumber(3)
  set transactionType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTransactionType() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransactionType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get storeId => $_getSZ(3);
  @$pb.TagNumber(4)
  set storeId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoreId() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoreId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get storeTerminalId => $_getSZ(4);
  @$pb.TagNumber(5)
  set storeTerminalId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStoreTerminalId() => $_has(4);
  @$pb.TagNumber(5)
  void clearStoreTerminalId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get sourceTerminalId => $_getSZ(5);
  @$pb.TagNumber(6)
  set sourceTerminalId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSourceTerminalId() => $_has(5);
  @$pb.TagNumber(6)
  void clearSourceTerminalId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get paymentCode => $_getSZ(6);
  @$pb.TagNumber(7)
  set paymentCode($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPaymentCode() => $_has(6);
  @$pb.TagNumber(7)
  void clearPaymentCode() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get requestType => $_getSZ(7);
  @$pb.TagNumber(8)
  set requestType($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRequestType() => $_has(7);
  @$pb.TagNumber(8)
  void clearRequestType() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get amount => $_getSZ(8);
  @$pb.TagNumber(9)
  set amount($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAmount() => $_has(8);
  @$pb.TagNumber(9)
  void clearAmount() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get status => $_getSZ(9);
  @$pb.TagNumber(10)
  set status($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasStatus() => $_has(9);
  @$pb.TagNumber(10)
  void clearStatus() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get responseCode => $_getSZ(10);
  @$pb.TagNumber(11)
  set responseCode($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasResponseCode() => $_has(10);
  @$pb.TagNumber(11)
  void clearResponseCode() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get startTime => $_getSZ(11);
  @$pb.TagNumber(12)
  set startTime($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasStartTime() => $_has(11);
  @$pb.TagNumber(12)
  void clearStartTime() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get endTime => $_getSZ(12);
  @$pb.TagNumber(13)
  set endTime($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasEndTime() => $_has(12);
  @$pb.TagNumber(13)
  void clearEndTime() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get approvalNumber => $_getSZ(13);
  @$pb.TagNumber(14)
  set approvalNumber($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasApprovalNumber() => $_has(13);
  @$pb.TagNumber(14)
  void clearApprovalNumber() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get deviceCode => $_getSZ(14);
  @$pb.TagNumber(15)
  set deviceCode($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasDeviceCode() => $_has(14);
  @$pb.TagNumber(15)
  void clearDeviceCode() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get approvalDate => $_getSZ(15);
  @$pb.TagNumber(16)
  set approvalDate($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasApprovalDate() => $_has(15);
  @$pb.TagNumber(16)
  void clearApprovalDate() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get approvalTime => $_getSZ(16);
  @$pb.TagNumber(17)
  set approvalTime($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasApprovalTime() => $_has(16);
  @$pb.TagNumber(17)
  void clearApprovalTime() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get resVan => $_getSZ(17);
  @$pb.TagNumber(18)
  set resVan($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasResVan() => $_has(17);
  @$pb.TagNumber(18)
  void clearResVan() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get firstRegistrantId => $_getSZ(18);
  @$pb.TagNumber(19)
  set firstRegistrantId($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasFirstRegistrantId() => $_has(18);
  @$pb.TagNumber(19)
  void clearFirstRegistrantId() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get firstRegistrationDatetime => $_getSZ(19);
  @$pb.TagNumber(20)
  set firstRegistrationDatetime($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasFirstRegistrationDatetime() => $_has(19);
  @$pb.TagNumber(20)
  void clearFirstRegistrationDatetime() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get lastReviserId => $_getSZ(20);
  @$pb.TagNumber(21)
  set lastReviserId($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasLastReviserId() => $_has(20);
  @$pb.TagNumber(21)
  void clearLastReviserId() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get lastRevisionDatetime => $_getSZ(21);
  @$pb.TagNumber(22)
  set lastRevisionDatetime($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasLastRevisionDatetime() => $_has(21);
  @$pb.TagNumber(22)
  void clearLastRevisionDatetime() => clearField(22);

  @$pb.TagNumber(23)
  $core.String get stateCode => $_getSZ(22);
  @$pb.TagNumber(23)
  set stateCode($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasStateCode() => $_has(22);
  @$pb.TagNumber(23)
  void clearStateCode() => clearField(23);
}

class PaymentApprovalMaster extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentApprovalMaster', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<PaymentApprovalMaster_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: PaymentApprovalMaster_Content.create)
    ..hasRequiredFields = false
  ;

  PaymentApprovalMaster._() : super();
  factory PaymentApprovalMaster({
    Common? common,
    PaymentApprovalMaster_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory PaymentApprovalMaster.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentApprovalMaster.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentApprovalMaster clone() => PaymentApprovalMaster()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentApprovalMaster copyWith(void Function(PaymentApprovalMaster) updates) => super.copyWith((message) => updates(message as PaymentApprovalMaster)) as PaymentApprovalMaster; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentApprovalMaster create() => PaymentApprovalMaster._();
  PaymentApprovalMaster createEmptyInstance() => create();
  static $pb.PbList<PaymentApprovalMaster> createRepeated() => $pb.PbList<PaymentApprovalMaster>();
  @$core.pragma('dart2js:noInline')
  static PaymentApprovalMaster getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentApprovalMaster>(create);
  static PaymentApprovalMaster? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  PaymentApprovalMaster_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(PaymentApprovalMaster_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  PaymentApprovalMaster_Content ensureContent() => $_ensure(1);
}

class PaymentApprovalSrLog_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentApprovalSrLog.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'approvalTransactionNumber')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'srType')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logData')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  PaymentApprovalSrLog_Content._() : super();
  factory PaymentApprovalSrLog_Content({
    $core.String? id,
    $core.String? approvalTransactionNumber,
    $core.String? srType,
    $core.String? logData,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (approvalTransactionNumber != null) {
      _result.approvalTransactionNumber = approvalTransactionNumber;
    }
    if (srType != null) {
      _result.srType = srType;
    }
    if (logData != null) {
      _result.logData = logData;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory PaymentApprovalSrLog_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentApprovalSrLog_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentApprovalSrLog_Content clone() => PaymentApprovalSrLog_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentApprovalSrLog_Content copyWith(void Function(PaymentApprovalSrLog_Content) updates) => super.copyWith((message) => updates(message as PaymentApprovalSrLog_Content)) as PaymentApprovalSrLog_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentApprovalSrLog_Content create() => PaymentApprovalSrLog_Content._();
  PaymentApprovalSrLog_Content createEmptyInstance() => create();
  static $pb.PbList<PaymentApprovalSrLog_Content> createRepeated() => $pb.PbList<PaymentApprovalSrLog_Content>();
  @$core.pragma('dart2js:noInline')
  static PaymentApprovalSrLog_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentApprovalSrLog_Content>(create);
  static PaymentApprovalSrLog_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get approvalTransactionNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set approvalTransactionNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApprovalTransactionNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearApprovalTransactionNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get srType => $_getSZ(2);
  @$pb.TagNumber(3)
  set srType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSrType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSrType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get logData => $_getSZ(3);
  @$pb.TagNumber(4)
  set logData($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLogData() => $_has(3);
  @$pb.TagNumber(4)
  void clearLogData() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get firstRegistrantId => $_getSZ(4);
  @$pb.TagNumber(5)
  set firstRegistrantId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFirstRegistrantId() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstRegistrantId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get firstRegistrationDatetime => $_getSZ(5);
  @$pb.TagNumber(6)
  set firstRegistrationDatetime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFirstRegistrationDatetime() => $_has(5);
  @$pb.TagNumber(6)
  void clearFirstRegistrationDatetime() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastReviserId => $_getSZ(6);
  @$pb.TagNumber(7)
  set lastReviserId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastReviserId() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastReviserId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get lastRevisionDatetime => $_getSZ(7);
  @$pb.TagNumber(8)
  set lastRevisionDatetime($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastRevisionDatetime() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastRevisionDatetime() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get stateCode => $_getSZ(8);
  @$pb.TagNumber(9)
  set stateCode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasStateCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearStateCode() => clearField(9);
}

class PaymentApprovalSrLog extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentApprovalSrLog', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<PaymentApprovalSrLog_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: PaymentApprovalSrLog_Content.create)
    ..hasRequiredFields = false
  ;

  PaymentApprovalSrLog._() : super();
  factory PaymentApprovalSrLog({
    Common? common,
    PaymentApprovalSrLog_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory PaymentApprovalSrLog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentApprovalSrLog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentApprovalSrLog clone() => PaymentApprovalSrLog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentApprovalSrLog copyWith(void Function(PaymentApprovalSrLog) updates) => super.copyWith((message) => updates(message as PaymentApprovalSrLog)) as PaymentApprovalSrLog; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentApprovalSrLog create() => PaymentApprovalSrLog._();
  PaymentApprovalSrLog createEmptyInstance() => create();
  static $pb.PbList<PaymentApprovalSrLog> createRepeated() => $pb.PbList<PaymentApprovalSrLog>();
  @$core.pragma('dart2js:noInline')
  static PaymentApprovalSrLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentApprovalSrLog>(create);
  static PaymentApprovalSrLog? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  PaymentApprovalSrLog_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(PaymentApprovalSrLog_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  PaymentApprovalSrLog_Content ensureContent() => $_ensure(1);
}

class ItemGroup_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ItemGroup.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemGroupId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upperItemGroupId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemGroupName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemGroupTypeCode')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operationTypeCode')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..hasRequiredFields = false
  ;

  ItemGroup_Content._() : super();
  factory ItemGroup_Content({
    $core.String? itemGroupId,
    $core.String? upperItemGroupId,
    $core.String? itemGroupName,
    $core.String? itemGroupTypeCode,
    $core.String? operationTypeCode,
    $core.bool? hidingYn,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? storeId,
  }) {
    final _result = create();
    if (itemGroupId != null) {
      _result.itemGroupId = itemGroupId;
    }
    if (upperItemGroupId != null) {
      _result.upperItemGroupId = upperItemGroupId;
    }
    if (itemGroupName != null) {
      _result.itemGroupName = itemGroupName;
    }
    if (itemGroupTypeCode != null) {
      _result.itemGroupTypeCode = itemGroupTypeCode;
    }
    if (operationTypeCode != null) {
      _result.operationTypeCode = operationTypeCode;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (storeId != null) {
      _result.storeId = storeId;
    }
    return _result;
  }
  factory ItemGroup_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemGroup_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ItemGroup_Content clone() => ItemGroup_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ItemGroup_Content copyWith(void Function(ItemGroup_Content) updates) => super.copyWith((message) => updates(message as ItemGroup_Content)) as ItemGroup_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemGroup_Content create() => ItemGroup_Content._();
  ItemGroup_Content createEmptyInstance() => create();
  static $pb.PbList<ItemGroup_Content> createRepeated() => $pb.PbList<ItemGroup_Content>();
  @$core.pragma('dart2js:noInline')
  static ItemGroup_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemGroup_Content>(create);
  static ItemGroup_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemGroupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemGroupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get upperItemGroupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set upperItemGroupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpperItemGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpperItemGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get itemGroupName => $_getSZ(2);
  @$pb.TagNumber(3)
  set itemGroupName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemGroupName() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemGroupName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get itemGroupTypeCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set itemGroupTypeCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasItemGroupTypeCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearItemGroupTypeCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get operationTypeCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set operationTypeCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOperationTypeCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearOperationTypeCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get hidingYn => $_getBF(5);
  @$pb.TagNumber(6)
  set hidingYn($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHidingYn() => $_has(5);
  @$pb.TagNumber(6)
  void clearHidingYn() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get firstRegistrantId => $_getSZ(6);
  @$pb.TagNumber(7)
  set firstRegistrantId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFirstRegistrantId() => $_has(6);
  @$pb.TagNumber(7)
  void clearFirstRegistrantId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get firstRegistrationDatetime => $_getSZ(7);
  @$pb.TagNumber(8)
  set firstRegistrationDatetime($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFirstRegistrationDatetime() => $_has(7);
  @$pb.TagNumber(8)
  void clearFirstRegistrationDatetime() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get lastReviserId => $_getSZ(8);
  @$pb.TagNumber(9)
  set lastReviserId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastReviserId() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastReviserId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get lastRevisionDatetime => $_getSZ(9);
  @$pb.TagNumber(10)
  set lastRevisionDatetime($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLastRevisionDatetime() => $_has(9);
  @$pb.TagNumber(10)
  void clearLastRevisionDatetime() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get stateCode => $_getSZ(10);
  @$pb.TagNumber(11)
  set stateCode($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasStateCode() => $_has(10);
  @$pb.TagNumber(11)
  void clearStateCode() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get storeId => $_getSZ(11);
  @$pb.TagNumber(12)
  set storeId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasStoreId() => $_has(11);
  @$pb.TagNumber(12)
  void clearStoreId() => clearField(12);
}

class ItemGroup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ItemGroup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<ItemGroup_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: ItemGroup_Content.create)
    ..hasRequiredFields = false
  ;

  ItemGroup._() : super();
  factory ItemGroup({
    Common? common,
    ItemGroup_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ItemGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ItemGroup clone() => ItemGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ItemGroup copyWith(void Function(ItemGroup) updates) => super.copyWith((message) => updates(message as ItemGroup)) as ItemGroup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemGroup create() => ItemGroup._();
  ItemGroup createEmptyInstance() => create();
  static $pb.PbList<ItemGroup> createRepeated() => $pb.PbList<ItemGroup>();
  @$core.pragma('dart2js:noInline')
  static ItemGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemGroup>(create);
  static ItemGroup? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  ItemGroup_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(ItemGroup_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  ItemGroup_Content ensureContent() => $_ensure(1);
}

class Item_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Item.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemGroupId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemCode')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'operationTypeCode')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'saleTypeCode')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'priceTypeCode')
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cost', $pb.PbFieldType.OD)
    ..a<$core.double>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sellingPrice', $pb.PbFieldType.OD)
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openPriceYn')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'barcode')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyTax0Yn')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyTax1Yn')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyTax2Yn')
    ..aOB(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'applyDiscountYn')
    ..aOB(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidingYn')
    ..a<$core.double>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inventoryQuantity', $pb.PbFieldType.OD)
    ..aOB(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kitchenPrinterOutputYn')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'optionUseTypeCode')
    ..aOB(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recommendedItemYn')
    ..aOB(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'packingPossibleYn')
    ..aOB(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'onlineSaleYn')
    ..aOB(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'soldOutYn')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageUrl')
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrantId')
    ..aOS(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstRegistrationDatetime')
    ..aOS(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastReviserId')
    ..aOS(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastRevisionDatetime')
    ..aOS(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..aOS(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(31, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkCode')
    ..hasRequiredFields = false
  ;

  Item_Content._() : super();
  factory Item_Content({
    $core.String? itemId,
    $core.String? itemGroupId,
    $core.String? itemCode,
    $core.String? itemName,
    $core.String? operationTypeCode,
    $core.String? saleTypeCode,
    $core.String? priceTypeCode,
    $core.double? cost,
    $core.double? sellingPrice,
    $core.bool? openPriceYn,
    $core.String? barcode,
    $core.String? applyTax0Yn,
    $core.String? applyTax1Yn,
    $core.String? applyTax2Yn,
    $core.bool? applyDiscountYn,
    $core.bool? hidingYn,
    $core.double? inventoryQuantity,
    $core.bool? kitchenPrinterOutputYn,
    $core.String? optionUseTypeCode,
    $core.bool? recommendedItemYn,
    $core.bool? packingPossibleYn,
    $core.bool? onlineSaleYn,
    $core.bool? soldOutYn,
    $core.String? imageUrl,
    $core.String? firstRegistrantId,
    $core.String? firstRegistrationDatetime,
    $core.String? lastReviserId,
    $core.String? lastRevisionDatetime,
    $core.String? stateCode,
    $core.String? storeId,
    $core.String? linkCode,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (itemGroupId != null) {
      _result.itemGroupId = itemGroupId;
    }
    if (itemCode != null) {
      _result.itemCode = itemCode;
    }
    if (itemName != null) {
      _result.itemName = itemName;
    }
    if (operationTypeCode != null) {
      _result.operationTypeCode = operationTypeCode;
    }
    if (saleTypeCode != null) {
      _result.saleTypeCode = saleTypeCode;
    }
    if (priceTypeCode != null) {
      _result.priceTypeCode = priceTypeCode;
    }
    if (cost != null) {
      _result.cost = cost;
    }
    if (sellingPrice != null) {
      _result.sellingPrice = sellingPrice;
    }
    if (openPriceYn != null) {
      _result.openPriceYn = openPriceYn;
    }
    if (barcode != null) {
      _result.barcode = barcode;
    }
    if (applyTax0Yn != null) {
      _result.applyTax0Yn = applyTax0Yn;
    }
    if (applyTax1Yn != null) {
      _result.applyTax1Yn = applyTax1Yn;
    }
    if (applyTax2Yn != null) {
      _result.applyTax2Yn = applyTax2Yn;
    }
    if (applyDiscountYn != null) {
      _result.applyDiscountYn = applyDiscountYn;
    }
    if (hidingYn != null) {
      _result.hidingYn = hidingYn;
    }
    if (inventoryQuantity != null) {
      _result.inventoryQuantity = inventoryQuantity;
    }
    if (kitchenPrinterOutputYn != null) {
      _result.kitchenPrinterOutputYn = kitchenPrinterOutputYn;
    }
    if (optionUseTypeCode != null) {
      _result.optionUseTypeCode = optionUseTypeCode;
    }
    if (recommendedItemYn != null) {
      _result.recommendedItemYn = recommendedItemYn;
    }
    if (packingPossibleYn != null) {
      _result.packingPossibleYn = packingPossibleYn;
    }
    if (onlineSaleYn != null) {
      _result.onlineSaleYn = onlineSaleYn;
    }
    if (soldOutYn != null) {
      _result.soldOutYn = soldOutYn;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (firstRegistrantId != null) {
      _result.firstRegistrantId = firstRegistrantId;
    }
    if (firstRegistrationDatetime != null) {
      _result.firstRegistrationDatetime = firstRegistrationDatetime;
    }
    if (lastReviserId != null) {
      _result.lastReviserId = lastReviserId;
    }
    if (lastRevisionDatetime != null) {
      _result.lastRevisionDatetime = lastRevisionDatetime;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (linkCode != null) {
      _result.linkCode = linkCode;
    }
    return _result;
  }
  factory Item_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Item_Content clone() => Item_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Item_Content copyWith(void Function(Item_Content) updates) => super.copyWith((message) => updates(message as Item_Content)) as Item_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Item_Content create() => Item_Content._();
  Item_Content createEmptyInstance() => create();
  static $pb.PbList<Item_Content> createRepeated() => $pb.PbList<Item_Content>();
  @$core.pragma('dart2js:noInline')
  static Item_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item_Content>(create);
  static Item_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get itemGroupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemGroupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get itemCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set itemCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get itemName => $_getSZ(3);
  @$pb.TagNumber(4)
  set itemName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasItemName() => $_has(3);
  @$pb.TagNumber(4)
  void clearItemName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get operationTypeCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set operationTypeCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOperationTypeCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearOperationTypeCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get saleTypeCode => $_getSZ(5);
  @$pb.TagNumber(6)
  set saleTypeCode($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSaleTypeCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearSaleTypeCode() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get priceTypeCode => $_getSZ(6);
  @$pb.TagNumber(7)
  set priceTypeCode($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPriceTypeCode() => $_has(6);
  @$pb.TagNumber(7)
  void clearPriceTypeCode() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get cost => $_getN(7);
  @$pb.TagNumber(8)
  set cost($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCost() => $_has(7);
  @$pb.TagNumber(8)
  void clearCost() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get sellingPrice => $_getN(8);
  @$pb.TagNumber(9)
  set sellingPrice($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSellingPrice() => $_has(8);
  @$pb.TagNumber(9)
  void clearSellingPrice() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get openPriceYn => $_getBF(9);
  @$pb.TagNumber(10)
  set openPriceYn($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasOpenPriceYn() => $_has(9);
  @$pb.TagNumber(10)
  void clearOpenPriceYn() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get barcode => $_getSZ(10);
  @$pb.TagNumber(11)
  set barcode($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBarcode() => $_has(10);
  @$pb.TagNumber(11)
  void clearBarcode() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get applyTax0Yn => $_getSZ(11);
  @$pb.TagNumber(12)
  set applyTax0Yn($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasApplyTax0Yn() => $_has(11);
  @$pb.TagNumber(12)
  void clearApplyTax0Yn() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get applyTax1Yn => $_getSZ(12);
  @$pb.TagNumber(13)
  set applyTax1Yn($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasApplyTax1Yn() => $_has(12);
  @$pb.TagNumber(13)
  void clearApplyTax1Yn() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get applyTax2Yn => $_getSZ(13);
  @$pb.TagNumber(14)
  set applyTax2Yn($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasApplyTax2Yn() => $_has(13);
  @$pb.TagNumber(14)
  void clearApplyTax2Yn() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get applyDiscountYn => $_getBF(14);
  @$pb.TagNumber(15)
  set applyDiscountYn($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasApplyDiscountYn() => $_has(14);
  @$pb.TagNumber(15)
  void clearApplyDiscountYn() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get hidingYn => $_getBF(15);
  @$pb.TagNumber(16)
  set hidingYn($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasHidingYn() => $_has(15);
  @$pb.TagNumber(16)
  void clearHidingYn() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get inventoryQuantity => $_getN(16);
  @$pb.TagNumber(17)
  set inventoryQuantity($core.double v) { $_setDouble(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasInventoryQuantity() => $_has(16);
  @$pb.TagNumber(17)
  void clearInventoryQuantity() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get kitchenPrinterOutputYn => $_getBF(17);
  @$pb.TagNumber(18)
  set kitchenPrinterOutputYn($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasKitchenPrinterOutputYn() => $_has(17);
  @$pb.TagNumber(18)
  void clearKitchenPrinterOutputYn() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get optionUseTypeCode => $_getSZ(18);
  @$pb.TagNumber(19)
  set optionUseTypeCode($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasOptionUseTypeCode() => $_has(18);
  @$pb.TagNumber(19)
  void clearOptionUseTypeCode() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get recommendedItemYn => $_getBF(19);
  @$pb.TagNumber(20)
  set recommendedItemYn($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasRecommendedItemYn() => $_has(19);
  @$pb.TagNumber(20)
  void clearRecommendedItemYn() => clearField(20);

  @$pb.TagNumber(21)
  $core.bool get packingPossibleYn => $_getBF(20);
  @$pb.TagNumber(21)
  set packingPossibleYn($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasPackingPossibleYn() => $_has(20);
  @$pb.TagNumber(21)
  void clearPackingPossibleYn() => clearField(21);

  @$pb.TagNumber(22)
  $core.bool get onlineSaleYn => $_getBF(21);
  @$pb.TagNumber(22)
  set onlineSaleYn($core.bool v) { $_setBool(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasOnlineSaleYn() => $_has(21);
  @$pb.TagNumber(22)
  void clearOnlineSaleYn() => clearField(22);

  @$pb.TagNumber(23)
  $core.bool get soldOutYn => $_getBF(22);
  @$pb.TagNumber(23)
  set soldOutYn($core.bool v) { $_setBool(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasSoldOutYn() => $_has(22);
  @$pb.TagNumber(23)
  void clearSoldOutYn() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get imageUrl => $_getSZ(23);
  @$pb.TagNumber(24)
  set imageUrl($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasImageUrl() => $_has(23);
  @$pb.TagNumber(24)
  void clearImageUrl() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get firstRegistrantId => $_getSZ(24);
  @$pb.TagNumber(25)
  set firstRegistrantId($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasFirstRegistrantId() => $_has(24);
  @$pb.TagNumber(25)
  void clearFirstRegistrantId() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get firstRegistrationDatetime => $_getSZ(25);
  @$pb.TagNumber(26)
  set firstRegistrationDatetime($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasFirstRegistrationDatetime() => $_has(25);
  @$pb.TagNumber(26)
  void clearFirstRegistrationDatetime() => clearField(26);

  @$pb.TagNumber(27)
  $core.String get lastReviserId => $_getSZ(26);
  @$pb.TagNumber(27)
  set lastReviserId($core.String v) { $_setString(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasLastReviserId() => $_has(26);
  @$pb.TagNumber(27)
  void clearLastReviserId() => clearField(27);

  @$pb.TagNumber(28)
  $core.String get lastRevisionDatetime => $_getSZ(27);
  @$pb.TagNumber(28)
  set lastRevisionDatetime($core.String v) { $_setString(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasLastRevisionDatetime() => $_has(27);
  @$pb.TagNumber(28)
  void clearLastRevisionDatetime() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get stateCode => $_getSZ(28);
  @$pb.TagNumber(29)
  set stateCode($core.String v) { $_setString(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasStateCode() => $_has(28);
  @$pb.TagNumber(29)
  void clearStateCode() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get storeId => $_getSZ(29);
  @$pb.TagNumber(30)
  set storeId($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasStoreId() => $_has(29);
  @$pb.TagNumber(30)
  void clearStoreId() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get linkCode => $_getSZ(30);
  @$pb.TagNumber(31)
  set linkCode($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasLinkCode() => $_has(30);
  @$pb.TagNumber(31)
  void clearLinkCode() => clearField(31);
}

class Item extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Item', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<Item_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: Item_Content.create)
    ..hasRequiredFields = false
  ;

  Item._() : super();
  factory Item({
    Common? common,
    Item_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory Item.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Item.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Item clone() => Item()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Item copyWith(void Function(Item) updates) => super.copyWith((message) => updates(message as Item)) as Item; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Item create() => Item._();
  Item createEmptyInstance() => create();
  static $pb.PbList<Item> createRepeated() => $pb.PbList<Item>();
  @$core.pragma('dart2js:noInline')
  static Item getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Item>(create);
  static Item? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  Item_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(Item_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  Item_Content ensureContent() => $_ensure(1);
}

class AppVerification_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppVerification.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nonce')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ap3Data')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyHint')
    ..hasRequiredFields = false
  ;

  AppVerification_Content._() : super();
  factory AppVerification_Content({
    $core.String? nonce,
    $core.String? ap3Data,
    $core.String? keyHint,
  }) {
    final _result = create();
    if (nonce != null) {
      _result.nonce = nonce;
    }
    if (ap3Data != null) {
      _result.ap3Data = ap3Data;
    }
    if (keyHint != null) {
      _result.keyHint = keyHint;
    }
    return _result;
  }
  factory AppVerification_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppVerification_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppVerification_Content clone() => AppVerification_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppVerification_Content copyWith(void Function(AppVerification_Content) updates) => super.copyWith((message) => updates(message as AppVerification_Content)) as AppVerification_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppVerification_Content create() => AppVerification_Content._();
  AppVerification_Content createEmptyInstance() => create();
  static $pb.PbList<AppVerification_Content> createRepeated() => $pb.PbList<AppVerification_Content>();
  @$core.pragma('dart2js:noInline')
  static AppVerification_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppVerification_Content>(create);
  static AppVerification_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ap3Data => $_getSZ(1);
  @$pb.TagNumber(2)
  set ap3Data($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAp3Data() => $_has(1);
  @$pb.TagNumber(2)
  void clearAp3Data() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get keyHint => $_getSZ(2);
  @$pb.TagNumber(3)
  set keyHint($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKeyHint() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyHint() => clearField(3);
}

class AppVerification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppVerification', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<AppVerification_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: AppVerification_Content.create)
    ..hasRequiredFields = false
  ;

  AppVerification._() : super();
  factory AppVerification({
    Common? common,
    AppVerification_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory AppVerification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppVerification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppVerification clone() => AppVerification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppVerification copyWith(void Function(AppVerification) updates) => super.copyWith((message) => updates(message as AppVerification)) as AppVerification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppVerification create() => AppVerification._();
  AppVerification createEmptyInstance() => create();
  static $pb.PbList<AppVerification> createRepeated() => $pb.PbList<AppVerification>();
  @$core.pragma('dart2js:noInline')
  static AppVerification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppVerification>(create);
  static AppVerification? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  AppVerification_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(AppVerification_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  AppVerification_Content ensureContent() => $_ensure(1);
}

class AppRegistration_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppRegistration.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loginId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appKey')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appPkgKey')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'registrationNo')
    ..hasRequiredFields = false
  ;

  AppRegistration_Content._() : super();
  factory AppRegistration_Content({
    $core.String? loginId,
    $core.String? storeTerminalId,
    $core.String? appKey,
    $core.String? appPkgKey,
    $core.String? version,
    $core.String? deviceId,
    $core.String? registrationNo,
  }) {
    final _result = create();
    if (loginId != null) {
      _result.loginId = loginId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (appKey != null) {
      _result.appKey = appKey;
    }
    if (appPkgKey != null) {
      _result.appPkgKey = appPkgKey;
    }
    if (version != null) {
      _result.version = version;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (registrationNo != null) {
      _result.registrationNo = registrationNo;
    }
    return _result;
  }
  factory AppRegistration_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppRegistration_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppRegistration_Content clone() => AppRegistration_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppRegistration_Content copyWith(void Function(AppRegistration_Content) updates) => super.copyWith((message) => updates(message as AppRegistration_Content)) as AppRegistration_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppRegistration_Content create() => AppRegistration_Content._();
  AppRegistration_Content createEmptyInstance() => create();
  static $pb.PbList<AppRegistration_Content> createRepeated() => $pb.PbList<AppRegistration_Content>();
  @$core.pragma('dart2js:noInline')
  static AppRegistration_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppRegistration_Content>(create);
  static AppRegistration_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get loginId => $_getSZ(0);
  @$pb.TagNumber(1)
  set loginId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoginId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoginId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get appKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set appKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get appPkgKey => $_getSZ(3);
  @$pb.TagNumber(4)
  set appPkgKey($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAppPkgKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppPkgKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get version => $_getSZ(4);
  @$pb.TagNumber(5)
  set version($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearVersion() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get deviceId => $_getSZ(5);
  @$pb.TagNumber(6)
  set deviceId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDeviceId() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeviceId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get registrationNo => $_getSZ(6);
  @$pb.TagNumber(7)
  set registrationNo($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRegistrationNo() => $_has(6);
  @$pb.TagNumber(7)
  void clearRegistrationNo() => clearField(7);
}

class AppRegistration extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppRegistration', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<AppRegistration_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: AppRegistration_Content.create)
    ..hasRequiredFields = false
  ;

  AppRegistration._() : super();
  factory AppRegistration({
    Common? common,
    AppRegistration_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory AppRegistration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppRegistration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppRegistration clone() => AppRegistration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppRegistration copyWith(void Function(AppRegistration) updates) => super.copyWith((message) => updates(message as AppRegistration)) as AppRegistration; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppRegistration create() => AppRegistration._();
  AppRegistration createEmptyInstance() => create();
  static $pb.PbList<AppRegistration> createRepeated() => $pb.PbList<AppRegistration>();
  @$core.pragma('dart2js:noInline')
  static AppRegistration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppRegistration>(create);
  static AppRegistration? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  AppRegistration_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(AppRegistration_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  AppRegistration_Content ensureContent() => $_ensure(1);
}

class RegistrationForm_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegistrationForm.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loginId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'software')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'service')
    ..pc<$2.StoreTerminal>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminals', $pb.PbFieldType.PM, subBuilder: $2.StoreTerminal.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'personalInfoAgreement', protoName: 'personalInfoAgreement')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'marketingInfoAgreement', protoName: 'marketingInfoAgreement')
    ..hasRequiredFields = false
  ;

  RegistrationForm_Content._() : super();
  factory RegistrationForm_Content({
    $core.String? loginId,
    $core.String? software,
    $core.String? service,
    $core.Iterable<$2.StoreTerminal>? storeTerminals,
    $core.String? personalInfoAgreement,
    $core.String? marketingInfoAgreement,
  }) {
    final _result = create();
    if (loginId != null) {
      _result.loginId = loginId;
    }
    if (software != null) {
      _result.software = software;
    }
    if (service != null) {
      _result.service = service;
    }
    if (storeTerminals != null) {
      _result.storeTerminals.addAll(storeTerminals);
    }
    if (personalInfoAgreement != null) {
      _result.personalInfoAgreement = personalInfoAgreement;
    }
    if (marketingInfoAgreement != null) {
      _result.marketingInfoAgreement = marketingInfoAgreement;
    }
    return _result;
  }
  factory RegistrationForm_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegistrationForm_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegistrationForm_Content clone() => RegistrationForm_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegistrationForm_Content copyWith(void Function(RegistrationForm_Content) updates) => super.copyWith((message) => updates(message as RegistrationForm_Content)) as RegistrationForm_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegistrationForm_Content create() => RegistrationForm_Content._();
  RegistrationForm_Content createEmptyInstance() => create();
  static $pb.PbList<RegistrationForm_Content> createRepeated() => $pb.PbList<RegistrationForm_Content>();
  @$core.pragma('dart2js:noInline')
  static RegistrationForm_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegistrationForm_Content>(create);
  static RegistrationForm_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get loginId => $_getSZ(0);
  @$pb.TagNumber(1)
  set loginId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoginId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoginId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get software => $_getSZ(1);
  @$pb.TagNumber(2)
  set software($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSoftware() => $_has(1);
  @$pb.TagNumber(2)
  void clearSoftware() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get service => $_getSZ(2);
  @$pb.TagNumber(3)
  set service($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasService() => $_has(2);
  @$pb.TagNumber(3)
  void clearService() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$2.StoreTerminal> get storeTerminals => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get personalInfoAgreement => $_getSZ(4);
  @$pb.TagNumber(5)
  set personalInfoAgreement($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPersonalInfoAgreement() => $_has(4);
  @$pb.TagNumber(5)
  void clearPersonalInfoAgreement() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get marketingInfoAgreement => $_getSZ(5);
  @$pb.TagNumber(6)
  set marketingInfoAgreement($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMarketingInfoAgreement() => $_has(5);
  @$pb.TagNumber(6)
  void clearMarketingInfoAgreement() => clearField(6);
}

class RegistrationForm extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RegistrationForm', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<RegistrationForm_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: RegistrationForm_Content.create)
    ..hasRequiredFields = false
  ;

  RegistrationForm._() : super();
  factory RegistrationForm({
    Common? common,
    RegistrationForm_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory RegistrationForm.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegistrationForm.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegistrationForm clone() => RegistrationForm()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegistrationForm copyWith(void Function(RegistrationForm) updates) => super.copyWith((message) => updates(message as RegistrationForm)) as RegistrationForm; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegistrationForm create() => RegistrationForm._();
  RegistrationForm createEmptyInstance() => create();
  static $pb.PbList<RegistrationForm> createRepeated() => $pb.PbList<RegistrationForm>();
  @$core.pragma('dart2js:noInline')
  static RegistrationForm getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegistrationForm>(create);
  static RegistrationForm? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  RegistrationForm_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(RegistrationForm_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  RegistrationForm_Content ensureContent() => $_ensure(1);
}

class SalesData_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SalesData.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..pc<$2.SalesHistory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesHistory', $pb.PbFieldType.PM, subBuilder: $2.SalesHistory.create)
    ..pc<$2.SalesHistoryItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesHistoryItem', $pb.PbFieldType.PM, subBuilder: $2.SalesHistoryItem.create)
    ..pc<$2.SalesAccountHistory>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesAccountHistory', $pb.PbFieldType.PM, subBuilder: $2.SalesAccountHistory.create)
    ..pc<$2.SalesAccountHistoryDetails>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesAccountHistoryDetails', $pb.PbFieldType.PM, subBuilder: $2.SalesAccountHistoryDetails.create)
    ..pc<$2.SalesAccountHistoryTip>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesAccountHistoryTip', $pb.PbFieldType.PM, subBuilder: $2.SalesAccountHistoryTip.create)
    ..pc<$2.SalesHistoryDiscount>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salesHistoryDiscount', $pb.PbFieldType.PM, subBuilder: $2.SalesHistoryDiscount.create)
    ..hasRequiredFields = false
  ;

  SalesData_Content._() : super();
  factory SalesData_Content({
    $core.Iterable<$2.SalesHistory>? salesHistory,
    $core.Iterable<$2.SalesHistoryItem>? salesHistoryItem,
    $core.Iterable<$2.SalesAccountHistory>? salesAccountHistory,
    $core.Iterable<$2.SalesAccountHistoryDetails>? salesAccountHistoryDetails,
    $core.Iterable<$2.SalesAccountHistoryTip>? salesAccountHistoryTip,
    $core.Iterable<$2.SalesHistoryDiscount>? salesHistoryDiscount,
  }) {
    final _result = create();
    if (salesHistory != null) {
      _result.salesHistory.addAll(salesHistory);
    }
    if (salesHistoryItem != null) {
      _result.salesHistoryItem.addAll(salesHistoryItem);
    }
    if (salesAccountHistory != null) {
      _result.salesAccountHistory.addAll(salesAccountHistory);
    }
    if (salesAccountHistoryDetails != null) {
      _result.salesAccountHistoryDetails.addAll(salesAccountHistoryDetails);
    }
    if (salesAccountHistoryTip != null) {
      _result.salesAccountHistoryTip.addAll(salesAccountHistoryTip);
    }
    if (salesHistoryDiscount != null) {
      _result.salesHistoryDiscount.addAll(salesHistoryDiscount);
    }
    return _result;
  }
  factory SalesData_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SalesData_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SalesData_Content clone() => SalesData_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SalesData_Content copyWith(void Function(SalesData_Content) updates) => super.copyWith((message) => updates(message as SalesData_Content)) as SalesData_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SalesData_Content create() => SalesData_Content._();
  SalesData_Content createEmptyInstance() => create();
  static $pb.PbList<SalesData_Content> createRepeated() => $pb.PbList<SalesData_Content>();
  @$core.pragma('dart2js:noInline')
  static SalesData_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SalesData_Content>(create);
  static SalesData_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.SalesHistory> get salesHistory => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$2.SalesHistoryItem> get salesHistoryItem => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$2.SalesAccountHistory> get salesAccountHistory => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$2.SalesAccountHistoryDetails> get salesAccountHistoryDetails => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$2.SalesAccountHistoryTip> get salesAccountHistoryTip => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$2.SalesHistoryDiscount> get salesHistoryDiscount => $_getList(5);
}

class SalesData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SalesData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<SalesData_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: SalesData_Content.create)
    ..hasRequiredFields = false
  ;

  SalesData._() : super();
  factory SalesData({
    Common? common,
    SalesData_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory SalesData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SalesData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SalesData clone() => SalesData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SalesData copyWith(void Function(SalesData) updates) => super.copyWith((message) => updates(message as SalesData)) as SalesData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SalesData create() => SalesData._();
  SalesData createEmptyInstance() => create();
  static $pb.PbList<SalesData> createRepeated() => $pb.PbList<SalesData>();
  @$core.pragma('dart2js:noInline')
  static SalesData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SalesData>(create);
  static SalesData? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  SalesData_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(SalesData_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  SalesData_Content ensureContent() => $_ensure(1);
}

class SettingsData_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SettingsData.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..pc<$2.Store>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'store', $pb.PbFieldType.PM, subBuilder: $2.Store.create)
    ..pc<$2.StoreTerminalBasicDataItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalBasicDataItem', $pb.PbFieldType.PM, subBuilder: $2.StoreTerminalBasicDataItem.create)
    ..pc<$2.StoreTerminal>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminal', $pb.PbFieldType.PM, subBuilder: $2.StoreTerminal.create)
    ..pc<$2.BasicDataItem>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basicDataItem', $pb.PbFieldType.PM, subBuilder: $2.BasicDataItem.create)
    ..hasRequiredFields = false
  ;

  SettingsData_Content._() : super();
  factory SettingsData_Content({
    $core.Iterable<$2.Store>? store,
    $core.Iterable<$2.StoreTerminalBasicDataItem>? storeTerminalBasicDataItem,
    $core.Iterable<$2.StoreTerminal>? storeTerminal,
    $core.Iterable<$2.BasicDataItem>? basicDataItem,
  }) {
    final _result = create();
    if (store != null) {
      _result.store.addAll(store);
    }
    if (storeTerminalBasicDataItem != null) {
      _result.storeTerminalBasicDataItem.addAll(storeTerminalBasicDataItem);
    }
    if (storeTerminal != null) {
      _result.storeTerminal.addAll(storeTerminal);
    }
    if (basicDataItem != null) {
      _result.basicDataItem.addAll(basicDataItem);
    }
    return _result;
  }
  factory SettingsData_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettingsData_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettingsData_Content clone() => SettingsData_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettingsData_Content copyWith(void Function(SettingsData_Content) updates) => super.copyWith((message) => updates(message as SettingsData_Content)) as SettingsData_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettingsData_Content create() => SettingsData_Content._();
  SettingsData_Content createEmptyInstance() => create();
  static $pb.PbList<SettingsData_Content> createRepeated() => $pb.PbList<SettingsData_Content>();
  @$core.pragma('dart2js:noInline')
  static SettingsData_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettingsData_Content>(create);
  static SettingsData_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.Store> get store => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$2.StoreTerminalBasicDataItem> get storeTerminalBasicDataItem => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$2.StoreTerminal> get storeTerminal => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$2.BasicDataItem> get basicDataItem => $_getList(3);
}

class SettingsData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SettingsData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<SettingsData_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: SettingsData_Content.create)
    ..hasRequiredFields = false
  ;

  SettingsData._() : super();
  factory SettingsData({
    Common? common,
    SettingsData_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory SettingsData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettingsData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettingsData clone() => SettingsData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettingsData copyWith(void Function(SettingsData) updates) => super.copyWith((message) => updates(message as SettingsData)) as SettingsData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettingsData create() => SettingsData._();
  SettingsData createEmptyInstance() => create();
  static $pb.PbList<SettingsData> createRepeated() => $pb.PbList<SettingsData>();
  @$core.pragma('dart2js:noInline')
  static SettingsData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettingsData>(create);
  static SettingsData? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  SettingsData_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(SettingsData_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  SettingsData_Content ensureContent() => $_ensure(1);
}

class CashierData_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CashierData.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..pc<$2.CashdrawCashInOutHistory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashdrawCashInOutHistory', $pb.PbFieldType.PM, subBuilder: $2.CashdrawCashInOutHistory.create)
    ..pc<$2.CashierBankHistory>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashierBankHistory', $pb.PbFieldType.PM, subBuilder: $2.CashierBankHistory.create)
    ..pc<$2.CashierBankHistoryBill>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cashierBankHistoryBill', $pb.PbFieldType.PM, subBuilder: $2.CashierBankHistoryBill.create)
    ..hasRequiredFields = false
  ;

  CashierData_Content._() : super();
  factory CashierData_Content({
    $core.Iterable<$2.CashdrawCashInOutHistory>? cashdrawCashInOutHistory,
    $core.Iterable<$2.CashierBankHistory>? cashierBankHistory,
    $core.Iterable<$2.CashierBankHistoryBill>? cashierBankHistoryBill,
  }) {
    final _result = create();
    if (cashdrawCashInOutHistory != null) {
      _result.cashdrawCashInOutHistory.addAll(cashdrawCashInOutHistory);
    }
    if (cashierBankHistory != null) {
      _result.cashierBankHistory.addAll(cashierBankHistory);
    }
    if (cashierBankHistoryBill != null) {
      _result.cashierBankHistoryBill.addAll(cashierBankHistoryBill);
    }
    return _result;
  }
  factory CashierData_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CashierData_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CashierData_Content clone() => CashierData_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CashierData_Content copyWith(void Function(CashierData_Content) updates) => super.copyWith((message) => updates(message as CashierData_Content)) as CashierData_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CashierData_Content create() => CashierData_Content._();
  CashierData_Content createEmptyInstance() => create();
  static $pb.PbList<CashierData_Content> createRepeated() => $pb.PbList<CashierData_Content>();
  @$core.pragma('dart2js:noInline')
  static CashierData_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CashierData_Content>(create);
  static CashierData_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.CashdrawCashInOutHistory> get cashdrawCashInOutHistory => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$2.CashierBankHistory> get cashierBankHistory => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$2.CashierBankHistoryBill> get cashierBankHistoryBill => $_getList(2);
}

class CashierData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CashierData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<CashierData_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: CashierData_Content.create)
    ..hasRequiredFields = false
  ;

  CashierData._() : super();
  factory CashierData({
    Common? common,
    CashierData_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory CashierData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CashierData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CashierData clone() => CashierData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CashierData copyWith(void Function(CashierData) updates) => super.copyWith((message) => updates(message as CashierData)) as CashierData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CashierData create() => CashierData._();
  CashierData createEmptyInstance() => create();
  static $pb.PbList<CashierData> createRepeated() => $pb.PbList<CashierData>();
  @$core.pragma('dart2js:noInline')
  static CashierData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CashierData>(create);
  static CashierData? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  CashierData_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(CashierData_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  CashierData_Content ensureContent() => $_ensure(1);
}

class ReportData_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReportData.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..pc<$2.DailyReportHistory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dailyReportHistory', $pb.PbFieldType.PM, subBuilder: $2.DailyReportHistory.create)
    ..pc<$2.DailyReportHistoryPayments>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dailyReportHistoryPayments', $pb.PbFieldType.PM, subBuilder: $2.DailyReportHistoryPayments.create)
    ..hasRequiredFields = false
  ;

  ReportData_Content._() : super();
  factory ReportData_Content({
    $core.Iterable<$2.DailyReportHistory>? dailyReportHistory,
    $core.Iterable<$2.DailyReportHistoryPayments>? dailyReportHistoryPayments,
  }) {
    final _result = create();
    if (dailyReportHistory != null) {
      _result.dailyReportHistory.addAll(dailyReportHistory);
    }
    if (dailyReportHistoryPayments != null) {
      _result.dailyReportHistoryPayments.addAll(dailyReportHistoryPayments);
    }
    return _result;
  }
  factory ReportData_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportData_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportData_Content clone() => ReportData_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportData_Content copyWith(void Function(ReportData_Content) updates) => super.copyWith((message) => updates(message as ReportData_Content)) as ReportData_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReportData_Content create() => ReportData_Content._();
  ReportData_Content createEmptyInstance() => create();
  static $pb.PbList<ReportData_Content> createRepeated() => $pb.PbList<ReportData_Content>();
  @$core.pragma('dart2js:noInline')
  static ReportData_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportData_Content>(create);
  static ReportData_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.DailyReportHistory> get dailyReportHistory => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$2.DailyReportHistoryPayments> get dailyReportHistoryPayments => $_getList(1);
}

class ReportData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReportData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<ReportData_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: ReportData_Content.create)
    ..hasRequiredFields = false
  ;

  ReportData._() : super();
  factory ReportData({
    Common? common,
    ReportData_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ReportData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportData clone() => ReportData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportData copyWith(void Function(ReportData) updates) => super.copyWith((message) => updates(message as ReportData)) as ReportData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReportData create() => ReportData._();
  ReportData createEmptyInstance() => create();
  static $pb.PbList<ReportData> createRepeated() => $pb.PbList<ReportData>();
  @$core.pragma('dart2js:noInline')
  static ReportData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportData>(create);
  static ReportData? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  ReportData_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(ReportData_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  ReportData_Content ensureContent() => $_ensure(1);
}

class ItemData_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ItemData.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..pc<$2.MenuGroupUse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuGroupUse', $pb.PbFieldType.PM, subBuilder: $2.MenuGroupUse.create)
    ..pc<$2.MenuGroup>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuGroup', $pb.PbFieldType.PM, subBuilder: $2.MenuGroup.create)
    ..pc<$2.MenuItem>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuItem', $pb.PbFieldType.PM, subBuilder: $2.MenuItem.create)
    ..pc<$2.Item>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'item', $pb.PbFieldType.PM, subBuilder: $2.Item.create)
    ..pc<$2.ItemGroup>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemGroup', $pb.PbFieldType.PM, subBuilder: $2.ItemGroup.create)
    ..hasRequiredFields = false
  ;

  ItemData_Content._() : super();
  factory ItemData_Content({
    $core.Iterable<$2.MenuGroupUse>? menuGroupUse,
    $core.Iterable<$2.MenuGroup>? menuGroup,
    $core.Iterable<$2.MenuItem>? menuItem,
    $core.Iterable<$2.Item>? item,
    $core.Iterable<$2.ItemGroup>? itemGroup,
  }) {
    final _result = create();
    if (menuGroupUse != null) {
      _result.menuGroupUse.addAll(menuGroupUse);
    }
    if (menuGroup != null) {
      _result.menuGroup.addAll(menuGroup);
    }
    if (menuItem != null) {
      _result.menuItem.addAll(menuItem);
    }
    if (item != null) {
      _result.item.addAll(item);
    }
    if (itemGroup != null) {
      _result.itemGroup.addAll(itemGroup);
    }
    return _result;
  }
  factory ItemData_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemData_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ItemData_Content clone() => ItemData_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ItemData_Content copyWith(void Function(ItemData_Content) updates) => super.copyWith((message) => updates(message as ItemData_Content)) as ItemData_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemData_Content create() => ItemData_Content._();
  ItemData_Content createEmptyInstance() => create();
  static $pb.PbList<ItemData_Content> createRepeated() => $pb.PbList<ItemData_Content>();
  @$core.pragma('dart2js:noInline')
  static ItemData_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemData_Content>(create);
  static ItemData_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$2.MenuGroupUse> get menuGroupUse => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$2.MenuGroup> get menuGroup => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$2.MenuItem> get menuItem => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$2.Item> get item => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$2.ItemGroup> get itemGroup => $_getList(4);
}

class ItemData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ItemData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<ItemData_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: ItemData_Content.create)
    ..hasRequiredFields = false
  ;

  ItemData._() : super();
  factory ItemData({
    Common? common,
    ItemData_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ItemData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ItemData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ItemData clone() => ItemData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ItemData copyWith(void Function(ItemData) updates) => super.copyWith((message) => updates(message as ItemData)) as ItemData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ItemData create() => ItemData._();
  ItemData createEmptyInstance() => create();
  static $pb.PbList<ItemData> createRepeated() => $pb.PbList<ItemData>();
  @$core.pragma('dart2js:noInline')
  static ItemData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ItemData>(create);
  static ItemData? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  ItemData_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(ItemData_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  ItemData_Content ensureContent() => $_ensure(1);
}

class LicenseInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LicenseInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ver')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pkg')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sign')
    ..hasRequiredFields = false
  ;

  LicenseInfo._() : super();
  factory LicenseInfo({
    $core.String? ver,
    $core.String? key,
    $core.String? pkg,
    $core.String? sign,
  }) {
    final _result = create();
    if (ver != null) {
      _result.ver = ver;
    }
    if (key != null) {
      _result.key = key;
    }
    if (pkg != null) {
      _result.pkg = pkg;
    }
    if (sign != null) {
      _result.sign = sign;
    }
    return _result;
  }
  factory LicenseInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LicenseInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LicenseInfo clone() => LicenseInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LicenseInfo copyWith(void Function(LicenseInfo) updates) => super.copyWith((message) => updates(message as LicenseInfo)) as LicenseInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LicenseInfo create() => LicenseInfo._();
  LicenseInfo createEmptyInstance() => create();
  static $pb.PbList<LicenseInfo> createRepeated() => $pb.PbList<LicenseInfo>();
  @$core.pragma('dart2js:noInline')
  static LicenseInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LicenseInfo>(create);
  static LicenseInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ver => $_getSZ(0);
  @$pb.TagNumber(1)
  set ver($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVer() => $_has(0);
  @$pb.TagNumber(1)
  void clearVer() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pkg => $_getSZ(2);
  @$pb.TagNumber(3)
  set pkg($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPkg() => $_has(2);
  @$pb.TagNumber(3)
  void clearPkg() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get sign => $_getSZ(3);
  @$pb.TagNumber(4)
  set sign($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSign() => $_has(3);
  @$pb.TagNumber(4)
  void clearSign() => clearField(4);
}

class LicensePermission extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LicensePermission', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'terminalId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'regDate')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expireDate')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateDate')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appVersion')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appVersionCode')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sign')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'note')
    ..hasRequiredFields = false
  ;

  LicensePermission._() : super();
  factory LicensePermission({
    $core.String? deviceId,
    $core.String? storeId,
    $core.String? terminalId,
    $core.String? regDate,
    $fixnum.Int64? expireDate,
    $core.String? updateDate,
    $core.String? appVersion,
    $core.String? appVersionCode,
    $core.String? sign,
    $core.String? state,
    $core.String? note,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (terminalId != null) {
      _result.terminalId = terminalId;
    }
    if (regDate != null) {
      _result.regDate = regDate;
    }
    if (expireDate != null) {
      _result.expireDate = expireDate;
    }
    if (updateDate != null) {
      _result.updateDate = updateDate;
    }
    if (appVersion != null) {
      _result.appVersion = appVersion;
    }
    if (appVersionCode != null) {
      _result.appVersionCode = appVersionCode;
    }
    if (sign != null) {
      _result.sign = sign;
    }
    if (state != null) {
      _result.state = state;
    }
    if (note != null) {
      _result.note = note;
    }
    return _result;
  }
  factory LicensePermission.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LicensePermission.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LicensePermission clone() => LicensePermission()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LicensePermission copyWith(void Function(LicensePermission) updates) => super.copyWith((message) => updates(message as LicensePermission)) as LicensePermission; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LicensePermission create() => LicensePermission._();
  LicensePermission createEmptyInstance() => create();
  static $pb.PbList<LicensePermission> createRepeated() => $pb.PbList<LicensePermission>();
  @$core.pragma('dart2js:noInline')
  static LicensePermission getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LicensePermission>(create);
  static LicensePermission? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get terminalId => $_getSZ(2);
  @$pb.TagNumber(3)
  set terminalId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTerminalId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTerminalId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get regDate => $_getSZ(3);
  @$pb.TagNumber(4)
  set regDate($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRegDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearRegDate() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get expireDate => $_getI64(4);
  @$pb.TagNumber(5)
  set expireDate($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExpireDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpireDate() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get updateDate => $_getSZ(5);
  @$pb.TagNumber(6)
  set updateDate($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdateDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get appVersion => $_getSZ(6);
  @$pb.TagNumber(7)
  set appVersion($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAppVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppVersion() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get appVersionCode => $_getSZ(7);
  @$pb.TagNumber(8)
  set appVersionCode($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAppVersionCode() => $_has(7);
  @$pb.TagNumber(8)
  void clearAppVersionCode() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get sign => $_getSZ(8);
  @$pb.TagNumber(9)
  set sign($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSign() => $_has(8);
  @$pb.TagNumber(9)
  void clearSign() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get state => $_getSZ(9);
  @$pb.TagNumber(10)
  set state($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasState() => $_has(9);
  @$pb.TagNumber(10)
  void clearState() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get note => $_getSZ(10);
  @$pb.TagNumber(11)
  set note($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasNote() => $_has(10);
  @$pb.TagNumber(11)
  void clearNote() => clearField(11);
}

class AppVersionInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppVersionInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minVer')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastVer')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isLock')
    ..hasRequiredFields = false
  ;

  AppVersionInfo._() : super();
  factory AppVersionInfo({
    $core.String? minVer,
    $core.String? lastVer,
    $core.String? isLock,
  }) {
    final _result = create();
    if (minVer != null) {
      _result.minVer = minVer;
    }
    if (lastVer != null) {
      _result.lastVer = lastVer;
    }
    if (isLock != null) {
      _result.isLock = isLock;
    }
    return _result;
  }
  factory AppVersionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppVersionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppVersionInfo clone() => AppVersionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppVersionInfo copyWith(void Function(AppVersionInfo) updates) => super.copyWith((message) => updates(message as AppVersionInfo)) as AppVersionInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppVersionInfo create() => AppVersionInfo._();
  AppVersionInfo createEmptyInstance() => create();
  static $pb.PbList<AppVersionInfo> createRepeated() => $pb.PbList<AppVersionInfo>();
  @$core.pragma('dart2js:noInline')
  static AppVersionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppVersionInfo>(create);
  static AppVersionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get minVer => $_getSZ(0);
  @$pb.TagNumber(1)
  set minVer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMinVer() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinVer() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastVer => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastVer($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastVer() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastVer() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get isLock => $_getSZ(2);
  @$pb.TagNumber(3)
  set isLock($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsLock() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsLock() => clearField(3);
}

class AppLicenseRegister extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AppLicenseRegister', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appRegId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'licenseIssuedId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceUniqueValue')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appPackageId')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'regDate')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openDate')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expireDate')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'licenseStat')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'note')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customVersionYn')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appVersionName')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appCurrentVersionCode')
    ..aOS(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appMinVersionCode')
    ..aOS(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appLastVersionCode')
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateCode')
    ..hasRequiredFields = false
  ;

  AppLicenseRegister._() : super();
  factory AppLicenseRegister({
    $core.String? appRegId,
    $core.String? licenseIssuedId,
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? deviceUniqueValue,
    $core.String? appPackageId,
    $core.String? regDate,
    $core.String? openDate,
    $fixnum.Int64? expireDate,
    $core.String? licenseStat,
    $core.String? note,
    $core.String? customVersionYn,
    $core.String? appVersionName,
    $core.String? appCurrentVersionCode,
    $core.String? appMinVersionCode,
    $core.String? appLastVersionCode,
    $core.String? stateCode,
  }) {
    final _result = create();
    if (appRegId != null) {
      _result.appRegId = appRegId;
    }
    if (licenseIssuedId != null) {
      _result.licenseIssuedId = licenseIssuedId;
    }
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (deviceUniqueValue != null) {
      _result.deviceUniqueValue = deviceUniqueValue;
    }
    if (appPackageId != null) {
      _result.appPackageId = appPackageId;
    }
    if (regDate != null) {
      _result.regDate = regDate;
    }
    if (openDate != null) {
      _result.openDate = openDate;
    }
    if (expireDate != null) {
      _result.expireDate = expireDate;
    }
    if (licenseStat != null) {
      _result.licenseStat = licenseStat;
    }
    if (note != null) {
      _result.note = note;
    }
    if (customVersionYn != null) {
      _result.customVersionYn = customVersionYn;
    }
    if (appVersionName != null) {
      _result.appVersionName = appVersionName;
    }
    if (appCurrentVersionCode != null) {
      _result.appCurrentVersionCode = appCurrentVersionCode;
    }
    if (appMinVersionCode != null) {
      _result.appMinVersionCode = appMinVersionCode;
    }
    if (appLastVersionCode != null) {
      _result.appLastVersionCode = appLastVersionCode;
    }
    if (stateCode != null) {
      _result.stateCode = stateCode;
    }
    return _result;
  }
  factory AppLicenseRegister.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppLicenseRegister.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppLicenseRegister clone() => AppLicenseRegister()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppLicenseRegister copyWith(void Function(AppLicenseRegister) updates) => super.copyWith((message) => updates(message as AppLicenseRegister)) as AppLicenseRegister; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppLicenseRegister create() => AppLicenseRegister._();
  AppLicenseRegister createEmptyInstance() => create();
  static $pb.PbList<AppLicenseRegister> createRepeated() => $pb.PbList<AppLicenseRegister>();
  @$core.pragma('dart2js:noInline')
  static AppLicenseRegister getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppLicenseRegister>(create);
  static AppLicenseRegister? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appRegId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appRegId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppRegId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppRegId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get licenseIssuedId => $_getSZ(1);
  @$pb.TagNumber(2)
  set licenseIssuedId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLicenseIssuedId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLicenseIssuedId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get storeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set storeId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStoreId() => $_has(2);
  @$pb.TagNumber(3)
  void clearStoreId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get storeTerminalId => $_getSZ(3);
  @$pb.TagNumber(4)
  set storeTerminalId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoreTerminalId() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoreTerminalId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get deviceUniqueValue => $_getSZ(4);
  @$pb.TagNumber(5)
  set deviceUniqueValue($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeviceUniqueValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeviceUniqueValue() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get appPackageId => $_getSZ(5);
  @$pb.TagNumber(6)
  set appPackageId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAppPackageId() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppPackageId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get regDate => $_getSZ(6);
  @$pb.TagNumber(7)
  set regDate($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRegDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearRegDate() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get openDate => $_getSZ(7);
  @$pb.TagNumber(8)
  set openDate($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOpenDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearOpenDate() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get expireDate => $_getI64(8);
  @$pb.TagNumber(9)
  set expireDate($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExpireDate() => $_has(8);
  @$pb.TagNumber(9)
  void clearExpireDate() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get licenseStat => $_getSZ(9);
  @$pb.TagNumber(10)
  set licenseStat($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLicenseStat() => $_has(9);
  @$pb.TagNumber(10)
  void clearLicenseStat() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get note => $_getSZ(10);
  @$pb.TagNumber(11)
  set note($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasNote() => $_has(10);
  @$pb.TagNumber(11)
  void clearNote() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get customVersionYn => $_getSZ(11);
  @$pb.TagNumber(12)
  set customVersionYn($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCustomVersionYn() => $_has(11);
  @$pb.TagNumber(12)
  void clearCustomVersionYn() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get appVersionName => $_getSZ(12);
  @$pb.TagNumber(13)
  set appVersionName($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAppVersionName() => $_has(12);
  @$pb.TagNumber(13)
  void clearAppVersionName() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get appCurrentVersionCode => $_getSZ(13);
  @$pb.TagNumber(14)
  set appCurrentVersionCode($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasAppCurrentVersionCode() => $_has(13);
  @$pb.TagNumber(14)
  void clearAppCurrentVersionCode() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get appMinVersionCode => $_getSZ(14);
  @$pb.TagNumber(15)
  set appMinVersionCode($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasAppMinVersionCode() => $_has(14);
  @$pb.TagNumber(15)
  void clearAppMinVersionCode() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get appLastVersionCode => $_getSZ(15);
  @$pb.TagNumber(16)
  set appLastVersionCode($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasAppLastVersionCode() => $_has(15);
  @$pb.TagNumber(16)
  void clearAppLastVersionCode() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get stateCode => $_getSZ(16);
  @$pb.TagNumber(17)
  set stateCode($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasStateCode() => $_has(16);
  @$pb.TagNumber(17)
  void clearStateCode() => clearField(17);
}

class IssueLicenseRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IssueLicenseRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LicenseInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'licenseInfo', subBuilder: LicenseInfo.create)
    ..hasRequiredFields = false
  ;

  IssueLicenseRequest_Content._() : super();
  factory IssueLicenseRequest_Content({
    LicenseInfo? licenseInfo,
  }) {
    final _result = create();
    if (licenseInfo != null) {
      _result.licenseInfo = licenseInfo;
    }
    return _result;
  }
  factory IssueLicenseRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IssueLicenseRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IssueLicenseRequest_Content clone() => IssueLicenseRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IssueLicenseRequest_Content copyWith(void Function(IssueLicenseRequest_Content) updates) => super.copyWith((message) => updates(message as IssueLicenseRequest_Content)) as IssueLicenseRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IssueLicenseRequest_Content create() => IssueLicenseRequest_Content._();
  IssueLicenseRequest_Content createEmptyInstance() => create();
  static $pb.PbList<IssueLicenseRequest_Content> createRepeated() => $pb.PbList<IssueLicenseRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static IssueLicenseRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IssueLicenseRequest_Content>(create);
  static IssueLicenseRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  LicenseInfo get licenseInfo => $_getN(0);
  @$pb.TagNumber(1)
  set licenseInfo(LicenseInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLicenseInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearLicenseInfo() => clearField(1);
  @$pb.TagNumber(1)
  LicenseInfo ensureLicenseInfo() => $_ensure(0);
}

class IssueLicenseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IssueLicenseRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<IssueLicenseRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: IssueLicenseRequest_Content.create)
    ..hasRequiredFields = false
  ;

  IssueLicenseRequest._() : super();
  factory IssueLicenseRequest({
    Common? common,
    IssueLicenseRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory IssueLicenseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IssueLicenseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IssueLicenseRequest clone() => IssueLicenseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IssueLicenseRequest copyWith(void Function(IssueLicenseRequest) updates) => super.copyWith((message) => updates(message as IssueLicenseRequest)) as IssueLicenseRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IssueLicenseRequest create() => IssueLicenseRequest._();
  IssueLicenseRequest createEmptyInstance() => create();
  static $pb.PbList<IssueLicenseRequest> createRepeated() => $pb.PbList<IssueLicenseRequest>();
  @$core.pragma('dart2js:noInline')
  static IssueLicenseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IssueLicenseRequest>(create);
  static IssueLicenseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  IssueLicenseRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(IssueLicenseRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  IssueLicenseRequest_Content ensureContent() => $_ensure(1);
}

class IssueLicenseResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IssueLicenseResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LicenseInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'licenseInfo', subBuilder: LicenseInfo.create)
    ..hasRequiredFields = false
  ;

  IssueLicenseResponse_Content._() : super();
  factory IssueLicenseResponse_Content({
    LicenseInfo? licenseInfo,
  }) {
    final _result = create();
    if (licenseInfo != null) {
      _result.licenseInfo = licenseInfo;
    }
    return _result;
  }
  factory IssueLicenseResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IssueLicenseResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IssueLicenseResponse_Content clone() => IssueLicenseResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IssueLicenseResponse_Content copyWith(void Function(IssueLicenseResponse_Content) updates) => super.copyWith((message) => updates(message as IssueLicenseResponse_Content)) as IssueLicenseResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IssueLicenseResponse_Content create() => IssueLicenseResponse_Content._();
  IssueLicenseResponse_Content createEmptyInstance() => create();
  static $pb.PbList<IssueLicenseResponse_Content> createRepeated() => $pb.PbList<IssueLicenseResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static IssueLicenseResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IssueLicenseResponse_Content>(create);
  static IssueLicenseResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  LicenseInfo get licenseInfo => $_getN(0);
  @$pb.TagNumber(1)
  set licenseInfo(LicenseInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLicenseInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearLicenseInfo() => clearField(1);
  @$pb.TagNumber(1)
  LicenseInfo ensureLicenseInfo() => $_ensure(0);
}

class IssueLicenseResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IssueLicenseResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<IssueLicenseResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: IssueLicenseResponse_Content.create)
    ..hasRequiredFields = false
  ;

  IssueLicenseResponse._() : super();
  factory IssueLicenseResponse({
    Common? common,
    IssueLicenseResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory IssueLicenseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IssueLicenseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IssueLicenseResponse clone() => IssueLicenseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IssueLicenseResponse copyWith(void Function(IssueLicenseResponse) updates) => super.copyWith((message) => updates(message as IssueLicenseResponse)) as IssueLicenseResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IssueLicenseResponse create() => IssueLicenseResponse._();
  IssueLicenseResponse createEmptyInstance() => create();
  static $pb.PbList<IssueLicenseResponse> createRepeated() => $pb.PbList<IssueLicenseResponse>();
  @$core.pragma('dart2js:noInline')
  static IssueLicenseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IssueLicenseResponse>(create);
  static IssueLicenseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  IssueLicenseResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(IssueLicenseResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  IssueLicenseResponse_Content ensureContent() => $_ensure(1);
}

class RequestPermissionRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestPermissionRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LicenseInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'licenseInfo', subBuilder: LicenseInfo.create)
    ..aOM<LicensePermission>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'permission', subBuilder: LicensePermission.create)
    ..hasRequiredFields = false
  ;

  RequestPermissionRequest_Content._() : super();
  factory RequestPermissionRequest_Content({
    LicenseInfo? licenseInfo,
    LicensePermission? permission,
  }) {
    final _result = create();
    if (licenseInfo != null) {
      _result.licenseInfo = licenseInfo;
    }
    if (permission != null) {
      _result.permission = permission;
    }
    return _result;
  }
  factory RequestPermissionRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestPermissionRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestPermissionRequest_Content clone() => RequestPermissionRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestPermissionRequest_Content copyWith(void Function(RequestPermissionRequest_Content) updates) => super.copyWith((message) => updates(message as RequestPermissionRequest_Content)) as RequestPermissionRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestPermissionRequest_Content create() => RequestPermissionRequest_Content._();
  RequestPermissionRequest_Content createEmptyInstance() => create();
  static $pb.PbList<RequestPermissionRequest_Content> createRepeated() => $pb.PbList<RequestPermissionRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static RequestPermissionRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestPermissionRequest_Content>(create);
  static RequestPermissionRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  LicenseInfo get licenseInfo => $_getN(0);
  @$pb.TagNumber(1)
  set licenseInfo(LicenseInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLicenseInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearLicenseInfo() => clearField(1);
  @$pb.TagNumber(1)
  LicenseInfo ensureLicenseInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  LicensePermission get permission => $_getN(1);
  @$pb.TagNumber(2)
  set permission(LicensePermission v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPermission() => $_has(1);
  @$pb.TagNumber(2)
  void clearPermission() => clearField(2);
  @$pb.TagNumber(2)
  LicensePermission ensurePermission() => $_ensure(1);
}

class RequestPermissionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestPermissionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<RequestPermissionRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: RequestPermissionRequest_Content.create)
    ..hasRequiredFields = false
  ;

  RequestPermissionRequest._() : super();
  factory RequestPermissionRequest({
    Common? common,
    RequestPermissionRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory RequestPermissionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestPermissionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestPermissionRequest clone() => RequestPermissionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestPermissionRequest copyWith(void Function(RequestPermissionRequest) updates) => super.copyWith((message) => updates(message as RequestPermissionRequest)) as RequestPermissionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestPermissionRequest create() => RequestPermissionRequest._();
  RequestPermissionRequest createEmptyInstance() => create();
  static $pb.PbList<RequestPermissionRequest> createRepeated() => $pb.PbList<RequestPermissionRequest>();
  @$core.pragma('dart2js:noInline')
  static RequestPermissionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestPermissionRequest>(create);
  static RequestPermissionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  RequestPermissionRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(RequestPermissionRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  RequestPermissionRequest_Content ensureContent() => $_ensure(1);
}

class RequestPermissionResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestPermissionResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LicenseInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'licenseInfo', subBuilder: LicenseInfo.create)
    ..aOM<LicensePermission>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'permission', subBuilder: LicensePermission.create)
    ..hasRequiredFields = false
  ;

  RequestPermissionResponse_Content._() : super();
  factory RequestPermissionResponse_Content({
    LicenseInfo? licenseInfo,
    LicensePermission? permission,
  }) {
    final _result = create();
    if (licenseInfo != null) {
      _result.licenseInfo = licenseInfo;
    }
    if (permission != null) {
      _result.permission = permission;
    }
    return _result;
  }
  factory RequestPermissionResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestPermissionResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestPermissionResponse_Content clone() => RequestPermissionResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestPermissionResponse_Content copyWith(void Function(RequestPermissionResponse_Content) updates) => super.copyWith((message) => updates(message as RequestPermissionResponse_Content)) as RequestPermissionResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestPermissionResponse_Content create() => RequestPermissionResponse_Content._();
  RequestPermissionResponse_Content createEmptyInstance() => create();
  static $pb.PbList<RequestPermissionResponse_Content> createRepeated() => $pb.PbList<RequestPermissionResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static RequestPermissionResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestPermissionResponse_Content>(create);
  static RequestPermissionResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  LicenseInfo get licenseInfo => $_getN(0);
  @$pb.TagNumber(1)
  set licenseInfo(LicenseInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLicenseInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearLicenseInfo() => clearField(1);
  @$pb.TagNumber(1)
  LicenseInfo ensureLicenseInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  LicensePermission get permission => $_getN(1);
  @$pb.TagNumber(2)
  set permission(LicensePermission v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPermission() => $_has(1);
  @$pb.TagNumber(2)
  void clearPermission() => clearField(2);
  @$pb.TagNumber(2)
  LicensePermission ensurePermission() => $_ensure(1);
}

class RequestPermissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestPermissionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<RequestPermissionResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: RequestPermissionResponse_Content.create)
    ..hasRequiredFields = false
  ;

  RequestPermissionResponse._() : super();
  factory RequestPermissionResponse({
    Common? common,
    RequestPermissionResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory RequestPermissionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestPermissionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestPermissionResponse clone() => RequestPermissionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestPermissionResponse copyWith(void Function(RequestPermissionResponse) updates) => super.copyWith((message) => updates(message as RequestPermissionResponse)) as RequestPermissionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestPermissionResponse create() => RequestPermissionResponse._();
  RequestPermissionResponse createEmptyInstance() => create();
  static $pb.PbList<RequestPermissionResponse> createRepeated() => $pb.PbList<RequestPermissionResponse>();
  @$core.pragma('dart2js:noInline')
  static RequestPermissionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestPermissionResponse>(create);
  static RequestPermissionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  RequestPermissionResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(RequestPermissionResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  RequestPermissionResponse_Content ensureContent() => $_ensure(1);
}

class ConfirmPermissionRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfirmPermissionRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LicenseInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'licenseInfo', subBuilder: LicenseInfo.create)
    ..aOM<LicensePermission>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'permission', subBuilder: LicensePermission.create)
    ..hasRequiredFields = false
  ;

  ConfirmPermissionRequest_Content._() : super();
  factory ConfirmPermissionRequest_Content({
    LicenseInfo? licenseInfo,
    LicensePermission? permission,
  }) {
    final _result = create();
    if (licenseInfo != null) {
      _result.licenseInfo = licenseInfo;
    }
    if (permission != null) {
      _result.permission = permission;
    }
    return _result;
  }
  factory ConfirmPermissionRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfirmPermissionRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfirmPermissionRequest_Content clone() => ConfirmPermissionRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfirmPermissionRequest_Content copyWith(void Function(ConfirmPermissionRequest_Content) updates) => super.copyWith((message) => updates(message as ConfirmPermissionRequest_Content)) as ConfirmPermissionRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfirmPermissionRequest_Content create() => ConfirmPermissionRequest_Content._();
  ConfirmPermissionRequest_Content createEmptyInstance() => create();
  static $pb.PbList<ConfirmPermissionRequest_Content> createRepeated() => $pb.PbList<ConfirmPermissionRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static ConfirmPermissionRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfirmPermissionRequest_Content>(create);
  static ConfirmPermissionRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  LicenseInfo get licenseInfo => $_getN(0);
  @$pb.TagNumber(1)
  set licenseInfo(LicenseInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLicenseInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearLicenseInfo() => clearField(1);
  @$pb.TagNumber(1)
  LicenseInfo ensureLicenseInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  LicensePermission get permission => $_getN(1);
  @$pb.TagNumber(2)
  set permission(LicensePermission v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPermission() => $_has(1);
  @$pb.TagNumber(2)
  void clearPermission() => clearField(2);
  @$pb.TagNumber(2)
  LicensePermission ensurePermission() => $_ensure(1);
}

class ConfirmPermissionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfirmPermissionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<ConfirmPermissionRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: ConfirmPermissionRequest_Content.create)
    ..hasRequiredFields = false
  ;

  ConfirmPermissionRequest._() : super();
  factory ConfirmPermissionRequest({
    Common? common,
    ConfirmPermissionRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ConfirmPermissionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfirmPermissionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfirmPermissionRequest clone() => ConfirmPermissionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfirmPermissionRequest copyWith(void Function(ConfirmPermissionRequest) updates) => super.copyWith((message) => updates(message as ConfirmPermissionRequest)) as ConfirmPermissionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfirmPermissionRequest create() => ConfirmPermissionRequest._();
  ConfirmPermissionRequest createEmptyInstance() => create();
  static $pb.PbList<ConfirmPermissionRequest> createRepeated() => $pb.PbList<ConfirmPermissionRequest>();
  @$core.pragma('dart2js:noInline')
  static ConfirmPermissionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfirmPermissionRequest>(create);
  static ConfirmPermissionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  ConfirmPermissionRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(ConfirmPermissionRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  ConfirmPermissionRequest_Content ensureContent() => $_ensure(1);
}

class ConfirmPermissionResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfirmPermissionResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LicenseInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'licenseInfo', subBuilder: LicenseInfo.create)
    ..aOM<LicensePermission>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'permission', subBuilder: LicensePermission.create)
    ..hasRequiredFields = false
  ;

  ConfirmPermissionResponse_Content._() : super();
  factory ConfirmPermissionResponse_Content({
    LicenseInfo? licenseInfo,
    LicensePermission? permission,
  }) {
    final _result = create();
    if (licenseInfo != null) {
      _result.licenseInfo = licenseInfo;
    }
    if (permission != null) {
      _result.permission = permission;
    }
    return _result;
  }
  factory ConfirmPermissionResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfirmPermissionResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfirmPermissionResponse_Content clone() => ConfirmPermissionResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfirmPermissionResponse_Content copyWith(void Function(ConfirmPermissionResponse_Content) updates) => super.copyWith((message) => updates(message as ConfirmPermissionResponse_Content)) as ConfirmPermissionResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfirmPermissionResponse_Content create() => ConfirmPermissionResponse_Content._();
  ConfirmPermissionResponse_Content createEmptyInstance() => create();
  static $pb.PbList<ConfirmPermissionResponse_Content> createRepeated() => $pb.PbList<ConfirmPermissionResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static ConfirmPermissionResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfirmPermissionResponse_Content>(create);
  static ConfirmPermissionResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  LicenseInfo get licenseInfo => $_getN(0);
  @$pb.TagNumber(1)
  set licenseInfo(LicenseInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLicenseInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearLicenseInfo() => clearField(1);
  @$pb.TagNumber(1)
  LicenseInfo ensureLicenseInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  LicensePermission get permission => $_getN(1);
  @$pb.TagNumber(2)
  set permission(LicensePermission v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPermission() => $_has(1);
  @$pb.TagNumber(2)
  void clearPermission() => clearField(2);
  @$pb.TagNumber(2)
  LicensePermission ensurePermission() => $_ensure(1);
}

class ConfirmPermissionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfirmPermissionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<ConfirmPermissionResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: ConfirmPermissionResponse_Content.create)
    ..hasRequiredFields = false
  ;

  ConfirmPermissionResponse._() : super();
  factory ConfirmPermissionResponse({
    Common? common,
    ConfirmPermissionResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ConfirmPermissionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfirmPermissionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfirmPermissionResponse clone() => ConfirmPermissionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfirmPermissionResponse copyWith(void Function(ConfirmPermissionResponse) updates) => super.copyWith((message) => updates(message as ConfirmPermissionResponse)) as ConfirmPermissionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfirmPermissionResponse create() => ConfirmPermissionResponse._();
  ConfirmPermissionResponse createEmptyInstance() => create();
  static $pb.PbList<ConfirmPermissionResponse> createRepeated() => $pb.PbList<ConfirmPermissionResponse>();
  @$core.pragma('dart2js:noInline')
  static ConfirmPermissionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfirmPermissionResponse>(create);
  static ConfirmPermissionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  ConfirmPermissionResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(ConfirmPermissionResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  ConfirmPermissionResponse_Content ensureContent() => $_ensure(1);
}

class VerifyLicenseRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyLicenseRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LicenseInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'licenseInfo', subBuilder: LicenseInfo.create)
    ..aOM<LicensePermission>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'permission', subBuilder: LicensePermission.create)
    ..aOM<AppVersionInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appVerInfo', subBuilder: AppVersionInfo.create)
    ..hasRequiredFields = false
  ;

  VerifyLicenseRequest_Content._() : super();
  factory VerifyLicenseRequest_Content({
    LicenseInfo? licenseInfo,
    LicensePermission? permission,
    AppVersionInfo? appVerInfo,
  }) {
    final _result = create();
    if (licenseInfo != null) {
      _result.licenseInfo = licenseInfo;
    }
    if (permission != null) {
      _result.permission = permission;
    }
    if (appVerInfo != null) {
      _result.appVerInfo = appVerInfo;
    }
    return _result;
  }
  factory VerifyLicenseRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyLicenseRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyLicenseRequest_Content clone() => VerifyLicenseRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyLicenseRequest_Content copyWith(void Function(VerifyLicenseRequest_Content) updates) => super.copyWith((message) => updates(message as VerifyLicenseRequest_Content)) as VerifyLicenseRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyLicenseRequest_Content create() => VerifyLicenseRequest_Content._();
  VerifyLicenseRequest_Content createEmptyInstance() => create();
  static $pb.PbList<VerifyLicenseRequest_Content> createRepeated() => $pb.PbList<VerifyLicenseRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static VerifyLicenseRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyLicenseRequest_Content>(create);
  static VerifyLicenseRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  LicenseInfo get licenseInfo => $_getN(0);
  @$pb.TagNumber(1)
  set licenseInfo(LicenseInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLicenseInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearLicenseInfo() => clearField(1);
  @$pb.TagNumber(1)
  LicenseInfo ensureLicenseInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  LicensePermission get permission => $_getN(1);
  @$pb.TagNumber(2)
  set permission(LicensePermission v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPermission() => $_has(1);
  @$pb.TagNumber(2)
  void clearPermission() => clearField(2);
  @$pb.TagNumber(2)
  LicensePermission ensurePermission() => $_ensure(1);

  @$pb.TagNumber(3)
  AppVersionInfo get appVerInfo => $_getN(2);
  @$pb.TagNumber(3)
  set appVerInfo(AppVersionInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppVerInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppVerInfo() => clearField(3);
  @$pb.TagNumber(3)
  AppVersionInfo ensureAppVerInfo() => $_ensure(2);
}

class VerifyLicenseRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyLicenseRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<VerifyLicenseRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: VerifyLicenseRequest_Content.create)
    ..hasRequiredFields = false
  ;

  VerifyLicenseRequest._() : super();
  factory VerifyLicenseRequest({
    Common? common,
    VerifyLicenseRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory VerifyLicenseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyLicenseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyLicenseRequest clone() => VerifyLicenseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyLicenseRequest copyWith(void Function(VerifyLicenseRequest) updates) => super.copyWith((message) => updates(message as VerifyLicenseRequest)) as VerifyLicenseRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyLicenseRequest create() => VerifyLicenseRequest._();
  VerifyLicenseRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyLicenseRequest> createRepeated() => $pb.PbList<VerifyLicenseRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyLicenseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyLicenseRequest>(create);
  static VerifyLicenseRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  VerifyLicenseRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(VerifyLicenseRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  VerifyLicenseRequest_Content ensureContent() => $_ensure(1);
}

class VerifyLicenseResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyLicenseResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<LicenseInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'licenseInfo', subBuilder: LicenseInfo.create)
    ..aOM<LicensePermission>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'permission', subBuilder: LicensePermission.create)
    ..aOM<AppVersionInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appVerInfo', subBuilder: AppVersionInfo.create)
    ..hasRequiredFields = false
  ;

  VerifyLicenseResponse_Content._() : super();
  factory VerifyLicenseResponse_Content({
    LicenseInfo? licenseInfo,
    LicensePermission? permission,
    AppVersionInfo? appVerInfo,
  }) {
    final _result = create();
    if (licenseInfo != null) {
      _result.licenseInfo = licenseInfo;
    }
    if (permission != null) {
      _result.permission = permission;
    }
    if (appVerInfo != null) {
      _result.appVerInfo = appVerInfo;
    }
    return _result;
  }
  factory VerifyLicenseResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyLicenseResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyLicenseResponse_Content clone() => VerifyLicenseResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyLicenseResponse_Content copyWith(void Function(VerifyLicenseResponse_Content) updates) => super.copyWith((message) => updates(message as VerifyLicenseResponse_Content)) as VerifyLicenseResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyLicenseResponse_Content create() => VerifyLicenseResponse_Content._();
  VerifyLicenseResponse_Content createEmptyInstance() => create();
  static $pb.PbList<VerifyLicenseResponse_Content> createRepeated() => $pb.PbList<VerifyLicenseResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static VerifyLicenseResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyLicenseResponse_Content>(create);
  static VerifyLicenseResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  LicenseInfo get licenseInfo => $_getN(0);
  @$pb.TagNumber(1)
  set licenseInfo(LicenseInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLicenseInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearLicenseInfo() => clearField(1);
  @$pb.TagNumber(1)
  LicenseInfo ensureLicenseInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  LicensePermission get permission => $_getN(1);
  @$pb.TagNumber(2)
  set permission(LicensePermission v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPermission() => $_has(1);
  @$pb.TagNumber(2)
  void clearPermission() => clearField(2);
  @$pb.TagNumber(2)
  LicensePermission ensurePermission() => $_ensure(1);

  @$pb.TagNumber(3)
  AppVersionInfo get appVerInfo => $_getN(2);
  @$pb.TagNumber(3)
  set appVerInfo(AppVersionInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppVerInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppVerInfo() => clearField(3);
  @$pb.TagNumber(3)
  AppVersionInfo ensureAppVerInfo() => $_ensure(2);
}

class VerifyLicenseResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyLicenseResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<VerifyLicenseResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: VerifyLicenseResponse_Content.create)
    ..hasRequiredFields = false
  ;

  VerifyLicenseResponse._() : super();
  factory VerifyLicenseResponse({
    Common? common,
    VerifyLicenseResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory VerifyLicenseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyLicenseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyLicenseResponse clone() => VerifyLicenseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyLicenseResponse copyWith(void Function(VerifyLicenseResponse) updates) => super.copyWith((message) => updates(message as VerifyLicenseResponse)) as VerifyLicenseResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyLicenseResponse create() => VerifyLicenseResponse._();
  VerifyLicenseResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyLicenseResponse> createRepeated() => $pb.PbList<VerifyLicenseResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyLicenseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyLicenseResponse>(create);
  static VerifyLicenseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  VerifyLicenseResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(VerifyLicenseResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  VerifyLicenseResponse_Content ensureContent() => $_ensure(1);
}

class GetLicenseListRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLicenseListRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'page', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderStoreId', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderAppPackageId', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderOpenDate', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderExpireDate', $pb.PbFieldType.O3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderLicenseStat', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetLicenseListRequest_Content._() : super();
  factory GetLicenseListRequest_Content({
    $core.String? storeId,
    $core.int? page,
    $core.int? limit,
    $core.int? orderStoreId,
    $core.int? orderAppPackageId,
    $core.int? orderOpenDate,
    $core.int? orderExpireDate,
    $core.int? orderLicenseStat,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (page != null) {
      _result.page = page;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (orderStoreId != null) {
      _result.orderStoreId = orderStoreId;
    }
    if (orderAppPackageId != null) {
      _result.orderAppPackageId = orderAppPackageId;
    }
    if (orderOpenDate != null) {
      _result.orderOpenDate = orderOpenDate;
    }
    if (orderExpireDate != null) {
      _result.orderExpireDate = orderExpireDate;
    }
    if (orderLicenseStat != null) {
      _result.orderLicenseStat = orderLicenseStat;
    }
    return _result;
  }
  factory GetLicenseListRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLicenseListRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLicenseListRequest_Content clone() => GetLicenseListRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLicenseListRequest_Content copyWith(void Function(GetLicenseListRequest_Content) updates) => super.copyWith((message) => updates(message as GetLicenseListRequest_Content)) as GetLicenseListRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLicenseListRequest_Content create() => GetLicenseListRequest_Content._();
  GetLicenseListRequest_Content createEmptyInstance() => create();
  static $pb.PbList<GetLicenseListRequest_Content> createRepeated() => $pb.PbList<GetLicenseListRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static GetLicenseListRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLicenseListRequest_Content>(create);
  static GetLicenseListRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get orderStoreId => $_getIZ(3);
  @$pb.TagNumber(4)
  set orderStoreId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrderStoreId() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrderStoreId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get orderAppPackageId => $_getIZ(4);
  @$pb.TagNumber(5)
  set orderAppPackageId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrderAppPackageId() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrderAppPackageId() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get orderOpenDate => $_getIZ(5);
  @$pb.TagNumber(6)
  set orderOpenDate($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOrderOpenDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearOrderOpenDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get orderExpireDate => $_getIZ(6);
  @$pb.TagNumber(7)
  set orderExpireDate($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOrderExpireDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearOrderExpireDate() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get orderLicenseStat => $_getIZ(7);
  @$pb.TagNumber(8)
  set orderLicenseStat($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOrderLicenseStat() => $_has(7);
  @$pb.TagNumber(8)
  void clearOrderLicenseStat() => clearField(8);
}

class GetLicenseListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLicenseListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<GetLicenseListRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: GetLicenseListRequest_Content.create)
    ..hasRequiredFields = false
  ;

  GetLicenseListRequest._() : super();
  factory GetLicenseListRequest({
    Common? common,
    GetLicenseListRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory GetLicenseListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLicenseListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLicenseListRequest clone() => GetLicenseListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLicenseListRequest copyWith(void Function(GetLicenseListRequest) updates) => super.copyWith((message) => updates(message as GetLicenseListRequest)) as GetLicenseListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLicenseListRequest create() => GetLicenseListRequest._();
  GetLicenseListRequest createEmptyInstance() => create();
  static $pb.PbList<GetLicenseListRequest> createRepeated() => $pb.PbList<GetLicenseListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLicenseListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLicenseListRequest>(create);
  static GetLicenseListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  GetLicenseListRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(GetLicenseListRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  GetLicenseListRequest_Content ensureContent() => $_ensure(1);
}

class GetLicenseListResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLicenseListResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..pc<AppLicenseRegister>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'item', $pb.PbFieldType.PM, subBuilder: AppLicenseRegister.create)
    ..hasRequiredFields = false
  ;

  GetLicenseListResponse_Content._() : super();
  factory GetLicenseListResponse_Content({
    $core.Iterable<AppLicenseRegister>? item,
  }) {
    final _result = create();
    if (item != null) {
      _result.item.addAll(item);
    }
    return _result;
  }
  factory GetLicenseListResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLicenseListResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLicenseListResponse_Content clone() => GetLicenseListResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLicenseListResponse_Content copyWith(void Function(GetLicenseListResponse_Content) updates) => super.copyWith((message) => updates(message as GetLicenseListResponse_Content)) as GetLicenseListResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLicenseListResponse_Content create() => GetLicenseListResponse_Content._();
  GetLicenseListResponse_Content createEmptyInstance() => create();
  static $pb.PbList<GetLicenseListResponse_Content> createRepeated() => $pb.PbList<GetLicenseListResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static GetLicenseListResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLicenseListResponse_Content>(create);
  static GetLicenseListResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AppLicenseRegister> get item => $_getList(0);
}

class GetLicenseListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLicenseListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<GetLicenseListResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: GetLicenseListResponse_Content.create)
    ..hasRequiredFields = false
  ;

  GetLicenseListResponse._() : super();
  factory GetLicenseListResponse({
    Common? common,
    GetLicenseListResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory GetLicenseListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLicenseListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLicenseListResponse clone() => GetLicenseListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLicenseListResponse copyWith(void Function(GetLicenseListResponse) updates) => super.copyWith((message) => updates(message as GetLicenseListResponse)) as GetLicenseListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLicenseListResponse create() => GetLicenseListResponse._();
  GetLicenseListResponse createEmptyInstance() => create();
  static $pb.PbList<GetLicenseListResponse> createRepeated() => $pb.PbList<GetLicenseListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLicenseListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLicenseListResponse>(create);
  static GetLicenseListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  GetLicenseListResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(GetLicenseListResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  GetLicenseListResponse_Content ensureContent() => $_ensure(1);
}

class GetLicenseDetailRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLicenseDetailRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appRegId')
    ..hasRequiredFields = false
  ;

  GetLicenseDetailRequest_Content._() : super();
  factory GetLicenseDetailRequest_Content({
    $core.String? storeId,
    $core.String? appRegId,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (appRegId != null) {
      _result.appRegId = appRegId;
    }
    return _result;
  }
  factory GetLicenseDetailRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLicenseDetailRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLicenseDetailRequest_Content clone() => GetLicenseDetailRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLicenseDetailRequest_Content copyWith(void Function(GetLicenseDetailRequest_Content) updates) => super.copyWith((message) => updates(message as GetLicenseDetailRequest_Content)) as GetLicenseDetailRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLicenseDetailRequest_Content create() => GetLicenseDetailRequest_Content._();
  GetLicenseDetailRequest_Content createEmptyInstance() => create();
  static $pb.PbList<GetLicenseDetailRequest_Content> createRepeated() => $pb.PbList<GetLicenseDetailRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static GetLicenseDetailRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLicenseDetailRequest_Content>(create);
  static GetLicenseDetailRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appRegId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appRegId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppRegId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppRegId() => clearField(2);
}

class GetLicenseDetailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLicenseDetailRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<GetLicenseDetailRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: GetLicenseDetailRequest_Content.create)
    ..hasRequiredFields = false
  ;

  GetLicenseDetailRequest._() : super();
  factory GetLicenseDetailRequest({
    Common? common,
    GetLicenseDetailRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory GetLicenseDetailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLicenseDetailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLicenseDetailRequest clone() => GetLicenseDetailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLicenseDetailRequest copyWith(void Function(GetLicenseDetailRequest) updates) => super.copyWith((message) => updates(message as GetLicenseDetailRequest)) as GetLicenseDetailRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLicenseDetailRequest create() => GetLicenseDetailRequest._();
  GetLicenseDetailRequest createEmptyInstance() => create();
  static $pb.PbList<GetLicenseDetailRequest> createRepeated() => $pb.PbList<GetLicenseDetailRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLicenseDetailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLicenseDetailRequest>(create);
  static GetLicenseDetailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  GetLicenseDetailRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(GetLicenseDetailRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  GetLicenseDetailRequest_Content ensureContent() => $_ensure(1);
}

class GetLicenseDetailResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLicenseDetailResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<AppLicenseRegister>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'item', subBuilder: AppLicenseRegister.create)
    ..hasRequiredFields = false
  ;

  GetLicenseDetailResponse_Content._() : super();
  factory GetLicenseDetailResponse_Content({
    AppLicenseRegister? item,
  }) {
    final _result = create();
    if (item != null) {
      _result.item = item;
    }
    return _result;
  }
  factory GetLicenseDetailResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLicenseDetailResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLicenseDetailResponse_Content clone() => GetLicenseDetailResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLicenseDetailResponse_Content copyWith(void Function(GetLicenseDetailResponse_Content) updates) => super.copyWith((message) => updates(message as GetLicenseDetailResponse_Content)) as GetLicenseDetailResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLicenseDetailResponse_Content create() => GetLicenseDetailResponse_Content._();
  GetLicenseDetailResponse_Content createEmptyInstance() => create();
  static $pb.PbList<GetLicenseDetailResponse_Content> createRepeated() => $pb.PbList<GetLicenseDetailResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static GetLicenseDetailResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLicenseDetailResponse_Content>(create);
  static GetLicenseDetailResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  AppLicenseRegister get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(AppLicenseRegister v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  AppLicenseRegister ensureItem() => $_ensure(0);
}

class GetLicenseDetailResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLicenseDetailResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<GetLicenseDetailResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: GetLicenseDetailResponse_Content.create)
    ..hasRequiredFields = false
  ;

  GetLicenseDetailResponse._() : super();
  factory GetLicenseDetailResponse({
    Common? common,
    GetLicenseDetailResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory GetLicenseDetailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLicenseDetailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLicenseDetailResponse clone() => GetLicenseDetailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLicenseDetailResponse copyWith(void Function(GetLicenseDetailResponse) updates) => super.copyWith((message) => updates(message as GetLicenseDetailResponse)) as GetLicenseDetailResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLicenseDetailResponse create() => GetLicenseDetailResponse._();
  GetLicenseDetailResponse createEmptyInstance() => create();
  static $pb.PbList<GetLicenseDetailResponse> createRepeated() => $pb.PbList<GetLicenseDetailResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLicenseDetailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLicenseDetailResponse>(create);
  static GetLicenseDetailResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  GetLicenseDetailResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(GetLicenseDetailResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  GetLicenseDetailResponse_Content ensureContent() => $_ensure(1);
}

class UpdateLicenseInfoRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateLicenseInfoRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appRegId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expireDate')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'licenseStat')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'note')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customVersionYn')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appVersionName')
    ..hasRequiredFields = false
  ;

  UpdateLicenseInfoRequest_Content._() : super();
  factory UpdateLicenseInfoRequest_Content({
    $core.String? storeId,
    $core.String? appRegId,
    $fixnum.Int64? expireDate,
    $core.String? licenseStat,
    $core.String? note,
    $core.String? customVersionYn,
    $core.String? appVersionName,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (appRegId != null) {
      _result.appRegId = appRegId;
    }
    if (expireDate != null) {
      _result.expireDate = expireDate;
    }
    if (licenseStat != null) {
      _result.licenseStat = licenseStat;
    }
    if (note != null) {
      _result.note = note;
    }
    if (customVersionYn != null) {
      _result.customVersionYn = customVersionYn;
    }
    if (appVersionName != null) {
      _result.appVersionName = appVersionName;
    }
    return _result;
  }
  factory UpdateLicenseInfoRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateLicenseInfoRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateLicenseInfoRequest_Content clone() => UpdateLicenseInfoRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateLicenseInfoRequest_Content copyWith(void Function(UpdateLicenseInfoRequest_Content) updates) => super.copyWith((message) => updates(message as UpdateLicenseInfoRequest_Content)) as UpdateLicenseInfoRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateLicenseInfoRequest_Content create() => UpdateLicenseInfoRequest_Content._();
  UpdateLicenseInfoRequest_Content createEmptyInstance() => create();
  static $pb.PbList<UpdateLicenseInfoRequest_Content> createRepeated() => $pb.PbList<UpdateLicenseInfoRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static UpdateLicenseInfoRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateLicenseInfoRequest_Content>(create);
  static UpdateLicenseInfoRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appRegId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appRegId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppRegId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppRegId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get expireDate => $_getI64(2);
  @$pb.TagNumber(3)
  set expireDate($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpireDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpireDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get licenseStat => $_getSZ(3);
  @$pb.TagNumber(4)
  set licenseStat($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLicenseStat() => $_has(3);
  @$pb.TagNumber(4)
  void clearLicenseStat() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get note => $_getSZ(4);
  @$pb.TagNumber(5)
  set note($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNote() => $_has(4);
  @$pb.TagNumber(5)
  void clearNote() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get customVersionYn => $_getSZ(5);
  @$pb.TagNumber(6)
  set customVersionYn($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCustomVersionYn() => $_has(5);
  @$pb.TagNumber(6)
  void clearCustomVersionYn() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get appVersionName => $_getSZ(6);
  @$pb.TagNumber(7)
  set appVersionName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAppVersionName() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppVersionName() => clearField(7);
}

class UpdateLicenseInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateLicenseInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<UpdateLicenseInfoRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: UpdateLicenseInfoRequest_Content.create)
    ..hasRequiredFields = false
  ;

  UpdateLicenseInfoRequest._() : super();
  factory UpdateLicenseInfoRequest({
    Common? common,
    UpdateLicenseInfoRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory UpdateLicenseInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateLicenseInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateLicenseInfoRequest clone() => UpdateLicenseInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateLicenseInfoRequest copyWith(void Function(UpdateLicenseInfoRequest) updates) => super.copyWith((message) => updates(message as UpdateLicenseInfoRequest)) as UpdateLicenseInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateLicenseInfoRequest create() => UpdateLicenseInfoRequest._();
  UpdateLicenseInfoRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateLicenseInfoRequest> createRepeated() => $pb.PbList<UpdateLicenseInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateLicenseInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateLicenseInfoRequest>(create);
  static UpdateLicenseInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateLicenseInfoRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(UpdateLicenseInfoRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  UpdateLicenseInfoRequest_Content ensureContent() => $_ensure(1);
}

class UpdateLicenseInfoResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateLicenseInfoResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<AppLicenseRegister>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'item', subBuilder: AppLicenseRegister.create)
    ..hasRequiredFields = false
  ;

  UpdateLicenseInfoResponse_Content._() : super();
  factory UpdateLicenseInfoResponse_Content({
    AppLicenseRegister? item,
  }) {
    final _result = create();
    if (item != null) {
      _result.item = item;
    }
    return _result;
  }
  factory UpdateLicenseInfoResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateLicenseInfoResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateLicenseInfoResponse_Content clone() => UpdateLicenseInfoResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateLicenseInfoResponse_Content copyWith(void Function(UpdateLicenseInfoResponse_Content) updates) => super.copyWith((message) => updates(message as UpdateLicenseInfoResponse_Content)) as UpdateLicenseInfoResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateLicenseInfoResponse_Content create() => UpdateLicenseInfoResponse_Content._();
  UpdateLicenseInfoResponse_Content createEmptyInstance() => create();
  static $pb.PbList<UpdateLicenseInfoResponse_Content> createRepeated() => $pb.PbList<UpdateLicenseInfoResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static UpdateLicenseInfoResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateLicenseInfoResponse_Content>(create);
  static UpdateLicenseInfoResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  AppLicenseRegister get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(AppLicenseRegister v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => clearField(1);
  @$pb.TagNumber(1)
  AppLicenseRegister ensureItem() => $_ensure(0);
}

class UpdateLicenseInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateLicenseInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<UpdateLicenseInfoResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: UpdateLicenseInfoResponse_Content.create)
    ..hasRequiredFields = false
  ;

  UpdateLicenseInfoResponse._() : super();
  factory UpdateLicenseInfoResponse({
    Common? common,
    UpdateLicenseInfoResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory UpdateLicenseInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateLicenseInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateLicenseInfoResponse clone() => UpdateLicenseInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateLicenseInfoResponse copyWith(void Function(UpdateLicenseInfoResponse) updates) => super.copyWith((message) => updates(message as UpdateLicenseInfoResponse)) as UpdateLicenseInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateLicenseInfoResponse create() => UpdateLicenseInfoResponse._();
  UpdateLicenseInfoResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateLicenseInfoResponse> createRepeated() => $pb.PbList<UpdateLicenseInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateLicenseInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateLicenseInfoResponse>(create);
  static UpdateLicenseInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateLicenseInfoResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(UpdateLicenseInfoResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  UpdateLicenseInfoResponse_Content ensureContent() => $_ensure(1);
}

class TableLock_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TableLock.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientType')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalGroupId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tableId')
    ..hasRequiredFields = false
  ;

  TableLock_Content._() : super();
  factory TableLock_Content({
    $core.String? clientType,
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? storeTerminalGroupId,
    $core.String? tableId,
  }) {
    final _result = create();
    if (clientType != null) {
      _result.clientType = clientType;
    }
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (storeTerminalGroupId != null) {
      _result.storeTerminalGroupId = storeTerminalGroupId;
    }
    if (tableId != null) {
      _result.tableId = tableId;
    }
    return _result;
  }
  factory TableLock_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TableLock_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TableLock_Content clone() => TableLock_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TableLock_Content copyWith(void Function(TableLock_Content) updates) => super.copyWith((message) => updates(message as TableLock_Content)) as TableLock_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TableLock_Content create() => TableLock_Content._();
  TableLock_Content createEmptyInstance() => create();
  static $pb.PbList<TableLock_Content> createRepeated() => $pb.PbList<TableLock_Content>();
  @$core.pragma('dart2js:noInline')
  static TableLock_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TableLock_Content>(create);
  static TableLock_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientType => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientType() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get storeTerminalId => $_getSZ(2);
  @$pb.TagNumber(3)
  set storeTerminalId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStoreTerminalId() => $_has(2);
  @$pb.TagNumber(3)
  void clearStoreTerminalId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get storeTerminalGroupId => $_getSZ(3);
  @$pb.TagNumber(4)
  set storeTerminalGroupId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoreTerminalGroupId() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoreTerminalGroupId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get tableId => $_getSZ(4);
  @$pb.TagNumber(5)
  set tableId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTableId() => $_has(4);
  @$pb.TagNumber(5)
  void clearTableId() => clearField(5);
}

class TableLock extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TableLock', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<TableLock_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: TableLock_Content.create)
    ..hasRequiredFields = false
  ;

  TableLock._() : super();
  factory TableLock({
    Common? common,
    TableLock_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory TableLock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TableLock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TableLock clone() => TableLock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TableLock copyWith(void Function(TableLock) updates) => super.copyWith((message) => updates(message as TableLock)) as TableLock; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TableLock create() => TableLock._();
  TableLock createEmptyInstance() => create();
  static $pb.PbList<TableLock> createRepeated() => $pb.PbList<TableLock>();
  @$core.pragma('dart2js:noInline')
  static TableLock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TableLock>(create);
  static TableLock? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  TableLock_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(TableLock_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  TableLock_Content ensureContent() => $_ensure(1);
}

class OrderData_Order extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderData.Order', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<$2.OrderHistory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderHistory', subBuilder: $2.OrderHistory.create)
    ..pc<$2.OrderHistoryItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderHistoryItem', $pb.PbFieldType.PM, subBuilder: $2.OrderHistoryItem.create)
    ..pc<$2.OrderHistoryKitchenMemo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderHistoryKitchenMemo', $pb.PbFieldType.PM, subBuilder: $2.OrderHistoryKitchenMemo.create)
    ..pc<$2.OrderHistoryDiscount>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orderHistoryDiscount', $pb.PbFieldType.PM, subBuilder: $2.OrderHistoryDiscount.create)
    ..hasRequiredFields = false
  ;

  OrderData_Order._() : super();
  factory OrderData_Order({
    $2.OrderHistory? orderHistory,
    $core.Iterable<$2.OrderHistoryItem>? orderHistoryItem,
    $core.Iterable<$2.OrderHistoryKitchenMemo>? orderHistoryKitchenMemo,
    $core.Iterable<$2.OrderHistoryDiscount>? orderHistoryDiscount,
  }) {
    final _result = create();
    if (orderHistory != null) {
      _result.orderHistory = orderHistory;
    }
    if (orderHistoryItem != null) {
      _result.orderHistoryItem.addAll(orderHistoryItem);
    }
    if (orderHistoryKitchenMemo != null) {
      _result.orderHistoryKitchenMemo.addAll(orderHistoryKitchenMemo);
    }
    if (orderHistoryDiscount != null) {
      _result.orderHistoryDiscount.addAll(orderHistoryDiscount);
    }
    return _result;
  }
  factory OrderData_Order.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderData_Order.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderData_Order clone() => OrderData_Order()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderData_Order copyWith(void Function(OrderData_Order) updates) => super.copyWith((message) => updates(message as OrderData_Order)) as OrderData_Order; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderData_Order create() => OrderData_Order._();
  OrderData_Order createEmptyInstance() => create();
  static $pb.PbList<OrderData_Order> createRepeated() => $pb.PbList<OrderData_Order>();
  @$core.pragma('dart2js:noInline')
  static OrderData_Order getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderData_Order>(create);
  static OrderData_Order? _defaultInstance;

  @$pb.TagNumber(1)
  $2.OrderHistory get orderHistory => $_getN(0);
  @$pb.TagNumber(1)
  set orderHistory($2.OrderHistory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrderHistory() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrderHistory() => clearField(1);
  @$pb.TagNumber(1)
  $2.OrderHistory ensureOrderHistory() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$2.OrderHistoryItem> get orderHistoryItem => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$2.OrderHistoryKitchenMemo> get orderHistoryKitchenMemo => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$2.OrderHistoryDiscount> get orderHistoryDiscount => $_getList(3);
}

class OrderData_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderData.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'clientType')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalGroupId')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isDelete')
    ..pc<OrderData_Order>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orders', $pb.PbFieldType.PM, subBuilder: OrderData_Order.create)
    ..hasRequiredFields = false
  ;

  OrderData_Content._() : super();
  factory OrderData_Content({
    $core.String? clientType,
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? storeTerminalGroupId,
    $core.bool? isDelete,
    $core.Iterable<OrderData_Order>? orders,
  }) {
    final _result = create();
    if (clientType != null) {
      _result.clientType = clientType;
    }
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (storeTerminalGroupId != null) {
      _result.storeTerminalGroupId = storeTerminalGroupId;
    }
    if (isDelete != null) {
      _result.isDelete = isDelete;
    }
    if (orders != null) {
      _result.orders.addAll(orders);
    }
    return _result;
  }
  factory OrderData_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderData_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderData_Content clone() => OrderData_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderData_Content copyWith(void Function(OrderData_Content) updates) => super.copyWith((message) => updates(message as OrderData_Content)) as OrderData_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderData_Content create() => OrderData_Content._();
  OrderData_Content createEmptyInstance() => create();
  static $pb.PbList<OrderData_Content> createRepeated() => $pb.PbList<OrderData_Content>();
  @$core.pragma('dart2js:noInline')
  static OrderData_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderData_Content>(create);
  static OrderData_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientType => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientType() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get storeTerminalId => $_getSZ(2);
  @$pb.TagNumber(3)
  set storeTerminalId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStoreTerminalId() => $_has(2);
  @$pb.TagNumber(3)
  void clearStoreTerminalId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get storeTerminalGroupId => $_getSZ(3);
  @$pb.TagNumber(4)
  set storeTerminalGroupId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStoreTerminalGroupId() => $_has(3);
  @$pb.TagNumber(4)
  void clearStoreTerminalGroupId() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isDelete => $_getBF(4);
  @$pb.TagNumber(5)
  set isDelete($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsDelete() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsDelete() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<OrderData_Order> get orders => $_getList(5);
}

class OrderData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrderData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<OrderData_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: OrderData_Content.create)
    ..hasRequiredFields = false
  ;

  OrderData._() : super();
  factory OrderData({
    Common? common,
    OrderData_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory OrderData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderData clone() => OrderData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderData copyWith(void Function(OrderData) updates) => super.copyWith((message) => updates(message as OrderData)) as OrderData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrderData create() => OrderData._();
  OrderData createEmptyInstance() => create();
  static $pb.PbList<OrderData> createRepeated() => $pb.PbList<OrderData>();
  @$core.pragma('dart2js:noInline')
  static OrderData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderData>(create);
  static OrderData? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  OrderData_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(OrderData_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  OrderData_Content ensureContent() => $_ensure(1);
}

class EntranceRegistrationData_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EntranceRegistrationData.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loginId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phoneNumber')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isAgree')
    ..hasRequiredFields = false
  ;

  EntranceRegistrationData_Content._() : super();
  factory EntranceRegistrationData_Content({
    $core.String? loginId,
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? phoneNumber,
    $core.bool? isAgree,
  }) {
    final _result = create();
    if (loginId != null) {
      _result.loginId = loginId;
    }
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (phoneNumber != null) {
      _result.phoneNumber = phoneNumber;
    }
    if (isAgree != null) {
      _result.isAgree = isAgree;
    }
    return _result;
  }
  factory EntranceRegistrationData_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntranceRegistrationData_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntranceRegistrationData_Content clone() => EntranceRegistrationData_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntranceRegistrationData_Content copyWith(void Function(EntranceRegistrationData_Content) updates) => super.copyWith((message) => updates(message as EntranceRegistrationData_Content)) as EntranceRegistrationData_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EntranceRegistrationData_Content create() => EntranceRegistrationData_Content._();
  EntranceRegistrationData_Content createEmptyInstance() => create();
  static $pb.PbList<EntranceRegistrationData_Content> createRepeated() => $pb.PbList<EntranceRegistrationData_Content>();
  @$core.pragma('dart2js:noInline')
  static EntranceRegistrationData_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntranceRegistrationData_Content>(create);
  static EntranceRegistrationData_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get loginId => $_getSZ(0);
  @$pb.TagNumber(1)
  set loginId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoginId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoginId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get storeTerminalId => $_getSZ(2);
  @$pb.TagNumber(3)
  set storeTerminalId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStoreTerminalId() => $_has(2);
  @$pb.TagNumber(3)
  void clearStoreTerminalId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phoneNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set phoneNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhoneNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoneNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isAgree => $_getBF(4);
  @$pb.TagNumber(5)
  set isAgree($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsAgree() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsAgree() => clearField(5);
}

class EntranceRegistrationData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EntranceRegistrationData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<EntranceRegistrationData_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: EntranceRegistrationData_Content.create)
    ..hasRequiredFields = false
  ;

  EntranceRegistrationData._() : super();
  factory EntranceRegistrationData({
    Common? common,
    EntranceRegistrationData_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory EntranceRegistrationData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntranceRegistrationData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntranceRegistrationData clone() => EntranceRegistrationData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntranceRegistrationData copyWith(void Function(EntranceRegistrationData) updates) => super.copyWith((message) => updates(message as EntranceRegistrationData)) as EntranceRegistrationData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EntranceRegistrationData create() => EntranceRegistrationData._();
  EntranceRegistrationData createEmptyInstance() => create();
  static $pb.PbList<EntranceRegistrationData> createRepeated() => $pb.PbList<EntranceRegistrationData>();
  @$core.pragma('dart2js:noInline')
  static EntranceRegistrationData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntranceRegistrationData>(create);
  static EntranceRegistrationData? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  EntranceRegistrationData_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(EntranceRegistrationData_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  EntranceRegistrationData_Content ensureContent() => $_ensure(1);
}

class ASPApiRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ASPApiRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..hasRequiredFields = false
  ;

  ASPApiRequest._() : super();
  factory ASPApiRequest({
    Common? common,
    $core.String? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ASPApiRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ASPApiRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ASPApiRequest clone() => ASPApiRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ASPApiRequest copyWith(void Function(ASPApiRequest) updates) => super.copyWith((message) => updates(message as ASPApiRequest)) as ASPApiRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ASPApiRequest create() => ASPApiRequest._();
  ASPApiRequest createEmptyInstance() => create();
  static $pb.PbList<ASPApiRequest> createRepeated() => $pb.PbList<ASPApiRequest>();
  @$core.pragma('dart2js:noInline')
  static ASPApiRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ASPApiRequest>(create);
  static ASPApiRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class ASPApiResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ASPApiResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..hasRequiredFields = false
  ;

  ASPApiResponse._() : super();
  factory ASPApiResponse({
    Common? common,
    $core.String? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ASPApiResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ASPApiResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ASPApiResponse clone() => ASPApiResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ASPApiResponse copyWith(void Function(ASPApiResponse) updates) => super.copyWith((message) => updates(message as ASPApiResponse)) as ASPApiResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ASPApiResponse create() => ASPApiResponse._();
  ASPApiResponse createEmptyInstance() => create();
  static $pb.PbList<ASPApiResponse> createRepeated() => $pb.PbList<ASPApiResponse>();
  @$core.pragma('dart2js:noInline')
  static ASPApiResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ASPApiResponse>(create);
  static ASPApiResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class BalanceItemRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BalanceItemRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemGroupId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'barcode')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  BalanceItemRequest_Content._() : super();
  factory BalanceItemRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? itemGroupId,
    $core.String? name,
    $core.String? barcode,
    $core.int? pageIndex,
    $core.int? pageSize,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (itemGroupId != null) {
      _result.itemGroupId = itemGroupId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (barcode != null) {
      _result.barcode = barcode;
    }
    if (pageIndex != null) {
      _result.pageIndex = pageIndex;
    }
    if (pageSize != null) {
      _result.pageSize = pageSize;
    }
    return _result;
  }
  factory BalanceItemRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BalanceItemRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BalanceItemRequest_Content clone() => BalanceItemRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BalanceItemRequest_Content copyWith(void Function(BalanceItemRequest_Content) updates) => super.copyWith((message) => updates(message as BalanceItemRequest_Content)) as BalanceItemRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BalanceItemRequest_Content create() => BalanceItemRequest_Content._();
  BalanceItemRequest_Content createEmptyInstance() => create();
  static $pb.PbList<BalanceItemRequest_Content> createRepeated() => $pb.PbList<BalanceItemRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static BalanceItemRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BalanceItemRequest_Content>(create);
  static BalanceItemRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get itemGroupId => $_getSZ(2);
  @$pb.TagNumber(3)
  set itemGroupId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemGroupId() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemGroupId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get barcode => $_getSZ(4);
  @$pb.TagNumber(5)
  set barcode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBarcode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBarcode() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get pageIndex => $_getIZ(5);
  @$pb.TagNumber(6)
  set pageIndex($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPageIndex() => $_has(5);
  @$pb.TagNumber(6)
  void clearPageIndex() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get pageSize => $_getIZ(6);
  @$pb.TagNumber(7)
  set pageSize($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPageSize() => $_has(6);
  @$pb.TagNumber(7)
  void clearPageSize() => clearField(7);
}

class BalanceItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BalanceItemRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<BalanceItemRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: BalanceItemRequest_Content.create)
    ..hasRequiredFields = false
  ;

  BalanceItemRequest._() : super();
  factory BalanceItemRequest({
    Common? common,
    BalanceItemRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory BalanceItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BalanceItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BalanceItemRequest clone() => BalanceItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BalanceItemRequest copyWith(void Function(BalanceItemRequest) updates) => super.copyWith((message) => updates(message as BalanceItemRequest)) as BalanceItemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BalanceItemRequest create() => BalanceItemRequest._();
  BalanceItemRequest createEmptyInstance() => create();
  static $pb.PbList<BalanceItemRequest> createRepeated() => $pb.PbList<BalanceItemRequest>();
  @$core.pragma('dart2js:noInline')
  static BalanceItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BalanceItemRequest>(create);
  static BalanceItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  BalanceItemRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(BalanceItemRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  BalanceItemRequest_Content ensureContent() => $_ensure(1);
}

class BalanceItemResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BalanceItemResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.O3)
    ..pc<BalanceItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: BalanceItem.create)
    ..hasRequiredFields = false
  ;

  BalanceItemResponse_Content._() : super();
  factory BalanceItemResponse_Content({
    $core.int? count,
    $core.Iterable<BalanceItem>? items,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory BalanceItemResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BalanceItemResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BalanceItemResponse_Content clone() => BalanceItemResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BalanceItemResponse_Content copyWith(void Function(BalanceItemResponse_Content) updates) => super.copyWith((message) => updates(message as BalanceItemResponse_Content)) as BalanceItemResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BalanceItemResponse_Content create() => BalanceItemResponse_Content._();
  BalanceItemResponse_Content createEmptyInstance() => create();
  static $pb.PbList<BalanceItemResponse_Content> createRepeated() => $pb.PbList<BalanceItemResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static BalanceItemResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BalanceItemResponse_Content>(create);
  static BalanceItemResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<BalanceItem> get items => $_getList(1);
}

class BalanceItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BalanceItemResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<BalanceItemResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: BalanceItemResponse_Content.create)
    ..hasRequiredFields = false
  ;

  BalanceItemResponse._() : super();
  factory BalanceItemResponse({
    Common? common,
    BalanceItemResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory BalanceItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BalanceItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BalanceItemResponse clone() => BalanceItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BalanceItemResponse copyWith(void Function(BalanceItemResponse) updates) => super.copyWith((message) => updates(message as BalanceItemResponse)) as BalanceItemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BalanceItemResponse create() => BalanceItemResponse._();
  BalanceItemResponse createEmptyInstance() => create();
  static $pb.PbList<BalanceItemResponse> createRepeated() => $pb.PbList<BalanceItemResponse>();
  @$core.pragma('dart2js:noInline')
  static BalanceItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BalanceItemResponse>(create);
  static BalanceItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  BalanceItemResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(BalanceItemResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  BalanceItemResponse_Content ensureContent() => $_ensure(1);
}

class BalanceItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BalanceItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemGroupId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageUrl', protoName: 'imageUrl')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salePrice', $pb.PbFieldType.OD)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'purchasePrice', $pb.PbFieldType.OD)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isMarking')
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'qty', $pb.PbFieldType.OD)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'barcode')
    ..hasRequiredFields = false
  ;

  BalanceItem._() : super();
  factory BalanceItem({
    $core.String? itemId,
    $core.String? itemGroupId,
    $core.String? name,
    $core.String? imageUrl,
    $core.double? salePrice,
    $core.double? purchasePrice,
    $core.bool? isMarking,
    $core.double? qty,
    $core.String? barcode,
  }) {
    final _result = create();
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (itemGroupId != null) {
      _result.itemGroupId = itemGroupId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (salePrice != null) {
      _result.salePrice = salePrice;
    }
    if (purchasePrice != null) {
      _result.purchasePrice = purchasePrice;
    }
    if (isMarking != null) {
      _result.isMarking = isMarking;
    }
    if (qty != null) {
      _result.qty = qty;
    }
    if (barcode != null) {
      _result.barcode = barcode;
    }
    return _result;
  }
  factory BalanceItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BalanceItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BalanceItem clone() => BalanceItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BalanceItem copyWith(void Function(BalanceItem) updates) => super.copyWith((message) => updates(message as BalanceItem)) as BalanceItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BalanceItem create() => BalanceItem._();
  BalanceItem createEmptyInstance() => create();
  static $pb.PbList<BalanceItem> createRepeated() => $pb.PbList<BalanceItem>();
  @$core.pragma('dart2js:noInline')
  static BalanceItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BalanceItem>(create);
  static BalanceItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get itemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set itemId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get itemGroupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemGroupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get imageUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set imageUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImageUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearImageUrl() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get salePrice => $_getN(4);
  @$pb.TagNumber(5)
  set salePrice($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSalePrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearSalePrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get purchasePrice => $_getN(5);
  @$pb.TagNumber(6)
  set purchasePrice($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPurchasePrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearPurchasePrice() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isMarking => $_getBF(6);
  @$pb.TagNumber(7)
  set isMarking($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsMarking() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsMarking() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get qty => $_getN(7);
  @$pb.TagNumber(8)
  set qty($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasQty() => $_has(7);
  @$pb.TagNumber(8)
  void clearQty() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get barcode => $_getSZ(8);
  @$pb.TagNumber(9)
  set barcode($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBarcode() => $_has(8);
  @$pb.TagNumber(9)
  void clearBarcode() => clearField(9);
}

class AcceptanceItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AcceptanceItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'acceptanceItemsId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..hasRequiredFields = false
  ;

  AcceptanceItem._() : super();
  factory AcceptanceItem({
    $core.String? acceptanceItemsId,
    $core.String? name,
    $core.double? price,
    $core.String? date,
  }) {
    final _result = create();
    if (acceptanceItemsId != null) {
      _result.acceptanceItemsId = acceptanceItemsId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (price != null) {
      _result.price = price;
    }
    if (date != null) {
      _result.date = date;
    }
    return _result;
  }
  factory AcceptanceItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AcceptanceItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AcceptanceItem clone() => AcceptanceItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AcceptanceItem copyWith(void Function(AcceptanceItem) updates) => super.copyWith((message) => updates(message as AcceptanceItem)) as AcceptanceItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AcceptanceItem create() => AcceptanceItem._();
  AcceptanceItem createEmptyInstance() => create();
  static $pb.PbList<AcceptanceItem> createRepeated() => $pb.PbList<AcceptanceItem>();
  @$core.pragma('dart2js:noInline')
  static AcceptanceItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AcceptanceItem>(create);
  static AcceptanceItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get acceptanceItemsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set acceptanceItemsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAcceptanceItemsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAcceptanceItemsId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get price => $_getN(2);
  @$pb.TagNumber(3)
  set price($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get date => $_getSZ(3);
  @$pb.TagNumber(4)
  set date($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDate() => clearField(4);
}

class AcceptanceItemDetail extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AcceptanceItemDetail', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'barcode')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salePrice', $pb.PbFieldType.OD)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'purchasePrice', $pb.PbFieldType.OD)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'qty', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  AcceptanceItemDetail._() : super();
  factory AcceptanceItemDetail({
    $core.String? id,
    $core.String? itemId,
    $core.String? name,
    $core.String? barcode,
    $core.double? salePrice,
    $core.double? purchasePrice,
    $core.double? qty,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (barcode != null) {
      _result.barcode = barcode;
    }
    if (salePrice != null) {
      _result.salePrice = salePrice;
    }
    if (purchasePrice != null) {
      _result.purchasePrice = purchasePrice;
    }
    if (qty != null) {
      _result.qty = qty;
    }
    return _result;
  }
  factory AcceptanceItemDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AcceptanceItemDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AcceptanceItemDetail clone() => AcceptanceItemDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AcceptanceItemDetail copyWith(void Function(AcceptanceItemDetail) updates) => super.copyWith((message) => updates(message as AcceptanceItemDetail)) as AcceptanceItemDetail; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AcceptanceItemDetail create() => AcceptanceItemDetail._();
  AcceptanceItemDetail createEmptyInstance() => create();
  static $pb.PbList<AcceptanceItemDetail> createRepeated() => $pb.PbList<AcceptanceItemDetail>();
  @$core.pragma('dart2js:noInline')
  static AcceptanceItemDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AcceptanceItemDetail>(create);
  static AcceptanceItemDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get itemId => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get barcode => $_getSZ(3);
  @$pb.TagNumber(4)
  set barcode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBarcode() => $_has(3);
  @$pb.TagNumber(4)
  void clearBarcode() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get salePrice => $_getN(4);
  @$pb.TagNumber(5)
  set salePrice($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSalePrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearSalePrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get purchasePrice => $_getN(5);
  @$pb.TagNumber(6)
  set purchasePrice($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPurchasePrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearPurchasePrice() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get qty => $_getN(6);
  @$pb.TagNumber(7)
  set qty($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasQty() => $_has(6);
  @$pb.TagNumber(7)
  void clearQty() => clearField(7);
}

class Supplier extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Supplier', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  Supplier._() : super();
  factory Supplier({
    $core.String? id,
    $core.String? name,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory Supplier.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Supplier.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Supplier clone() => Supplier()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Supplier copyWith(void Function(Supplier) updates) => super.copyWith((message) => updates(message as Supplier)) as Supplier; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Supplier create() => Supplier._();
  Supplier createEmptyInstance() => create();
  static $pb.PbList<Supplier> createRepeated() => $pb.PbList<Supplier>();
  @$core.pragma('dart2js:noInline')
  static Supplier getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Supplier>(create);
  static Supplier? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class RevisionItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RevisionItem', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'revisionItemsId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'price', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  RevisionItem._() : super();
  factory RevisionItem({
    $core.String? revisionItemsId,
    $core.String? name,
    $core.String? date,
    $core.double? price,
  }) {
    final _result = create();
    if (revisionItemsId != null) {
      _result.revisionItemsId = revisionItemsId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (date != null) {
      _result.date = date;
    }
    if (price != null) {
      _result.price = price;
    }
    return _result;
  }
  factory RevisionItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RevisionItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RevisionItem clone() => RevisionItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RevisionItem copyWith(void Function(RevisionItem) updates) => super.copyWith((message) => updates(message as RevisionItem)) as RevisionItem; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RevisionItem create() => RevisionItem._();
  RevisionItem createEmptyInstance() => create();
  static $pb.PbList<RevisionItem> createRepeated() => $pb.PbList<RevisionItem>();
  @$core.pragma('dart2js:noInline')
  static RevisionItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RevisionItem>(create);
  static RevisionItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get revisionItemsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set revisionItemsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRevisionItemsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevisionItemsId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get date => $_getSZ(2);
  @$pb.TagNumber(4)
  set date($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(4)
  void clearDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(5)
  set price($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);
}

class RevisionItemDetail extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RevisionItemDetail', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'itemId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'barcode')
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'salePrice', $pb.PbFieldType.OD)
    ..a<$core.double>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'purchasePrice', $pb.PbFieldType.OD)
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'qty', $pb.PbFieldType.OD)
    ..a<$core.double>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'realQty', $pb.PbFieldType.OD)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memo')
    ..hasRequiredFields = false
  ;

  RevisionItemDetail._() : super();
  factory RevisionItemDetail({
    $core.String? id,
    $core.String? itemId,
    $core.String? name,
    $core.String? barcode,
    $core.double? salePrice,
    $core.double? purchasePrice,
    $core.double? qty,
    $core.double? realQty,
    $core.String? memo,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (itemId != null) {
      _result.itemId = itemId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (barcode != null) {
      _result.barcode = barcode;
    }
    if (salePrice != null) {
      _result.salePrice = salePrice;
    }
    if (purchasePrice != null) {
      _result.purchasePrice = purchasePrice;
    }
    if (qty != null) {
      _result.qty = qty;
    }
    if (realQty != null) {
      _result.realQty = realQty;
    }
    if (memo != null) {
      _result.memo = memo;
    }
    return _result;
  }
  factory RevisionItemDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RevisionItemDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RevisionItemDetail clone() => RevisionItemDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RevisionItemDetail copyWith(void Function(RevisionItemDetail) updates) => super.copyWith((message) => updates(message as RevisionItemDetail)) as RevisionItemDetail; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RevisionItemDetail create() => RevisionItemDetail._();
  RevisionItemDetail createEmptyInstance() => create();
  static $pb.PbList<RevisionItemDetail> createRepeated() => $pb.PbList<RevisionItemDetail>();
  @$core.pragma('dart2js:noInline')
  static RevisionItemDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RevisionItemDetail>(create);
  static RevisionItemDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get itemId => $_getSZ(1);
  @$pb.TagNumber(2)
  set itemId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get barcode => $_getSZ(3);
  @$pb.TagNumber(4)
  set barcode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBarcode() => $_has(3);
  @$pb.TagNumber(4)
  void clearBarcode() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get salePrice => $_getN(4);
  @$pb.TagNumber(5)
  set salePrice($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSalePrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearSalePrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get purchasePrice => $_getN(5);
  @$pb.TagNumber(6)
  set purchasePrice($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPurchasePrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearPurchasePrice() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get qty => $_getN(6);
  @$pb.TagNumber(7)
  set qty($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasQty() => $_has(6);
  @$pb.TagNumber(7)
  void clearQty() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get realQty => $_getN(7);
  @$pb.TagNumber(8)
  set realQty($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRealQty() => $_has(7);
  @$pb.TagNumber(8)
  void clearRealQty() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get memo => $_getSZ(8);
  @$pb.TagNumber(9)
  set memo($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMemo() => $_has(8);
  @$pb.TagNumber(9)
  void clearMemo() => clearField(9);
}

class ListAcceptanceItemsRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAcceptanceItemsRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDate')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ListAcceptanceItemsRequest_Content._() : super();
  factory ListAcceptanceItemsRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? startDate,
    $core.String? endDate,
    $core.String? type,
    $core.int? pageIndex,
    $core.int? pageSize,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (startDate != null) {
      _result.startDate = startDate;
    }
    if (endDate != null) {
      _result.endDate = endDate;
    }
    if (type != null) {
      _result.type = type;
    }
    if (pageIndex != null) {
      _result.pageIndex = pageIndex;
    }
    if (pageSize != null) {
      _result.pageSize = pageSize;
    }
    return _result;
  }
  factory ListAcceptanceItemsRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAcceptanceItemsRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAcceptanceItemsRequest_Content clone() => ListAcceptanceItemsRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAcceptanceItemsRequest_Content copyWith(void Function(ListAcceptanceItemsRequest_Content) updates) => super.copyWith((message) => updates(message as ListAcceptanceItemsRequest_Content)) as ListAcceptanceItemsRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAcceptanceItemsRequest_Content create() => ListAcceptanceItemsRequest_Content._();
  ListAcceptanceItemsRequest_Content createEmptyInstance() => create();
  static $pb.PbList<ListAcceptanceItemsRequest_Content> createRepeated() => $pb.PbList<ListAcceptanceItemsRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static ListAcceptanceItemsRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAcceptanceItemsRequest_Content>(create);
  static ListAcceptanceItemsRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get startDate => $_getSZ(2);
  @$pb.TagNumber(3)
  set startDate($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get endDate => $_getSZ(3);
  @$pb.TagNumber(4)
  set endDate($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get pageIndex => $_getIZ(5);
  @$pb.TagNumber(6)
  set pageIndex($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPageIndex() => $_has(5);
  @$pb.TagNumber(6)
  void clearPageIndex() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get pageSize => $_getIZ(6);
  @$pb.TagNumber(7)
  set pageSize($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPageSize() => $_has(6);
  @$pb.TagNumber(7)
  void clearPageSize() => clearField(7);
}

class ListAcceptanceItemsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAcceptanceItemsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<ListAcceptanceItemsRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: ListAcceptanceItemsRequest_Content.create)
    ..hasRequiredFields = false
  ;

  ListAcceptanceItemsRequest._() : super();
  factory ListAcceptanceItemsRequest({
    Common? common,
    ListAcceptanceItemsRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ListAcceptanceItemsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAcceptanceItemsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAcceptanceItemsRequest clone() => ListAcceptanceItemsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAcceptanceItemsRequest copyWith(void Function(ListAcceptanceItemsRequest) updates) => super.copyWith((message) => updates(message as ListAcceptanceItemsRequest)) as ListAcceptanceItemsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAcceptanceItemsRequest create() => ListAcceptanceItemsRequest._();
  ListAcceptanceItemsRequest createEmptyInstance() => create();
  static $pb.PbList<ListAcceptanceItemsRequest> createRepeated() => $pb.PbList<ListAcceptanceItemsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAcceptanceItemsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAcceptanceItemsRequest>(create);
  static ListAcceptanceItemsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  ListAcceptanceItemsRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(ListAcceptanceItemsRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  ListAcceptanceItemsRequest_Content ensureContent() => $_ensure(1);
}

class ListAcceptanceItemsResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAcceptanceItemsResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.O3)
    ..pc<AcceptanceItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: AcceptanceItem.create)
    ..hasRequiredFields = false
  ;

  ListAcceptanceItemsResponse_Content._() : super();
  factory ListAcceptanceItemsResponse_Content({
    $core.int? count,
    $core.Iterable<AcceptanceItem>? items,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory ListAcceptanceItemsResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAcceptanceItemsResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAcceptanceItemsResponse_Content clone() => ListAcceptanceItemsResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAcceptanceItemsResponse_Content copyWith(void Function(ListAcceptanceItemsResponse_Content) updates) => super.copyWith((message) => updates(message as ListAcceptanceItemsResponse_Content)) as ListAcceptanceItemsResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAcceptanceItemsResponse_Content create() => ListAcceptanceItemsResponse_Content._();
  ListAcceptanceItemsResponse_Content createEmptyInstance() => create();
  static $pb.PbList<ListAcceptanceItemsResponse_Content> createRepeated() => $pb.PbList<ListAcceptanceItemsResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static ListAcceptanceItemsResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAcceptanceItemsResponse_Content>(create);
  static ListAcceptanceItemsResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<AcceptanceItem> get items => $_getList(1);
}

class ListAcceptanceItemsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAcceptanceItemsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<ListAcceptanceItemsResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: ListAcceptanceItemsResponse_Content.create)
    ..hasRequiredFields = false
  ;

  ListAcceptanceItemsResponse._() : super();
  factory ListAcceptanceItemsResponse({
    Common? common,
    ListAcceptanceItemsResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ListAcceptanceItemsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAcceptanceItemsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAcceptanceItemsResponse clone() => ListAcceptanceItemsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAcceptanceItemsResponse copyWith(void Function(ListAcceptanceItemsResponse) updates) => super.copyWith((message) => updates(message as ListAcceptanceItemsResponse)) as ListAcceptanceItemsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAcceptanceItemsResponse create() => ListAcceptanceItemsResponse._();
  ListAcceptanceItemsResponse createEmptyInstance() => create();
  static $pb.PbList<ListAcceptanceItemsResponse> createRepeated() => $pb.PbList<ListAcceptanceItemsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAcceptanceItemsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAcceptanceItemsResponse>(create);
  static ListAcceptanceItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  ListAcceptanceItemsResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(ListAcceptanceItemsResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  ListAcceptanceItemsResponse_Content ensureContent() => $_ensure(1);
}

class AddAcceptanceItemRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddAcceptanceItemRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplierId')
    ..pc<AcceptanceItemDetail>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: AcceptanceItemDetail.create)
    ..hasRequiredFields = false
  ;

  AddAcceptanceItemRequest_Content._() : super();
  factory AddAcceptanceItemRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? type,
    $core.String? name,
    $core.String? supplierId,
    $core.Iterable<AcceptanceItemDetail>? items,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (type != null) {
      _result.type = type;
    }
    if (name != null) {
      _result.name = name;
    }
    if (supplierId != null) {
      _result.supplierId = supplierId;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory AddAcceptanceItemRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAcceptanceItemRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAcceptanceItemRequest_Content clone() => AddAcceptanceItemRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAcceptanceItemRequest_Content copyWith(void Function(AddAcceptanceItemRequest_Content) updates) => super.copyWith((message) => updates(message as AddAcceptanceItemRequest_Content)) as AddAcceptanceItemRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddAcceptanceItemRequest_Content create() => AddAcceptanceItemRequest_Content._();
  AddAcceptanceItemRequest_Content createEmptyInstance() => create();
  static $pb.PbList<AddAcceptanceItemRequest_Content> createRepeated() => $pb.PbList<AddAcceptanceItemRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static AddAcceptanceItemRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAcceptanceItemRequest_Content>(create);
  static AddAcceptanceItemRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get supplierId => $_getSZ(4);
  @$pb.TagNumber(5)
  set supplierId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSupplierId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSupplierId() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<AcceptanceItemDetail> get items => $_getList(5);
}

class AddAcceptanceItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddAcceptanceItemRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<AddAcceptanceItemRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: AddAcceptanceItemRequest_Content.create)
    ..hasRequiredFields = false
  ;

  AddAcceptanceItemRequest._() : super();
  factory AddAcceptanceItemRequest({
    Common? common,
    AddAcceptanceItemRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory AddAcceptanceItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAcceptanceItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAcceptanceItemRequest clone() => AddAcceptanceItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAcceptanceItemRequest copyWith(void Function(AddAcceptanceItemRequest) updates) => super.copyWith((message) => updates(message as AddAcceptanceItemRequest)) as AddAcceptanceItemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddAcceptanceItemRequest create() => AddAcceptanceItemRequest._();
  AddAcceptanceItemRequest createEmptyInstance() => create();
  static $pb.PbList<AddAcceptanceItemRequest> createRepeated() => $pb.PbList<AddAcceptanceItemRequest>();
  @$core.pragma('dart2js:noInline')
  static AddAcceptanceItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAcceptanceItemRequest>(create);
  static AddAcceptanceItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  AddAcceptanceItemRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(AddAcceptanceItemRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  AddAcceptanceItemRequest_Content ensureContent() => $_ensure(1);
}

class AddAcceptanceItemResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddAcceptanceItemResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'acceptanceItemsId')
    ..hasRequiredFields = false
  ;

  AddAcceptanceItemResponse_Content._() : super();
  factory AddAcceptanceItemResponse_Content({
    $core.String? acceptanceItemsId,
  }) {
    final _result = create();
    if (acceptanceItemsId != null) {
      _result.acceptanceItemsId = acceptanceItemsId;
    }
    return _result;
  }
  factory AddAcceptanceItemResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAcceptanceItemResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAcceptanceItemResponse_Content clone() => AddAcceptanceItemResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAcceptanceItemResponse_Content copyWith(void Function(AddAcceptanceItemResponse_Content) updates) => super.copyWith((message) => updates(message as AddAcceptanceItemResponse_Content)) as AddAcceptanceItemResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddAcceptanceItemResponse_Content create() => AddAcceptanceItemResponse_Content._();
  AddAcceptanceItemResponse_Content createEmptyInstance() => create();
  static $pb.PbList<AddAcceptanceItemResponse_Content> createRepeated() => $pb.PbList<AddAcceptanceItemResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static AddAcceptanceItemResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAcceptanceItemResponse_Content>(create);
  static AddAcceptanceItemResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get acceptanceItemsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set acceptanceItemsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAcceptanceItemsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAcceptanceItemsId() => clearField(1);
}

class AddAcceptanceItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddAcceptanceItemResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<AddAcceptanceItemResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: AddAcceptanceItemResponse_Content.create)
    ..hasRequiredFields = false
  ;

  AddAcceptanceItemResponse._() : super();
  factory AddAcceptanceItemResponse({
    Common? common,
    AddAcceptanceItemResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory AddAcceptanceItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddAcceptanceItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddAcceptanceItemResponse clone() => AddAcceptanceItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddAcceptanceItemResponse copyWith(void Function(AddAcceptanceItemResponse) updates) => super.copyWith((message) => updates(message as AddAcceptanceItemResponse)) as AddAcceptanceItemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddAcceptanceItemResponse create() => AddAcceptanceItemResponse._();
  AddAcceptanceItemResponse createEmptyInstance() => create();
  static $pb.PbList<AddAcceptanceItemResponse> createRepeated() => $pb.PbList<AddAcceptanceItemResponse>();
  @$core.pragma('dart2js:noInline')
  static AddAcceptanceItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddAcceptanceItemResponse>(create);
  static AddAcceptanceItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  AddAcceptanceItemResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(AddAcceptanceItemResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  AddAcceptanceItemResponse_Content ensureContent() => $_ensure(1);
}

class UpdateAcceptanceItemRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAcceptanceItemRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'acceptanceItemsId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplierId')
    ..pc<AcceptanceItemDetail>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: AcceptanceItemDetail.create)
    ..hasRequiredFields = false
  ;

  UpdateAcceptanceItemRequest_Content._() : super();
  factory UpdateAcceptanceItemRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? type,
    $core.String? name,
    $core.String? acceptanceItemsId,
    $core.String? supplierId,
    $core.Iterable<AcceptanceItemDetail>? items,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (type != null) {
      _result.type = type;
    }
    if (name != null) {
      _result.name = name;
    }
    if (acceptanceItemsId != null) {
      _result.acceptanceItemsId = acceptanceItemsId;
    }
    if (supplierId != null) {
      _result.supplierId = supplierId;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory UpdateAcceptanceItemRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAcceptanceItemRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAcceptanceItemRequest_Content clone() => UpdateAcceptanceItemRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAcceptanceItemRequest_Content copyWith(void Function(UpdateAcceptanceItemRequest_Content) updates) => super.copyWith((message) => updates(message as UpdateAcceptanceItemRequest_Content)) as UpdateAcceptanceItemRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAcceptanceItemRequest_Content create() => UpdateAcceptanceItemRequest_Content._();
  UpdateAcceptanceItemRequest_Content createEmptyInstance() => create();
  static $pb.PbList<UpdateAcceptanceItemRequest_Content> createRepeated() => $pb.PbList<UpdateAcceptanceItemRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static UpdateAcceptanceItemRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAcceptanceItemRequest_Content>(create);
  static UpdateAcceptanceItemRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get acceptanceItemsId => $_getSZ(4);
  @$pb.TagNumber(5)
  set acceptanceItemsId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAcceptanceItemsId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAcceptanceItemsId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get supplierId => $_getSZ(5);
  @$pb.TagNumber(6)
  set supplierId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSupplierId() => $_has(5);
  @$pb.TagNumber(6)
  void clearSupplierId() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<AcceptanceItemDetail> get items => $_getList(6);
}

class UpdateAcceptanceItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAcceptanceItemRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<UpdateAcceptanceItemRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: UpdateAcceptanceItemRequest_Content.create)
    ..hasRequiredFields = false
  ;

  UpdateAcceptanceItemRequest._() : super();
  factory UpdateAcceptanceItemRequest({
    Common? common,
    UpdateAcceptanceItemRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory UpdateAcceptanceItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAcceptanceItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAcceptanceItemRequest clone() => UpdateAcceptanceItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAcceptanceItemRequest copyWith(void Function(UpdateAcceptanceItemRequest) updates) => super.copyWith((message) => updates(message as UpdateAcceptanceItemRequest)) as UpdateAcceptanceItemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAcceptanceItemRequest create() => UpdateAcceptanceItemRequest._();
  UpdateAcceptanceItemRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateAcceptanceItemRequest> createRepeated() => $pb.PbList<UpdateAcceptanceItemRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateAcceptanceItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAcceptanceItemRequest>(create);
  static UpdateAcceptanceItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateAcceptanceItemRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(UpdateAcceptanceItemRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  UpdateAcceptanceItemRequest_Content ensureContent() => $_ensure(1);
}

class UpdateAcceptanceItemResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAcceptanceItemResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'acceptanceItemsId')
    ..hasRequiredFields = false
  ;

  UpdateAcceptanceItemResponse_Content._() : super();
  factory UpdateAcceptanceItemResponse_Content({
    $core.String? acceptanceItemsId,
  }) {
    final _result = create();
    if (acceptanceItemsId != null) {
      _result.acceptanceItemsId = acceptanceItemsId;
    }
    return _result;
  }
  factory UpdateAcceptanceItemResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAcceptanceItemResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAcceptanceItemResponse_Content clone() => UpdateAcceptanceItemResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAcceptanceItemResponse_Content copyWith(void Function(UpdateAcceptanceItemResponse_Content) updates) => super.copyWith((message) => updates(message as UpdateAcceptanceItemResponse_Content)) as UpdateAcceptanceItemResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAcceptanceItemResponse_Content create() => UpdateAcceptanceItemResponse_Content._();
  UpdateAcceptanceItemResponse_Content createEmptyInstance() => create();
  static $pb.PbList<UpdateAcceptanceItemResponse_Content> createRepeated() => $pb.PbList<UpdateAcceptanceItemResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static UpdateAcceptanceItemResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAcceptanceItemResponse_Content>(create);
  static UpdateAcceptanceItemResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get acceptanceItemsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set acceptanceItemsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAcceptanceItemsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAcceptanceItemsId() => clearField(1);
}

class UpdateAcceptanceItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAcceptanceItemResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<UpdateAcceptanceItemResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: UpdateAcceptanceItemResponse_Content.create)
    ..hasRequiredFields = false
  ;

  UpdateAcceptanceItemResponse._() : super();
  factory UpdateAcceptanceItemResponse({
    Common? common,
    UpdateAcceptanceItemResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory UpdateAcceptanceItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAcceptanceItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAcceptanceItemResponse clone() => UpdateAcceptanceItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAcceptanceItemResponse copyWith(void Function(UpdateAcceptanceItemResponse) updates) => super.copyWith((message) => updates(message as UpdateAcceptanceItemResponse)) as UpdateAcceptanceItemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAcceptanceItemResponse create() => UpdateAcceptanceItemResponse._();
  UpdateAcceptanceItemResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateAcceptanceItemResponse> createRepeated() => $pb.PbList<UpdateAcceptanceItemResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateAcceptanceItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAcceptanceItemResponse>(create);
  static UpdateAcceptanceItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateAcceptanceItemResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(UpdateAcceptanceItemResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  UpdateAcceptanceItemResponse_Content ensureContent() => $_ensure(1);
}

class DeleteAcceptanceItemRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteAcceptanceItemRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'acceptanceItemsId')
    ..hasRequiredFields = false
  ;

  DeleteAcceptanceItemRequest_Content._() : super();
  factory DeleteAcceptanceItemRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? acceptanceItemsId,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (acceptanceItemsId != null) {
      _result.acceptanceItemsId = acceptanceItemsId;
    }
    return _result;
  }
  factory DeleteAcceptanceItemRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAcceptanceItemRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteAcceptanceItemRequest_Content clone() => DeleteAcceptanceItemRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteAcceptanceItemRequest_Content copyWith(void Function(DeleteAcceptanceItemRequest_Content) updates) => super.copyWith((message) => updates(message as DeleteAcceptanceItemRequest_Content)) as DeleteAcceptanceItemRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAcceptanceItemRequest_Content create() => DeleteAcceptanceItemRequest_Content._();
  DeleteAcceptanceItemRequest_Content createEmptyInstance() => create();
  static $pb.PbList<DeleteAcceptanceItemRequest_Content> createRepeated() => $pb.PbList<DeleteAcceptanceItemRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static DeleteAcceptanceItemRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAcceptanceItemRequest_Content>(create);
  static DeleteAcceptanceItemRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get acceptanceItemsId => $_getSZ(2);
  @$pb.TagNumber(3)
  set acceptanceItemsId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAcceptanceItemsId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAcceptanceItemsId() => clearField(3);
}

class DeleteAcceptanceItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteAcceptanceItemRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<DeleteAcceptanceItemRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: DeleteAcceptanceItemRequest_Content.create)
    ..hasRequiredFields = false
  ;

  DeleteAcceptanceItemRequest._() : super();
  factory DeleteAcceptanceItemRequest({
    Common? common,
    DeleteAcceptanceItemRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory DeleteAcceptanceItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAcceptanceItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteAcceptanceItemRequest clone() => DeleteAcceptanceItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteAcceptanceItemRequest copyWith(void Function(DeleteAcceptanceItemRequest) updates) => super.copyWith((message) => updates(message as DeleteAcceptanceItemRequest)) as DeleteAcceptanceItemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAcceptanceItemRequest create() => DeleteAcceptanceItemRequest._();
  DeleteAcceptanceItemRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteAcceptanceItemRequest> createRepeated() => $pb.PbList<DeleteAcceptanceItemRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteAcceptanceItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAcceptanceItemRequest>(create);
  static DeleteAcceptanceItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  DeleteAcceptanceItemRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(DeleteAcceptanceItemRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  DeleteAcceptanceItemRequest_Content ensureContent() => $_ensure(1);
}

class DeleteAcceptanceItemResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteAcceptanceItemResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'acceptanceItemsId')
    ..hasRequiredFields = false
  ;

  DeleteAcceptanceItemResponse_Content._() : super();
  factory DeleteAcceptanceItemResponse_Content({
    $core.String? acceptanceItemsId,
  }) {
    final _result = create();
    if (acceptanceItemsId != null) {
      _result.acceptanceItemsId = acceptanceItemsId;
    }
    return _result;
  }
  factory DeleteAcceptanceItemResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAcceptanceItemResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteAcceptanceItemResponse_Content clone() => DeleteAcceptanceItemResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteAcceptanceItemResponse_Content copyWith(void Function(DeleteAcceptanceItemResponse_Content) updates) => super.copyWith((message) => updates(message as DeleteAcceptanceItemResponse_Content)) as DeleteAcceptanceItemResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAcceptanceItemResponse_Content create() => DeleteAcceptanceItemResponse_Content._();
  DeleteAcceptanceItemResponse_Content createEmptyInstance() => create();
  static $pb.PbList<DeleteAcceptanceItemResponse_Content> createRepeated() => $pb.PbList<DeleteAcceptanceItemResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static DeleteAcceptanceItemResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAcceptanceItemResponse_Content>(create);
  static DeleteAcceptanceItemResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get acceptanceItemsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set acceptanceItemsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAcceptanceItemsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAcceptanceItemsId() => clearField(1);
}

class DeleteAcceptanceItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteAcceptanceItemResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<DeleteAcceptanceItemResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: DeleteAcceptanceItemResponse_Content.create)
    ..hasRequiredFields = false
  ;

  DeleteAcceptanceItemResponse._() : super();
  factory DeleteAcceptanceItemResponse({
    Common? common,
    DeleteAcceptanceItemResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory DeleteAcceptanceItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAcceptanceItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteAcceptanceItemResponse clone() => DeleteAcceptanceItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteAcceptanceItemResponse copyWith(void Function(DeleteAcceptanceItemResponse) updates) => super.copyWith((message) => updates(message as DeleteAcceptanceItemResponse)) as DeleteAcceptanceItemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAcceptanceItemResponse create() => DeleteAcceptanceItemResponse._();
  DeleteAcceptanceItemResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteAcceptanceItemResponse> createRepeated() => $pb.PbList<DeleteAcceptanceItemResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteAcceptanceItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAcceptanceItemResponse>(create);
  static DeleteAcceptanceItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  DeleteAcceptanceItemResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(DeleteAcceptanceItemResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  DeleteAcceptanceItemResponse_Content ensureContent() => $_ensure(1);
}

class DetailAcceptanceItemRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DetailAcceptanceItemRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'acceptanceItemsId')
    ..hasRequiredFields = false
  ;

  DetailAcceptanceItemRequest_Content._() : super();
  factory DetailAcceptanceItemRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? acceptanceItemsId,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (acceptanceItemsId != null) {
      _result.acceptanceItemsId = acceptanceItemsId;
    }
    return _result;
  }
  factory DetailAcceptanceItemRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailAcceptanceItemRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailAcceptanceItemRequest_Content clone() => DetailAcceptanceItemRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailAcceptanceItemRequest_Content copyWith(void Function(DetailAcceptanceItemRequest_Content) updates) => super.copyWith((message) => updates(message as DetailAcceptanceItemRequest_Content)) as DetailAcceptanceItemRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DetailAcceptanceItemRequest_Content create() => DetailAcceptanceItemRequest_Content._();
  DetailAcceptanceItemRequest_Content createEmptyInstance() => create();
  static $pb.PbList<DetailAcceptanceItemRequest_Content> createRepeated() => $pb.PbList<DetailAcceptanceItemRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static DetailAcceptanceItemRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailAcceptanceItemRequest_Content>(create);
  static DetailAcceptanceItemRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get acceptanceItemsId => $_getSZ(2);
  @$pb.TagNumber(3)
  set acceptanceItemsId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAcceptanceItemsId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAcceptanceItemsId() => clearField(3);
}

class DetailAcceptanceItemRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DetailAcceptanceItemRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<DetailAcceptanceItemRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: DetailAcceptanceItemRequest_Content.create)
    ..hasRequiredFields = false
  ;

  DetailAcceptanceItemRequest._() : super();
  factory DetailAcceptanceItemRequest({
    Common? common,
    DetailAcceptanceItemRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory DetailAcceptanceItemRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailAcceptanceItemRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailAcceptanceItemRequest clone() => DetailAcceptanceItemRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailAcceptanceItemRequest copyWith(void Function(DetailAcceptanceItemRequest) updates) => super.copyWith((message) => updates(message as DetailAcceptanceItemRequest)) as DetailAcceptanceItemRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DetailAcceptanceItemRequest create() => DetailAcceptanceItemRequest._();
  DetailAcceptanceItemRequest createEmptyInstance() => create();
  static $pb.PbList<DetailAcceptanceItemRequest> createRepeated() => $pb.PbList<DetailAcceptanceItemRequest>();
  @$core.pragma('dart2js:noInline')
  static DetailAcceptanceItemRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailAcceptanceItemRequest>(create);
  static DetailAcceptanceItemRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  DetailAcceptanceItemRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(DetailAcceptanceItemRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  DetailAcceptanceItemRequest_Content ensureContent() => $_ensure(1);
}

class DetailAcceptanceItemResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DetailAcceptanceItemResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'acceptanceItemsId')
    ..pc<AcceptanceItemDetail>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: AcceptanceItemDetail.create)
    ..hasRequiredFields = false
  ;

  DetailAcceptanceItemResponse_Content._() : super();
  factory DetailAcceptanceItemResponse_Content({
    $core.String? date,
    $core.String? name,
    $core.String? acceptanceItemsId,
    $core.Iterable<AcceptanceItemDetail>? items,
  }) {
    final _result = create();
    if (date != null) {
      _result.date = date;
    }
    if (name != null) {
      _result.name = name;
    }
    if (acceptanceItemsId != null) {
      _result.acceptanceItemsId = acceptanceItemsId;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory DetailAcceptanceItemResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailAcceptanceItemResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailAcceptanceItemResponse_Content clone() => DetailAcceptanceItemResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailAcceptanceItemResponse_Content copyWith(void Function(DetailAcceptanceItemResponse_Content) updates) => super.copyWith((message) => updates(message as DetailAcceptanceItemResponse_Content)) as DetailAcceptanceItemResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DetailAcceptanceItemResponse_Content create() => DetailAcceptanceItemResponse_Content._();
  DetailAcceptanceItemResponse_Content createEmptyInstance() => create();
  static $pb.PbList<DetailAcceptanceItemResponse_Content> createRepeated() => $pb.PbList<DetailAcceptanceItemResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static DetailAcceptanceItemResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailAcceptanceItemResponse_Content>(create);
  static DetailAcceptanceItemResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get acceptanceItemsId => $_getSZ(2);
  @$pb.TagNumber(3)
  set acceptanceItemsId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAcceptanceItemsId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAcceptanceItemsId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<AcceptanceItemDetail> get items => $_getList(3);
}

class DetailAcceptanceItemResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DetailAcceptanceItemResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<DetailAcceptanceItemResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: DetailAcceptanceItemResponse_Content.create)
    ..hasRequiredFields = false
  ;

  DetailAcceptanceItemResponse._() : super();
  factory DetailAcceptanceItemResponse({
    Common? common,
    DetailAcceptanceItemResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory DetailAcceptanceItemResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailAcceptanceItemResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailAcceptanceItemResponse clone() => DetailAcceptanceItemResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailAcceptanceItemResponse copyWith(void Function(DetailAcceptanceItemResponse) updates) => super.copyWith((message) => updates(message as DetailAcceptanceItemResponse)) as DetailAcceptanceItemResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DetailAcceptanceItemResponse create() => DetailAcceptanceItemResponse._();
  DetailAcceptanceItemResponse createEmptyInstance() => create();
  static $pb.PbList<DetailAcceptanceItemResponse> createRepeated() => $pb.PbList<DetailAcceptanceItemResponse>();
  @$core.pragma('dart2js:noInline')
  static DetailAcceptanceItemResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailAcceptanceItemResponse>(create);
  static DetailAcceptanceItemResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  DetailAcceptanceItemResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(DetailAcceptanceItemResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  DetailAcceptanceItemResponse_Content ensureContent() => $_ensure(1);
}

class ListSupplierRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSupplierRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..hasRequiredFields = false
  ;

  ListSupplierRequest_Content._() : super();
  factory ListSupplierRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    return _result;
  }
  factory ListSupplierRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSupplierRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSupplierRequest_Content clone() => ListSupplierRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSupplierRequest_Content copyWith(void Function(ListSupplierRequest_Content) updates) => super.copyWith((message) => updates(message as ListSupplierRequest_Content)) as ListSupplierRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSupplierRequest_Content create() => ListSupplierRequest_Content._();
  ListSupplierRequest_Content createEmptyInstance() => create();
  static $pb.PbList<ListSupplierRequest_Content> createRepeated() => $pb.PbList<ListSupplierRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static ListSupplierRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSupplierRequest_Content>(create);
  static ListSupplierRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);
}

class ListSupplierRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSupplierRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<ListSupplierRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: ListSupplierRequest_Content.create)
    ..hasRequiredFields = false
  ;

  ListSupplierRequest._() : super();
  factory ListSupplierRequest({
    Common? common,
    ListSupplierRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ListSupplierRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSupplierRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSupplierRequest clone() => ListSupplierRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSupplierRequest copyWith(void Function(ListSupplierRequest) updates) => super.copyWith((message) => updates(message as ListSupplierRequest)) as ListSupplierRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSupplierRequest create() => ListSupplierRequest._();
  ListSupplierRequest createEmptyInstance() => create();
  static $pb.PbList<ListSupplierRequest> createRepeated() => $pb.PbList<ListSupplierRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSupplierRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSupplierRequest>(create);
  static ListSupplierRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  ListSupplierRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(ListSupplierRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  ListSupplierRequest_Content ensureContent() => $_ensure(1);
}

class ListSupplierResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSupplierResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.O3)
    ..pc<Supplier>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Supplier.create)
    ..hasRequiredFields = false
  ;

  ListSupplierResponse_Content._() : super();
  factory ListSupplierResponse_Content({
    $core.int? count,
    $core.Iterable<Supplier>? items,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory ListSupplierResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSupplierResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSupplierResponse_Content clone() => ListSupplierResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSupplierResponse_Content copyWith(void Function(ListSupplierResponse_Content) updates) => super.copyWith((message) => updates(message as ListSupplierResponse_Content)) as ListSupplierResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSupplierResponse_Content create() => ListSupplierResponse_Content._();
  ListSupplierResponse_Content createEmptyInstance() => create();
  static $pb.PbList<ListSupplierResponse_Content> createRepeated() => $pb.PbList<ListSupplierResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static ListSupplierResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSupplierResponse_Content>(create);
  static ListSupplierResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Supplier> get items => $_getList(1);
}

class ListSupplierResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSupplierResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<ListSupplierResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: ListSupplierResponse_Content.create)
    ..hasRequiredFields = false
  ;

  ListSupplierResponse._() : super();
  factory ListSupplierResponse({
    Common? common,
    ListSupplierResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ListSupplierResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSupplierResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSupplierResponse clone() => ListSupplierResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSupplierResponse copyWith(void Function(ListSupplierResponse) updates) => super.copyWith((message) => updates(message as ListSupplierResponse)) as ListSupplierResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSupplierResponse create() => ListSupplierResponse._();
  ListSupplierResponse createEmptyInstance() => create();
  static $pb.PbList<ListSupplierResponse> createRepeated() => $pb.PbList<ListSupplierResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSupplierResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSupplierResponse>(create);
  static ListSupplierResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  ListSupplierResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(ListSupplierResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  ListSupplierResponse_Content ensureContent() => $_ensure(1);
}

class AddSupplierRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddSupplierRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  AddSupplierRequest_Content._() : super();
  factory AddSupplierRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? name,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory AddSupplierRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSupplierRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSupplierRequest_Content clone() => AddSupplierRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSupplierRequest_Content copyWith(void Function(AddSupplierRequest_Content) updates) => super.copyWith((message) => updates(message as AddSupplierRequest_Content)) as AddSupplierRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddSupplierRequest_Content create() => AddSupplierRequest_Content._();
  AddSupplierRequest_Content createEmptyInstance() => create();
  static $pb.PbList<AddSupplierRequest_Content> createRepeated() => $pb.PbList<AddSupplierRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static AddSupplierRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSupplierRequest_Content>(create);
  static AddSupplierRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

class AddSupplierRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddSupplierRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<AddSupplierRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: AddSupplierRequest_Content.create)
    ..hasRequiredFields = false
  ;

  AddSupplierRequest._() : super();
  factory AddSupplierRequest({
    Common? common,
    AddSupplierRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory AddSupplierRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSupplierRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSupplierRequest clone() => AddSupplierRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSupplierRequest copyWith(void Function(AddSupplierRequest) updates) => super.copyWith((message) => updates(message as AddSupplierRequest)) as AddSupplierRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddSupplierRequest create() => AddSupplierRequest._();
  AddSupplierRequest createEmptyInstance() => create();
  static $pb.PbList<AddSupplierRequest> createRepeated() => $pb.PbList<AddSupplierRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSupplierRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSupplierRequest>(create);
  static AddSupplierRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  AddSupplierRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(AddSupplierRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  AddSupplierRequest_Content ensureContent() => $_ensure(1);
}

class AddSupplierResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddSupplierResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplierId')
    ..hasRequiredFields = false
  ;

  AddSupplierResponse_Content._() : super();
  factory AddSupplierResponse_Content({
    $core.String? supplierId,
  }) {
    final _result = create();
    if (supplierId != null) {
      _result.supplierId = supplierId;
    }
    return _result;
  }
  factory AddSupplierResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSupplierResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSupplierResponse_Content clone() => AddSupplierResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSupplierResponse_Content copyWith(void Function(AddSupplierResponse_Content) updates) => super.copyWith((message) => updates(message as AddSupplierResponse_Content)) as AddSupplierResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddSupplierResponse_Content create() => AddSupplierResponse_Content._();
  AddSupplierResponse_Content createEmptyInstance() => create();
  static $pb.PbList<AddSupplierResponse_Content> createRepeated() => $pb.PbList<AddSupplierResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static AddSupplierResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSupplierResponse_Content>(create);
  static AddSupplierResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get supplierId => $_getSZ(0);
  @$pb.TagNumber(1)
  set supplierId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSupplierId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupplierId() => clearField(1);
}

class AddSupplierResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddSupplierResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<AddSupplierResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: AddSupplierResponse_Content.create)
    ..hasRequiredFields = false
  ;

  AddSupplierResponse._() : super();
  factory AddSupplierResponse({
    Common? common,
    AddSupplierResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory AddSupplierResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSupplierResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSupplierResponse clone() => AddSupplierResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSupplierResponse copyWith(void Function(AddSupplierResponse) updates) => super.copyWith((message) => updates(message as AddSupplierResponse)) as AddSupplierResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddSupplierResponse create() => AddSupplierResponse._();
  AddSupplierResponse createEmptyInstance() => create();
  static $pb.PbList<AddSupplierResponse> createRepeated() => $pb.PbList<AddSupplierResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSupplierResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSupplierResponse>(create);
  static AddSupplierResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  AddSupplierResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(AddSupplierResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  AddSupplierResponse_Content ensureContent() => $_ensure(1);
}

class UpdateSupplierRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateSupplierRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplierId')
    ..hasRequiredFields = false
  ;

  UpdateSupplierRequest_Content._() : super();
  factory UpdateSupplierRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? name,
    $core.String? supplierId,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (name != null) {
      _result.name = name;
    }
    if (supplierId != null) {
      _result.supplierId = supplierId;
    }
    return _result;
  }
  factory UpdateSupplierRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSupplierRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSupplierRequest_Content clone() => UpdateSupplierRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSupplierRequest_Content copyWith(void Function(UpdateSupplierRequest_Content) updates) => super.copyWith((message) => updates(message as UpdateSupplierRequest_Content)) as UpdateSupplierRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateSupplierRequest_Content create() => UpdateSupplierRequest_Content._();
  UpdateSupplierRequest_Content createEmptyInstance() => create();
  static $pb.PbList<UpdateSupplierRequest_Content> createRepeated() => $pb.PbList<UpdateSupplierRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static UpdateSupplierRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSupplierRequest_Content>(create);
  static UpdateSupplierRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get supplierId => $_getSZ(3);
  @$pb.TagNumber(4)
  set supplierId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSupplierId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSupplierId() => clearField(4);
}

class UpdateSupplierRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateSupplierRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<UpdateSupplierRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: UpdateSupplierRequest_Content.create)
    ..hasRequiredFields = false
  ;

  UpdateSupplierRequest._() : super();
  factory UpdateSupplierRequest({
    Common? common,
    UpdateSupplierRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory UpdateSupplierRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSupplierRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSupplierRequest clone() => UpdateSupplierRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSupplierRequest copyWith(void Function(UpdateSupplierRequest) updates) => super.copyWith((message) => updates(message as UpdateSupplierRequest)) as UpdateSupplierRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateSupplierRequest create() => UpdateSupplierRequest._();
  UpdateSupplierRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSupplierRequest> createRepeated() => $pb.PbList<UpdateSupplierRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSupplierRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSupplierRequest>(create);
  static UpdateSupplierRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateSupplierRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(UpdateSupplierRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  UpdateSupplierRequest_Content ensureContent() => $_ensure(1);
}

class UpdateSupplierResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateSupplierResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplierId')
    ..hasRequiredFields = false
  ;

  UpdateSupplierResponse_Content._() : super();
  factory UpdateSupplierResponse_Content({
    $core.String? supplierId,
  }) {
    final _result = create();
    if (supplierId != null) {
      _result.supplierId = supplierId;
    }
    return _result;
  }
  factory UpdateSupplierResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSupplierResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSupplierResponse_Content clone() => UpdateSupplierResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSupplierResponse_Content copyWith(void Function(UpdateSupplierResponse_Content) updates) => super.copyWith((message) => updates(message as UpdateSupplierResponse_Content)) as UpdateSupplierResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateSupplierResponse_Content create() => UpdateSupplierResponse_Content._();
  UpdateSupplierResponse_Content createEmptyInstance() => create();
  static $pb.PbList<UpdateSupplierResponse_Content> createRepeated() => $pb.PbList<UpdateSupplierResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static UpdateSupplierResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSupplierResponse_Content>(create);
  static UpdateSupplierResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get supplierId => $_getSZ(0);
  @$pb.TagNumber(1)
  set supplierId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSupplierId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupplierId() => clearField(1);
}

class UpdateSupplierResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateSupplierResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<UpdateSupplierResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: UpdateSupplierResponse_Content.create)
    ..hasRequiredFields = false
  ;

  UpdateSupplierResponse._() : super();
  factory UpdateSupplierResponse({
    Common? common,
    UpdateSupplierResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory UpdateSupplierResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSupplierResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSupplierResponse clone() => UpdateSupplierResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSupplierResponse copyWith(void Function(UpdateSupplierResponse) updates) => super.copyWith((message) => updates(message as UpdateSupplierResponse)) as UpdateSupplierResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateSupplierResponse create() => UpdateSupplierResponse._();
  UpdateSupplierResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSupplierResponse> createRepeated() => $pb.PbList<UpdateSupplierResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSupplierResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSupplierResponse>(create);
  static UpdateSupplierResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateSupplierResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(UpdateSupplierResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  UpdateSupplierResponse_Content ensureContent() => $_ensure(1);
}

class DeleteSupplierRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteSupplierRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplierId')
    ..hasRequiredFields = false
  ;

  DeleteSupplierRequest_Content._() : super();
  factory DeleteSupplierRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? supplierId,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (supplierId != null) {
      _result.supplierId = supplierId;
    }
    return _result;
  }
  factory DeleteSupplierRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSupplierRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSupplierRequest_Content clone() => DeleteSupplierRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSupplierRequest_Content copyWith(void Function(DeleteSupplierRequest_Content) updates) => super.copyWith((message) => updates(message as DeleteSupplierRequest_Content)) as DeleteSupplierRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteSupplierRequest_Content create() => DeleteSupplierRequest_Content._();
  DeleteSupplierRequest_Content createEmptyInstance() => create();
  static $pb.PbList<DeleteSupplierRequest_Content> createRepeated() => $pb.PbList<DeleteSupplierRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static DeleteSupplierRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSupplierRequest_Content>(create);
  static DeleteSupplierRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get supplierId => $_getSZ(2);
  @$pb.TagNumber(3)
  set supplierId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSupplierId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSupplierId() => clearField(3);
}

class DeleteSupplierRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteSupplierRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<DeleteSupplierRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: DeleteSupplierRequest_Content.create)
    ..hasRequiredFields = false
  ;

  DeleteSupplierRequest._() : super();
  factory DeleteSupplierRequest({
    Common? common,
    DeleteSupplierRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory DeleteSupplierRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSupplierRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSupplierRequest clone() => DeleteSupplierRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSupplierRequest copyWith(void Function(DeleteSupplierRequest) updates) => super.copyWith((message) => updates(message as DeleteSupplierRequest)) as DeleteSupplierRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteSupplierRequest create() => DeleteSupplierRequest._();
  DeleteSupplierRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSupplierRequest> createRepeated() => $pb.PbList<DeleteSupplierRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSupplierRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSupplierRequest>(create);
  static DeleteSupplierRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  DeleteSupplierRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(DeleteSupplierRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  DeleteSupplierRequest_Content ensureContent() => $_ensure(1);
}

class DeleteSupplierResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteSupplierResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'supplierId')
    ..hasRequiredFields = false
  ;

  DeleteSupplierResponse_Content._() : super();
  factory DeleteSupplierResponse_Content({
    $core.String? supplierId,
  }) {
    final _result = create();
    if (supplierId != null) {
      _result.supplierId = supplierId;
    }
    return _result;
  }
  factory DeleteSupplierResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSupplierResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSupplierResponse_Content clone() => DeleteSupplierResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSupplierResponse_Content copyWith(void Function(DeleteSupplierResponse_Content) updates) => super.copyWith((message) => updates(message as DeleteSupplierResponse_Content)) as DeleteSupplierResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteSupplierResponse_Content create() => DeleteSupplierResponse_Content._();
  DeleteSupplierResponse_Content createEmptyInstance() => create();
  static $pb.PbList<DeleteSupplierResponse_Content> createRepeated() => $pb.PbList<DeleteSupplierResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static DeleteSupplierResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSupplierResponse_Content>(create);
  static DeleteSupplierResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get supplierId => $_getSZ(0);
  @$pb.TagNumber(1)
  set supplierId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSupplierId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupplierId() => clearField(1);
}

class DeleteSupplierResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteSupplierResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<DeleteSupplierResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: DeleteSupplierResponse_Content.create)
    ..hasRequiredFields = false
  ;

  DeleteSupplierResponse._() : super();
  factory DeleteSupplierResponse({
    Common? common,
    DeleteSupplierResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory DeleteSupplierResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSupplierResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSupplierResponse clone() => DeleteSupplierResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSupplierResponse copyWith(void Function(DeleteSupplierResponse) updates) => super.copyWith((message) => updates(message as DeleteSupplierResponse)) as DeleteSupplierResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteSupplierResponse create() => DeleteSupplierResponse._();
  DeleteSupplierResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSupplierResponse> createRepeated() => $pb.PbList<DeleteSupplierResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSupplierResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSupplierResponse>(create);
  static DeleteSupplierResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  DeleteSupplierResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(DeleteSupplierResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  DeleteSupplierResponse_Content ensureContent() => $_ensure(1);
}

class ListRevisionItemsRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListRevisionItemsRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDate')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDate')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ListRevisionItemsRequest_Content._() : super();
  factory ListRevisionItemsRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? startDate,
    $core.String? endDate,
    $core.int? pageIndex,
    $core.int? pageSize,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (startDate != null) {
      _result.startDate = startDate;
    }
    if (endDate != null) {
      _result.endDate = endDate;
    }
    if (pageIndex != null) {
      _result.pageIndex = pageIndex;
    }
    if (pageSize != null) {
      _result.pageSize = pageSize;
    }
    return _result;
  }
  factory ListRevisionItemsRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRevisionItemsRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRevisionItemsRequest_Content clone() => ListRevisionItemsRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRevisionItemsRequest_Content copyWith(void Function(ListRevisionItemsRequest_Content) updates) => super.copyWith((message) => updates(message as ListRevisionItemsRequest_Content)) as ListRevisionItemsRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRevisionItemsRequest_Content create() => ListRevisionItemsRequest_Content._();
  ListRevisionItemsRequest_Content createEmptyInstance() => create();
  static $pb.PbList<ListRevisionItemsRequest_Content> createRepeated() => $pb.PbList<ListRevisionItemsRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static ListRevisionItemsRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRevisionItemsRequest_Content>(create);
  static ListRevisionItemsRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get startDate => $_getSZ(2);
  @$pb.TagNumber(3)
  set startDate($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get endDate => $_getSZ(3);
  @$pb.TagNumber(4)
  set endDate($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get pageIndex => $_getIZ(4);
  @$pb.TagNumber(5)
  set pageIndex($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPageIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearPageIndex() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get pageSize => $_getIZ(5);
  @$pb.TagNumber(6)
  set pageSize($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPageSize() => $_has(5);
  @$pb.TagNumber(6)
  void clearPageSize() => clearField(6);
}

class ListRevisionItemsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListRevisionItemsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<ListRevisionItemsRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: ListRevisionItemsRequest_Content.create)
    ..hasRequiredFields = false
  ;

  ListRevisionItemsRequest._() : super();
  factory ListRevisionItemsRequest({
    Common? common,
    ListRevisionItemsRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ListRevisionItemsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRevisionItemsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRevisionItemsRequest clone() => ListRevisionItemsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRevisionItemsRequest copyWith(void Function(ListRevisionItemsRequest) updates) => super.copyWith((message) => updates(message as ListRevisionItemsRequest)) as ListRevisionItemsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRevisionItemsRequest create() => ListRevisionItemsRequest._();
  ListRevisionItemsRequest createEmptyInstance() => create();
  static $pb.PbList<ListRevisionItemsRequest> createRepeated() => $pb.PbList<ListRevisionItemsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRevisionItemsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRevisionItemsRequest>(create);
  static ListRevisionItemsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  ListRevisionItemsRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(ListRevisionItemsRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  ListRevisionItemsRequest_Content ensureContent() => $_ensure(1);
}

class ListRevisionItemsResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListRevisionItemsResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.O3)
    ..pc<RevisionItem>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: RevisionItem.create)
    ..hasRequiredFields = false
  ;

  ListRevisionItemsResponse_Content._() : super();
  factory ListRevisionItemsResponse_Content({
    $core.int? count,
    $core.Iterable<RevisionItem>? items,
  }) {
    final _result = create();
    if (count != null) {
      _result.count = count;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory ListRevisionItemsResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRevisionItemsResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRevisionItemsResponse_Content clone() => ListRevisionItemsResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRevisionItemsResponse_Content copyWith(void Function(ListRevisionItemsResponse_Content) updates) => super.copyWith((message) => updates(message as ListRevisionItemsResponse_Content)) as ListRevisionItemsResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRevisionItemsResponse_Content create() => ListRevisionItemsResponse_Content._();
  ListRevisionItemsResponse_Content createEmptyInstance() => create();
  static $pb.PbList<ListRevisionItemsResponse_Content> createRepeated() => $pb.PbList<ListRevisionItemsResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static ListRevisionItemsResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRevisionItemsResponse_Content>(create);
  static ListRevisionItemsResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<RevisionItem> get items => $_getList(1);
}

class ListRevisionItemsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListRevisionItemsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<ListRevisionItemsResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: ListRevisionItemsResponse_Content.create)
    ..hasRequiredFields = false
  ;

  ListRevisionItemsResponse._() : super();
  factory ListRevisionItemsResponse({
    Common? common,
    ListRevisionItemsResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory ListRevisionItemsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRevisionItemsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRevisionItemsResponse clone() => ListRevisionItemsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRevisionItemsResponse copyWith(void Function(ListRevisionItemsResponse) updates) => super.copyWith((message) => updates(message as ListRevisionItemsResponse)) as ListRevisionItemsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListRevisionItemsResponse create() => ListRevisionItemsResponse._();
  ListRevisionItemsResponse createEmptyInstance() => create();
  static $pb.PbList<ListRevisionItemsResponse> createRepeated() => $pb.PbList<ListRevisionItemsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRevisionItemsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRevisionItemsResponse>(create);
  static ListRevisionItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  ListRevisionItemsResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(ListRevisionItemsResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  ListRevisionItemsResponse_Content ensureContent() => $_ensure(1);
}

class AddRevisionItemsRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddRevisionItemsRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<RevisionItemDetail>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: RevisionItemDetail.create)
    ..hasRequiredFields = false
  ;

  AddRevisionItemsRequest_Content._() : super();
  factory AddRevisionItemsRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? date,
    $core.String? name,
    $core.Iterable<RevisionItemDetail>? items,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (date != null) {
      _result.date = date;
    }
    if (name != null) {
      _result.name = name;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory AddRevisionItemsRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddRevisionItemsRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddRevisionItemsRequest_Content clone() => AddRevisionItemsRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddRevisionItemsRequest_Content copyWith(void Function(AddRevisionItemsRequest_Content) updates) => super.copyWith((message) => updates(message as AddRevisionItemsRequest_Content)) as AddRevisionItemsRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddRevisionItemsRequest_Content create() => AddRevisionItemsRequest_Content._();
  AddRevisionItemsRequest_Content createEmptyInstance() => create();
  static $pb.PbList<AddRevisionItemsRequest_Content> createRepeated() => $pb.PbList<AddRevisionItemsRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static AddRevisionItemsRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddRevisionItemsRequest_Content>(create);
  static AddRevisionItemsRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get date => $_getSZ(2);
  @$pb.TagNumber(3)
  set date($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<RevisionItemDetail> get items => $_getList(4);
}

class AddRevisionItemsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddRevisionItemsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<AddRevisionItemsRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: AddRevisionItemsRequest_Content.create)
    ..hasRequiredFields = false
  ;

  AddRevisionItemsRequest._() : super();
  factory AddRevisionItemsRequest({
    Common? common,
    AddRevisionItemsRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory AddRevisionItemsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddRevisionItemsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddRevisionItemsRequest clone() => AddRevisionItemsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddRevisionItemsRequest copyWith(void Function(AddRevisionItemsRequest) updates) => super.copyWith((message) => updates(message as AddRevisionItemsRequest)) as AddRevisionItemsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddRevisionItemsRequest create() => AddRevisionItemsRequest._();
  AddRevisionItemsRequest createEmptyInstance() => create();
  static $pb.PbList<AddRevisionItemsRequest> createRepeated() => $pb.PbList<AddRevisionItemsRequest>();
  @$core.pragma('dart2js:noInline')
  static AddRevisionItemsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddRevisionItemsRequest>(create);
  static AddRevisionItemsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  AddRevisionItemsRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(AddRevisionItemsRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  AddRevisionItemsRequest_Content ensureContent() => $_ensure(1);
}

class AddRevisionItemsResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddRevisionItemsResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'revisionItemsId')
    ..hasRequiredFields = false
  ;

  AddRevisionItemsResponse_Content._() : super();
  factory AddRevisionItemsResponse_Content({
    $core.String? revisionItemsId,
  }) {
    final _result = create();
    if (revisionItemsId != null) {
      _result.revisionItemsId = revisionItemsId;
    }
    return _result;
  }
  factory AddRevisionItemsResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddRevisionItemsResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddRevisionItemsResponse_Content clone() => AddRevisionItemsResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddRevisionItemsResponse_Content copyWith(void Function(AddRevisionItemsResponse_Content) updates) => super.copyWith((message) => updates(message as AddRevisionItemsResponse_Content)) as AddRevisionItemsResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddRevisionItemsResponse_Content create() => AddRevisionItemsResponse_Content._();
  AddRevisionItemsResponse_Content createEmptyInstance() => create();
  static $pb.PbList<AddRevisionItemsResponse_Content> createRepeated() => $pb.PbList<AddRevisionItemsResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static AddRevisionItemsResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddRevisionItemsResponse_Content>(create);
  static AddRevisionItemsResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get revisionItemsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set revisionItemsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRevisionItemsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevisionItemsId() => clearField(1);
}

class AddRevisionItemsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddRevisionItemsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<AddRevisionItemsResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: AddRevisionItemsResponse_Content.create)
    ..hasRequiredFields = false
  ;

  AddRevisionItemsResponse._() : super();
  factory AddRevisionItemsResponse({
    Common? common,
    AddRevisionItemsResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory AddRevisionItemsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddRevisionItemsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddRevisionItemsResponse clone() => AddRevisionItemsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddRevisionItemsResponse copyWith(void Function(AddRevisionItemsResponse) updates) => super.copyWith((message) => updates(message as AddRevisionItemsResponse)) as AddRevisionItemsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddRevisionItemsResponse create() => AddRevisionItemsResponse._();
  AddRevisionItemsResponse createEmptyInstance() => create();
  static $pb.PbList<AddRevisionItemsResponse> createRepeated() => $pb.PbList<AddRevisionItemsResponse>();
  @$core.pragma('dart2js:noInline')
  static AddRevisionItemsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddRevisionItemsResponse>(create);
  static AddRevisionItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  AddRevisionItemsResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(AddRevisionItemsResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  AddRevisionItemsResponse_Content ensureContent() => $_ensure(1);
}

class DetailRevisionItemsRequest_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DetailRevisionItemsRequest.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storeTerminalId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'revisionItemsId')
    ..hasRequiredFields = false
  ;

  DetailRevisionItemsRequest_Content._() : super();
  factory DetailRevisionItemsRequest_Content({
    $core.String? storeId,
    $core.String? storeTerminalId,
    $core.String? revisionItemsId,
  }) {
    final _result = create();
    if (storeId != null) {
      _result.storeId = storeId;
    }
    if (storeTerminalId != null) {
      _result.storeTerminalId = storeTerminalId;
    }
    if (revisionItemsId != null) {
      _result.revisionItemsId = revisionItemsId;
    }
    return _result;
  }
  factory DetailRevisionItemsRequest_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailRevisionItemsRequest_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailRevisionItemsRequest_Content clone() => DetailRevisionItemsRequest_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailRevisionItemsRequest_Content copyWith(void Function(DetailRevisionItemsRequest_Content) updates) => super.copyWith((message) => updates(message as DetailRevisionItemsRequest_Content)) as DetailRevisionItemsRequest_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DetailRevisionItemsRequest_Content create() => DetailRevisionItemsRequest_Content._();
  DetailRevisionItemsRequest_Content createEmptyInstance() => create();
  static $pb.PbList<DetailRevisionItemsRequest_Content> createRepeated() => $pb.PbList<DetailRevisionItemsRequest_Content>();
  @$core.pragma('dart2js:noInline')
  static DetailRevisionItemsRequest_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailRevisionItemsRequest_Content>(create);
  static DetailRevisionItemsRequest_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get storeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set storeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoreId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoreId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get storeTerminalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set storeTerminalId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStoreTerminalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStoreTerminalId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get revisionItemsId => $_getSZ(2);
  @$pb.TagNumber(3)
  set revisionItemsId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRevisionItemsId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRevisionItemsId() => clearField(3);
}

class DetailRevisionItemsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DetailRevisionItemsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<DetailRevisionItemsRequest_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: DetailRevisionItemsRequest_Content.create)
    ..hasRequiredFields = false
  ;

  DetailRevisionItemsRequest._() : super();
  factory DetailRevisionItemsRequest({
    Common? common,
    DetailRevisionItemsRequest_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory DetailRevisionItemsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailRevisionItemsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailRevisionItemsRequest clone() => DetailRevisionItemsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailRevisionItemsRequest copyWith(void Function(DetailRevisionItemsRequest) updates) => super.copyWith((message) => updates(message as DetailRevisionItemsRequest)) as DetailRevisionItemsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DetailRevisionItemsRequest create() => DetailRevisionItemsRequest._();
  DetailRevisionItemsRequest createEmptyInstance() => create();
  static $pb.PbList<DetailRevisionItemsRequest> createRepeated() => $pb.PbList<DetailRevisionItemsRequest>();
  @$core.pragma('dart2js:noInline')
  static DetailRevisionItemsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailRevisionItemsRequest>(create);
  static DetailRevisionItemsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  DetailRevisionItemsRequest_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(DetailRevisionItemsRequest_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  DetailRevisionItemsRequest_Content ensureContent() => $_ensure(1);
}

class DetailRevisionItemsResponse_Content extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DetailRevisionItemsResponse.Content', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'date')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<RevisionItemDetail>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'items', $pb.PbFieldType.PM, subBuilder: RevisionItemDetail.create)
    ..hasRequiredFields = false
  ;

  DetailRevisionItemsResponse_Content._() : super();
  factory DetailRevisionItemsResponse_Content({
    $core.String? date,
    $core.String? name,
    $core.Iterable<RevisionItemDetail>? items,
  }) {
    final _result = create();
    if (date != null) {
      _result.date = date;
    }
    if (name != null) {
      _result.name = name;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory DetailRevisionItemsResponse_Content.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailRevisionItemsResponse_Content.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailRevisionItemsResponse_Content clone() => DetailRevisionItemsResponse_Content()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailRevisionItemsResponse_Content copyWith(void Function(DetailRevisionItemsResponse_Content) updates) => super.copyWith((message) => updates(message as DetailRevisionItemsResponse_Content)) as DetailRevisionItemsResponse_Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DetailRevisionItemsResponse_Content create() => DetailRevisionItemsResponse_Content._();
  DetailRevisionItemsResponse_Content createEmptyInstance() => create();
  static $pb.PbList<DetailRevisionItemsResponse_Content> createRepeated() => $pb.PbList<DetailRevisionItemsResponse_Content>();
  @$core.pragma('dart2js:noInline')
  static DetailRevisionItemsResponse_Content getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailRevisionItemsResponse_Content>(create);
  static DetailRevisionItemsResponse_Content? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<RevisionItemDetail> get items => $_getList(2);
}

class DetailRevisionItemsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DetailRevisionItemsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'api.v1'), createEmptyInstance: create)
    ..aOM<Common>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'common', subBuilder: Common.create)
    ..aOM<DetailRevisionItemsResponse_Content>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: DetailRevisionItemsResponse_Content.create)
    ..hasRequiredFields = false
  ;

  DetailRevisionItemsResponse._() : super();
  factory DetailRevisionItemsResponse({
    Common? common,
    DetailRevisionItemsResponse_Content? content,
  }) {
    final _result = create();
    if (common != null) {
      _result.common = common;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory DetailRevisionItemsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailRevisionItemsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailRevisionItemsResponse clone() => DetailRevisionItemsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailRevisionItemsResponse copyWith(void Function(DetailRevisionItemsResponse) updates) => super.copyWith((message) => updates(message as DetailRevisionItemsResponse)) as DetailRevisionItemsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DetailRevisionItemsResponse create() => DetailRevisionItemsResponse._();
  DetailRevisionItemsResponse createEmptyInstance() => create();
  static $pb.PbList<DetailRevisionItemsResponse> createRepeated() => $pb.PbList<DetailRevisionItemsResponse>();
  @$core.pragma('dart2js:noInline')
  static DetailRevisionItemsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailRevisionItemsResponse>(create);
  static DetailRevisionItemsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Common get common => $_getN(0);
  @$pb.TagNumber(1)
  set common(Common v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommon() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommon() => clearField(1);
  @$pb.TagNumber(1)
  Common ensureCommon() => $_ensure(0);

  @$pb.TagNumber(2)
  DetailRevisionItemsResponse_Content get content => $_getN(1);
  @$pb.TagNumber(2)
  set content(DetailRevisionItemsResponse_Content v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  DetailRevisionItemsResponse_Content ensureContent() => $_ensure(1);
}

