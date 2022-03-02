///
//  Generated code. Do not modify.
//  source: api/v1/message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use commonDescriptor instead')
const Common$json = const {
  '1': 'Common',
  '2': const [
    const {'1': 'target_name', '3': 1, '4': 1, '5': 9, '10': 'targetName'},
    const {'1': 'target_svc', '3': 2, '4': 1, '5': 9, '10': 'targetSvc'},
    const {'1': 'target_package', '3': 3, '4': 1, '5': 9, '10': 'targetPackage'},
    const {'1': 'target_api', '3': 4, '4': 1, '5': 9, '10': 'targetApi'},
    const {'1': 'source_svc', '3': 5, '4': 1, '5': 9, '10': 'sourceSvc'},
    const {'1': 'source_ver', '3': 6, '4': 1, '5': 9, '10': 'sourceVer'},
    const {'1': 'source_addr', '3': 7, '4': 1, '5': 9, '10': 'sourceAddr'},
    const {'1': 'req_timestamp', '3': 8, '4': 1, '5': 9, '10': 'reqTimestamp'},
    const {'1': 'lauguage_code', '3': 9, '4': 1, '5': 9, '10': 'lauguageCode'},
    const {'1': 'rsp_timestamp', '3': 10, '4': 1, '5': 9, '10': 'rspTimestamp'},
    const {'1': 'tran_no', '3': 11, '4': 1, '5': 9, '10': 'tranNo'},
    const {'1': 'res_code', '3': 12, '4': 1, '5': 9, '10': 'resCode'},
    const {'1': 'res_message', '3': 13, '4': 1, '5': 9, '10': 'resMessage'},
  ],
};

/// Descriptor for `Common`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonDescriptor = $convert.base64Decode('CgZDb21tb24SHwoLdGFyZ2V0X25hbWUYASABKAlSCnRhcmdldE5hbWUSHQoKdGFyZ2V0X3N2YxgCIAEoCVIJdGFyZ2V0U3ZjEiUKDnRhcmdldF9wYWNrYWdlGAMgASgJUg10YXJnZXRQYWNrYWdlEh0KCnRhcmdldF9hcGkYBCABKAlSCXRhcmdldEFwaRIdCgpzb3VyY2Vfc3ZjGAUgASgJUglzb3VyY2VTdmMSHQoKc291cmNlX3ZlchgGIAEoCVIJc291cmNlVmVyEh8KC3NvdXJjZV9hZGRyGAcgASgJUgpzb3VyY2VBZGRyEiMKDXJlcV90aW1lc3RhbXAYCCABKAlSDHJlcVRpbWVzdGFtcBIjCg1sYXVndWFnZV9jb2RlGAkgASgJUgxsYXVndWFnZUNvZGUSIwoNcnNwX3RpbWVzdGFtcBgKIAEoCVIMcnNwVGltZXN0YW1wEhcKB3RyYW5fbm8YCyABKAlSBnRyYW5ObxIZCghyZXNfY29kZRgMIAEoCVIHcmVzQ29kZRIfCgtyZXNfbWVzc2FnZRgNIAEoCVIKcmVzTWVzc2FnZQ==');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
  ],
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eRImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24=');
@$core.Deprecated('Use loginDomainDescriptor instead')
const LoginDomain$json = const {
  '1': 'LoginDomain',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.LoginDomain.Content', '10': 'content'},
  ],
  '3': const [LoginDomain_Content$json],
};

@$core.Deprecated('Use loginDomainDescriptor instead')
const LoginDomain_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'domain', '3': 1, '4': 3, '5': 9, '10': 'domain'},
  ],
};

/// Descriptor for `LoginDomain`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginDomainDescriptor = $convert.base64Decode('CgtMb2dpbkRvbWFpbhImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SNQoHY29udGVudBgCIAEoCzIbLmFwaS52MS5Mb2dpbkRvbWFpbi5Db250ZW50Ugdjb250ZW50GiEKB0NvbnRlbnQSFgoGZG9tYWluGAEgAygJUgZkb21haW4=');
@$core.Deprecated('Use passwordVerificationDescriptor instead')
const PasswordVerification$json = const {
  '1': 'PasswordVerification',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.PasswordVerification.Content', '10': 'content'},
  ],
  '3': const [PasswordVerification_Content$json],
};

@$core.Deprecated('Use passwordVerificationDescriptor instead')
const PasswordVerification_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `PasswordVerification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List passwordVerificationDescriptor = $convert.base64Decode('ChRQYXNzd29yZFZlcmlmaWNhdGlvbhImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SPgoHY29udGVudBgCIAEoCzIkLmFwaS52MS5QYXNzd29yZFZlcmlmaWNhdGlvbi5Db250ZW50Ugdjb250ZW50GiUKB0NvbnRlbnQSGgoIcGFzc3dvcmQYASABKAlSCHBhc3N3b3Jk');
@$core.Deprecated('Use lastModifiedDescriptor instead')
const LastModified$json = const {
  '1': 'LastModified',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.LastModified.Content', '10': 'content'},
  ],
  '3': const [LastModified_Content$json],
};

@$core.Deprecated('Use lastModifiedDescriptor instead')
const LastModified_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'table_names', '3': 1, '4': 3, '5': 9, '10': 'tableNames'},
    const {'1': 'times', '3': 2, '4': 3, '5': 9, '10': 'times'},
  ],
};

/// Descriptor for `LastModified`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lastModifiedDescriptor = $convert.base64Decode('CgxMYXN0TW9kaWZpZWQSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEjYKB2NvbnRlbnQYAiABKAsyHC5hcGkudjEuTGFzdE1vZGlmaWVkLkNvbnRlbnRSB2NvbnRlbnQaQAoHQ29udGVudBIfCgt0YWJsZV9uYW1lcxgBIAMoCVIKdGFibGVOYW1lcxIUCgV0aW1lcxgCIAMoCVIFdGltZXM=');
@$core.Deprecated('Use s3FileDescriptor instead')
const S3File$json = const {
  '1': 'S3File',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.S3File.Content', '10': 'content'},
  ],
  '3': const [S3File_Content$json],
};

@$core.Deprecated('Use s3FileDescriptor instead')
const S3File_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'endpoint', '3': 1, '4': 1, '5': 9, '10': 'endpoint'},
    const {'1': 'region', '3': 2, '4': 1, '5': 9, '10': 'region'},
    const {'1': 'access_key', '3': 3, '4': 1, '5': 9, '10': 'accessKey'},
    const {'1': 'secret_key', '3': 4, '4': 1, '5': 9, '10': 'secretKey'},
    const {'1': 'bucket', '3': 5, '4': 1, '5': 9, '10': 'bucket'},
    const {'1': 'key', '3': 6, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'etag', '3': 7, '4': 1, '5': 9, '10': 'etag'},
    const {'1': 'bucket2', '3': 8, '4': 1, '5': 9, '10': 'bucket2'},
  ],
};

/// Descriptor for `S3File`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List s3FileDescriptor = $convert.base64Decode('CgZTM0ZpbGUSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEjAKB2NvbnRlbnQYAiABKAsyFi5hcGkudjEuUzNGaWxlLkNvbnRlbnRSB2NvbnRlbnQa0wEKB0NvbnRlbnQSGgoIZW5kcG9pbnQYASABKAlSCGVuZHBvaW50EhYKBnJlZ2lvbhgCIAEoCVIGcmVnaW9uEh0KCmFjY2Vzc19rZXkYAyABKAlSCWFjY2Vzc0tleRIdCgpzZWNyZXRfa2V5GAQgASgJUglzZWNyZXRLZXkSFgoGYnVja2V0GAUgASgJUgZidWNrZXQSEAoDa2V5GAYgASgJUgNrZXkSEgoEZXRhZxgHIAEoCVIEZXRhZxIYCgdidWNrZXQyGAggASgJUgdidWNrZXQy');
@$core.Deprecated('Use logMessageDescriptor instead')
const LogMessage$json = const {
  '1': 'LogMessage',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.LogMessage.Content', '10': 'content'},
  ],
  '3': const [LogMessage_Content$json],
};

@$core.Deprecated('Use logMessageDescriptor instead')
const LogMessage_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'log_id', '3': 1, '4': 1, '5': 3, '10': 'logId'},
    const {'1': 'log_text', '3': 2, '4': 1, '5': 9, '10': 'logText'},
    const {'1': 'store_id', '3': 3, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 4, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'modification_time', '3': 5, '4': 1, '5': 9, '10': 'modificationTime'},
    const {'1': 'sending_timestamp', '3': 6, '4': 1, '5': 3, '10': 'sendingTimestamp'},
  ],
};

/// Descriptor for `LogMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logMessageDescriptor = $convert.base64Decode('CgpMb2dNZXNzYWdlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhI0Cgdjb250ZW50GAIgASgLMhouYXBpLnYxLkxvZ01lc3NhZ2UuQ29udGVudFIHY29udGVudBrcAQoHQ29udGVudBIVCgZsb2dfaWQYASABKANSBWxvZ0lkEhkKCGxvZ190ZXh0GAIgASgJUgdsb2dUZXh0EhkKCHN0b3JlX2lkGAMgASgJUgdzdG9yZUlkEioKEXN0b3JlX3Rlcm1pbmFsX2lkGAQgASgJUg9zdG9yZVRlcm1pbmFsSWQSKwoRbW9kaWZpY2F0aW9uX3RpbWUYBSABKAlSEG1vZGlmaWNhdGlvblRpbWUSKwoRc2VuZGluZ190aW1lc3RhbXAYBiABKANSEHNlbmRpbmdUaW1lc3RhbXA=');
@$core.Deprecated('Use paymentApprovalMasterDescriptor instead')
const PaymentApprovalMaster$json = const {
  '1': 'PaymentApprovalMaster',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.PaymentApprovalMaster.Content', '10': 'content'},
  ],
  '3': const [PaymentApprovalMaster_Content$json],
};

@$core.Deprecated('Use paymentApprovalMasterDescriptor instead')
const PaymentApprovalMaster_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'approval_transaction_number', '3': 2, '4': 1, '5': 9, '10': 'approvalTransactionNumber'},
    const {'1': 'transaction_type', '3': 3, '4': 1, '5': 9, '10': 'transactionType'},
    const {'1': 'store_id', '3': 4, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 5, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'source_terminal_id', '3': 6, '4': 1, '5': 9, '10': 'sourceTerminalId'},
    const {'1': 'payment_code', '3': 7, '4': 1, '5': 9, '10': 'paymentCode'},
    const {'1': 'request_type', '3': 8, '4': 1, '5': 9, '10': 'requestType'},
    const {'1': 'amount', '3': 9, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'status', '3': 10, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'response_code', '3': 11, '4': 1, '5': 9, '10': 'responseCode'},
    const {'1': 'start_time', '3': 12, '4': 1, '5': 9, '10': 'startTime'},
    const {'1': 'end_time', '3': 13, '4': 1, '5': 9, '10': 'endTime'},
    const {'1': 'approval_number', '3': 14, '4': 1, '5': 9, '10': 'approvalNumber'},
    const {'1': 'device_code', '3': 15, '4': 1, '5': 9, '10': 'deviceCode'},
    const {'1': 'approval_date', '3': 16, '4': 1, '5': 9, '10': 'approvalDate'},
    const {'1': 'approval_time', '3': 17, '4': 1, '5': 9, '10': 'approvalTime'},
    const {'1': 'res_van', '3': 18, '4': 1, '5': 9, '10': 'resVan'},
    const {'1': 'first_registrant_id', '3': 19, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 20, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 21, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 22, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 23, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `PaymentApprovalMaster`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentApprovalMasterDescriptor = $convert.base64Decode('ChVQYXltZW50QXBwcm92YWxNYXN0ZXISJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEj8KB2NvbnRlbnQYAiABKAsyJS5hcGkudjEuUGF5bWVudEFwcHJvdmFsTWFzdGVyLkNvbnRlbnRSB2NvbnRlbnQa6AYKB0NvbnRlbnQSDgoCaWQYASABKAlSAmlkEj4KG2FwcHJvdmFsX3RyYW5zYWN0aW9uX251bWJlchgCIAEoCVIZYXBwcm92YWxUcmFuc2FjdGlvbk51bWJlchIpChB0cmFuc2FjdGlvbl90eXBlGAMgASgJUg90cmFuc2FjdGlvblR5cGUSGQoIc3RvcmVfaWQYBCABKAlSB3N0b3JlSWQSKgoRc3RvcmVfdGVybWluYWxfaWQYBSABKAlSD3N0b3JlVGVybWluYWxJZBIsChJzb3VyY2VfdGVybWluYWxfaWQYBiABKAlSEHNvdXJjZVRlcm1pbmFsSWQSIQoMcGF5bWVudF9jb2RlGAcgASgJUgtwYXltZW50Q29kZRIhCgxyZXF1ZXN0X3R5cGUYCCABKAlSC3JlcXVlc3RUeXBlEhYKBmFtb3VudBgJIAEoCVIGYW1vdW50EhYKBnN0YXR1cxgKIAEoCVIGc3RhdHVzEiMKDXJlc3BvbnNlX2NvZGUYCyABKAlSDHJlc3BvbnNlQ29kZRIdCgpzdGFydF90aW1lGAwgASgJUglzdGFydFRpbWUSGQoIZW5kX3RpbWUYDSABKAlSB2VuZFRpbWUSJwoPYXBwcm92YWxfbnVtYmVyGA4gASgJUg5hcHByb3ZhbE51bWJlchIfCgtkZXZpY2VfY29kZRgPIAEoCVIKZGV2aWNlQ29kZRIjCg1hcHByb3ZhbF9kYXRlGBAgASgJUgxhcHByb3ZhbERhdGUSIwoNYXBwcm92YWxfdGltZRgRIAEoCVIMYXBwcm92YWxUaW1lEhcKB3Jlc192YW4YEiABKAlSBnJlc1ZhbhIuChNmaXJzdF9yZWdpc3RyYW50X2lkGBMgASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYFCABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGBUgASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYFiABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYFyABKAlSCXN0YXRlQ29kZQ==');
@$core.Deprecated('Use paymentApprovalSrLogDescriptor instead')
const PaymentApprovalSrLog$json = const {
  '1': 'PaymentApprovalSrLog',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.PaymentApprovalSrLog.Content', '10': 'content'},
  ],
  '3': const [PaymentApprovalSrLog_Content$json],
};

@$core.Deprecated('Use paymentApprovalSrLogDescriptor instead')
const PaymentApprovalSrLog_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'approval_transaction_number', '3': 2, '4': 1, '5': 9, '10': 'approvalTransactionNumber'},
    const {'1': 'sr_type', '3': 3, '4': 1, '5': 9, '10': 'srType'},
    const {'1': 'log_data', '3': 4, '4': 1, '5': 9, '10': 'logData'},
    const {'1': 'first_registrant_id', '3': 5, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 6, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 7, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 8, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 9, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `PaymentApprovalSrLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentApprovalSrLogDescriptor = $convert.base64Decode('ChRQYXltZW50QXBwcm92YWxTckxvZxImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SPgoHY29udGVudBgCIAEoCzIkLmFwaS52MS5QYXltZW50QXBwcm92YWxTckxvZy5Db250ZW50Ugdjb250ZW50GvoCCgdDb250ZW50Eg4KAmlkGAEgASgJUgJpZBI+ChthcHByb3ZhbF90cmFuc2FjdGlvbl9udW1iZXIYAiABKAlSGWFwcHJvdmFsVHJhbnNhY3Rpb25OdW1iZXISFwoHc3JfdHlwZRgDIAEoCVIGc3JUeXBlEhkKCGxvZ19kYXRhGAQgASgJUgdsb2dEYXRhEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYBSABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgGIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYByABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgIIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgJIAEoCVIJc3RhdGVDb2Rl');
@$core.Deprecated('Use itemGroupDescriptor instead')
const ItemGroup$json = const {
  '1': 'ItemGroup',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.ItemGroup.Content', '10': 'content'},
  ],
  '3': const [ItemGroup_Content$json],
};

@$core.Deprecated('Use itemGroupDescriptor instead')
const ItemGroup_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'item_group_id', '3': 1, '4': 1, '5': 9, '10': 'itemGroupId'},
    const {'1': 'upper_item_group_id', '3': 2, '4': 1, '5': 9, '10': 'upperItemGroupId'},
    const {'1': 'item_group_name', '3': 3, '4': 1, '5': 9, '10': 'itemGroupName'},
    const {'1': 'item_group_type_code', '3': 4, '4': 1, '5': 9, '10': 'itemGroupTypeCode'},
    const {'1': 'operation_type_code', '3': 5, '4': 1, '5': 9, '10': 'operationTypeCode'},
    const {'1': 'hiding_yn', '3': 6, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 7, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 8, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 9, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 10, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 11, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'store_id', '3': 12, '4': 1, '5': 9, '10': 'storeId'},
  ],
};

/// Descriptor for `ItemGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemGroupDescriptor = $convert.base64Decode('CglJdGVtR3JvdXASJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEjMKB2NvbnRlbnQYAiABKAsyGS5hcGkudjEuSXRlbUdyb3VwLkNvbnRlbnRSB2NvbnRlbnQaigQKB0NvbnRlbnQSIgoNaXRlbV9ncm91cF9pZBgBIAEoCVILaXRlbUdyb3VwSWQSLQoTdXBwZXJfaXRlbV9ncm91cF9pZBgCIAEoCVIQdXBwZXJJdGVtR3JvdXBJZBImCg9pdGVtX2dyb3VwX25hbWUYAyABKAlSDWl0ZW1Hcm91cE5hbWUSLwoUaXRlbV9ncm91cF90eXBlX2NvZGUYBCABKAlSEWl0ZW1Hcm91cFR5cGVDb2RlEi4KE29wZXJhdGlvbl90eXBlX2NvZGUYBSABKAlSEW9wZXJhdGlvblR5cGVDb2RlEhsKCWhpZGluZ195bhgGIAEoCFIIaGlkaW5nWW4SLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgHIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGAggASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgJIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGAogASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGAsgASgJUglzdGF0ZUNvZGUSGQoIc3RvcmVfaWQYDCABKAlSB3N0b3JlSWQ=');
@$core.Deprecated('Use itemDescriptor instead')
const Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.Item.Content', '10': 'content'},
  ],
  '3': const [Item_Content$json],
};

@$core.Deprecated('Use itemDescriptor instead')
const Item_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'item_group_id', '3': 2, '4': 1, '5': 9, '10': 'itemGroupId'},
    const {'1': 'item_code', '3': 3, '4': 1, '5': 9, '10': 'itemCode'},
    const {'1': 'item_name', '3': 4, '4': 1, '5': 9, '10': 'itemName'},
    const {'1': 'operation_type_code', '3': 5, '4': 1, '5': 9, '10': 'operationTypeCode'},
    const {'1': 'sale_type_code', '3': 6, '4': 1, '5': 9, '10': 'saleTypeCode'},
    const {'1': 'price_type_code', '3': 7, '4': 1, '5': 9, '10': 'priceTypeCode'},
    const {'1': 'cost', '3': 8, '4': 1, '5': 1, '10': 'cost'},
    const {'1': 'selling_price', '3': 9, '4': 1, '5': 1, '10': 'sellingPrice'},
    const {'1': 'open_price_yn', '3': 10, '4': 1, '5': 8, '10': 'openPriceYn'},
    const {'1': 'barcode', '3': 11, '4': 1, '5': 9, '10': 'barcode'},
    const {'1': 'apply_tax0_yn', '3': 12, '4': 1, '5': 9, '10': 'applyTax0Yn'},
    const {'1': 'apply_tax1_yn', '3': 13, '4': 1, '5': 9, '10': 'applyTax1Yn'},
    const {'1': 'apply_tax2_yn', '3': 14, '4': 1, '5': 9, '10': 'applyTax2Yn'},
    const {'1': 'apply_discount_yn', '3': 15, '4': 1, '5': 8, '10': 'applyDiscountYn'},
    const {'1': 'hiding_yn', '3': 16, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'inventory_quantity', '3': 17, '4': 1, '5': 1, '10': 'inventoryQuantity'},
    const {'1': 'kitchen_printer_output_yn', '3': 18, '4': 1, '5': 8, '10': 'kitchenPrinterOutputYn'},
    const {'1': 'option_use_type_code', '3': 19, '4': 1, '5': 9, '10': 'optionUseTypeCode'},
    const {'1': 'recommended_item_yn', '3': 20, '4': 1, '5': 8, '10': 'recommendedItemYn'},
    const {'1': 'packing_possible_yn', '3': 21, '4': 1, '5': 8, '10': 'packingPossibleYn'},
    const {'1': 'online_sale_yn', '3': 22, '4': 1, '5': 8, '10': 'onlineSaleYn'},
    const {'1': 'sold_out_yn', '3': 23, '4': 1, '5': 8, '10': 'soldOutYn'},
    const {'1': 'image_url', '3': 24, '4': 1, '5': 9, '10': 'imageUrl'},
    const {'1': 'first_registrant_id', '3': 25, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 26, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 27, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 28, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 29, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'store_id', '3': 30, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'link_code', '3': 31, '4': 1, '5': 9, '10': 'linkCode'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode('CgRJdGVtEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhIuCgdjb250ZW50GAIgASgLMhQuYXBpLnYxLkl0ZW0uQ29udGVudFIHY29udGVudBqtCQoHQ29udGVudBIXCgdpdGVtX2lkGAEgASgJUgZpdGVtSWQSIgoNaXRlbV9ncm91cF9pZBgCIAEoCVILaXRlbUdyb3VwSWQSGwoJaXRlbV9jb2RlGAMgASgJUghpdGVtQ29kZRIbCglpdGVtX25hbWUYBCABKAlSCGl0ZW1OYW1lEi4KE29wZXJhdGlvbl90eXBlX2NvZGUYBSABKAlSEW9wZXJhdGlvblR5cGVDb2RlEiQKDnNhbGVfdHlwZV9jb2RlGAYgASgJUgxzYWxlVHlwZUNvZGUSJgoPcHJpY2VfdHlwZV9jb2RlGAcgASgJUg1wcmljZVR5cGVDb2RlEhIKBGNvc3QYCCABKAFSBGNvc3QSIwoNc2VsbGluZ19wcmljZRgJIAEoAVIMc2VsbGluZ1ByaWNlEiIKDW9wZW5fcHJpY2VfeW4YCiABKAhSC29wZW5QcmljZVluEhgKB2JhcmNvZGUYCyABKAlSB2JhcmNvZGUSIgoNYXBwbHlfdGF4MF95bhgMIAEoCVILYXBwbHlUYXgwWW4SIgoNYXBwbHlfdGF4MV95bhgNIAEoCVILYXBwbHlUYXgxWW4SIgoNYXBwbHlfdGF4Ml95bhgOIAEoCVILYXBwbHlUYXgyWW4SKgoRYXBwbHlfZGlzY291bnRfeW4YDyABKAhSD2FwcGx5RGlzY291bnRZbhIbCgloaWRpbmdfeW4YECABKAhSCGhpZGluZ1luEi0KEmludmVudG9yeV9xdWFudGl0eRgRIAEoAVIRaW52ZW50b3J5UXVhbnRpdHkSOQoZa2l0Y2hlbl9wcmludGVyX291dHB1dF95bhgSIAEoCFIWa2l0Y2hlblByaW50ZXJPdXRwdXRZbhIvChRvcHRpb25fdXNlX3R5cGVfY29kZRgTIAEoCVIRb3B0aW9uVXNlVHlwZUNvZGUSLgoTcmVjb21tZW5kZWRfaXRlbV95bhgUIAEoCFIRcmVjb21tZW5kZWRJdGVtWW4SLgoTcGFja2luZ19wb3NzaWJsZV95bhgVIAEoCFIRcGFja2luZ1Bvc3NpYmxlWW4SJAoOb25saW5lX3NhbGVfeW4YFiABKAhSDG9ubGluZVNhbGVZbhIeCgtzb2xkX291dF95bhgXIAEoCFIJc29sZE91dFluEhsKCWltYWdlX3VybBgYIAEoCVIIaW1hZ2VVcmwSLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgZIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGBogASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgbIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGBwgASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGB0gASgJUglzdGF0ZUNvZGUSGQoIc3RvcmVfaWQYHiABKAlSB3N0b3JlSWQSGwoJbGlua19jb2RlGB8gASgJUghsaW5rQ29kZQ==');
@$core.Deprecated('Use appVerificationDescriptor instead')
const AppVerification$json = const {
  '1': 'AppVerification',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.AppVerification.Content', '10': 'content'},
  ],
  '3': const [AppVerification_Content$json],
};

@$core.Deprecated('Use appVerificationDescriptor instead')
const AppVerification_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'nonce', '3': 1, '4': 1, '5': 9, '10': 'nonce'},
    const {'1': 'ap3_data', '3': 2, '4': 1, '5': 9, '10': 'ap3Data'},
    const {'1': 'key_hint', '3': 3, '4': 1, '5': 9, '10': 'keyHint'},
  ],
};

/// Descriptor for `AppVerification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appVerificationDescriptor = $convert.base64Decode('Cg9BcHBWZXJpZmljYXRpb24SJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEjkKB2NvbnRlbnQYAiABKAsyHy5hcGkudjEuQXBwVmVyaWZpY2F0aW9uLkNvbnRlbnRSB2NvbnRlbnQaVQoHQ29udGVudBIUCgVub25jZRgBIAEoCVIFbm9uY2USGQoIYXAzX2RhdGEYAiABKAlSB2FwM0RhdGESGQoIa2V5X2hpbnQYAyABKAlSB2tleUhpbnQ=');
@$core.Deprecated('Use appRegistrationDescriptor instead')
const AppRegistration$json = const {
  '1': 'AppRegistration',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.AppRegistration.Content', '10': 'content'},
  ],
  '3': const [AppRegistration_Content$json],
};

@$core.Deprecated('Use appRegistrationDescriptor instead')
const AppRegistration_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'login_id', '3': 1, '4': 1, '5': 9, '10': 'loginId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'app_key', '3': 3, '4': 1, '5': 9, '10': 'appKey'},
    const {'1': 'app_pkg_key', '3': 4, '4': 1, '5': 9, '10': 'appPkgKey'},
    const {'1': 'version', '3': 5, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'device_id', '3': 6, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'registration_no', '3': 7, '4': 1, '5': 9, '10': 'registrationNo'},
  ],
};

/// Descriptor for `AppRegistration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appRegistrationDescriptor = $convert.base64Decode('Cg9BcHBSZWdpc3RyYXRpb24SJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEjkKB2NvbnRlbnQYAiABKAsyHy5hcGkudjEuQXBwUmVnaXN0cmF0aW9uLkNvbnRlbnRSB2NvbnRlbnQa6QEKB0NvbnRlbnQSGQoIbG9naW5faWQYASABKAlSB2xvZ2luSWQSKgoRc3RvcmVfdGVybWluYWxfaWQYAiABKAlSD3N0b3JlVGVybWluYWxJZBIXCgdhcHBfa2V5GAMgASgJUgZhcHBLZXkSHgoLYXBwX3BrZ19rZXkYBCABKAlSCWFwcFBrZ0tleRIYCgd2ZXJzaW9uGAUgASgJUgd2ZXJzaW9uEhsKCWRldmljZV9pZBgGIAEoCVIIZGV2aWNlSWQSJwoPcmVnaXN0cmF0aW9uX25vGAcgASgJUg5yZWdpc3RyYXRpb25Obw==');
@$core.Deprecated('Use registrationFormDescriptor instead')
const RegistrationForm$json = const {
  '1': 'RegistrationForm',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.RegistrationForm.Content', '10': 'content'},
  ],
  '3': const [RegistrationForm_Content$json],
};

@$core.Deprecated('Use registrationFormDescriptor instead')
const RegistrationForm_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'login_id', '3': 1, '4': 1, '5': 9, '10': 'loginId'},
    const {'1': 'software', '3': 2, '4': 1, '5': 9, '10': 'software'},
    const {'1': 'service', '3': 3, '4': 1, '5': 9, '10': 'service'},
    const {'1': 'store_terminals', '3': 4, '4': 3, '5': 11, '6': '.api.v1.table.StoreTerminal', '10': 'storeTerminals'},
    const {'1': 'personalInfoAgreement', '3': 5, '4': 1, '5': 9, '10': 'personalInfoAgreement'},
    const {'1': 'marketingInfoAgreement', '3': 6, '4': 1, '5': 9, '10': 'marketingInfoAgreement'},
  ],
};

/// Descriptor for `RegistrationForm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationFormDescriptor = $convert.base64Decode('ChBSZWdpc3RyYXRpb25Gb3JtEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhI6Cgdjb250ZW50GAIgASgLMiAuYXBpLnYxLlJlZ2lzdHJhdGlvbkZvcm0uQ29udGVudFIHY29udGVudBqOAgoHQ29udGVudBIZCghsb2dpbl9pZBgBIAEoCVIHbG9naW5JZBIaCghzb2Z0d2FyZRgCIAEoCVIIc29mdHdhcmUSGAoHc2VydmljZRgDIAEoCVIHc2VydmljZRJECg9zdG9yZV90ZXJtaW5hbHMYBCADKAsyGy5hcGkudjEudGFibGUuU3RvcmVUZXJtaW5hbFIOc3RvcmVUZXJtaW5hbHMSNAoVcGVyc29uYWxJbmZvQWdyZWVtZW50GAUgASgJUhVwZXJzb25hbEluZm9BZ3JlZW1lbnQSNgoWbWFya2V0aW5nSW5mb0FncmVlbWVudBgGIAEoCVIWbWFya2V0aW5nSW5mb0FncmVlbWVudA==');
@$core.Deprecated('Use salesDataDescriptor instead')
const SalesData$json = const {
  '1': 'SalesData',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.SalesData.Content', '10': 'content'},
  ],
  '3': const [SalesData_Content$json],
};

@$core.Deprecated('Use salesDataDescriptor instead')
const SalesData_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'sales_history', '3': 1, '4': 3, '5': 11, '6': '.api.v1.table.SalesHistory', '10': 'salesHistory'},
    const {'1': 'sales_history_item', '3': 2, '4': 3, '5': 11, '6': '.api.v1.table.SalesHistoryItem', '10': 'salesHistoryItem'},
    const {'1': 'sales_account_history', '3': 3, '4': 3, '5': 11, '6': '.api.v1.table.SalesAccountHistory', '10': 'salesAccountHistory'},
    const {'1': 'sales_account_history_details', '3': 4, '4': 3, '5': 11, '6': '.api.v1.table.SalesAccountHistoryDetails', '10': 'salesAccountHistoryDetails'},
    const {'1': 'sales_account_history_tip', '3': 5, '4': 3, '5': 11, '6': '.api.v1.table.SalesAccountHistoryTip', '10': 'salesAccountHistoryTip'},
    const {'1': 'sales_history_discount', '3': 6, '4': 3, '5': 11, '6': '.api.v1.table.SalesHistoryDiscount', '10': 'salesHistoryDiscount'},
  ],
};

/// Descriptor for `SalesData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List salesDataDescriptor = $convert.base64Decode('CglTYWxlc0RhdGESJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEjMKB2NvbnRlbnQYAiABKAsyGS5hcGkudjEuU2FsZXNEYXRhLkNvbnRlbnRSB2NvbnRlbnQalwQKB0NvbnRlbnQSPwoNc2FsZXNfaGlzdG9yeRgBIAMoCzIaLmFwaS52MS50YWJsZS5TYWxlc0hpc3RvcnlSDHNhbGVzSGlzdG9yeRJMChJzYWxlc19oaXN0b3J5X2l0ZW0YAiADKAsyHi5hcGkudjEudGFibGUuU2FsZXNIaXN0b3J5SXRlbVIQc2FsZXNIaXN0b3J5SXRlbRJVChVzYWxlc19hY2NvdW50X2hpc3RvcnkYAyADKAsyIS5hcGkudjEudGFibGUuU2FsZXNBY2NvdW50SGlzdG9yeVITc2FsZXNBY2NvdW50SGlzdG9yeRJrCh1zYWxlc19hY2NvdW50X2hpc3RvcnlfZGV0YWlscxgEIAMoCzIoLmFwaS52MS50YWJsZS5TYWxlc0FjY291bnRIaXN0b3J5RGV0YWlsc1Iac2FsZXNBY2NvdW50SGlzdG9yeURldGFpbHMSXwoZc2FsZXNfYWNjb3VudF9oaXN0b3J5X3RpcBgFIAMoCzIkLmFwaS52MS50YWJsZS5TYWxlc0FjY291bnRIaXN0b3J5VGlwUhZzYWxlc0FjY291bnRIaXN0b3J5VGlwElgKFnNhbGVzX2hpc3RvcnlfZGlzY291bnQYBiADKAsyIi5hcGkudjEudGFibGUuU2FsZXNIaXN0b3J5RGlzY291bnRSFHNhbGVzSGlzdG9yeURpc2NvdW50');
@$core.Deprecated('Use settingsDataDescriptor instead')
const SettingsData$json = const {
  '1': 'SettingsData',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.SettingsData.Content', '10': 'content'},
  ],
  '3': const [SettingsData_Content$json],
};

@$core.Deprecated('Use settingsDataDescriptor instead')
const SettingsData_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store', '3': 1, '4': 3, '5': 11, '6': '.api.v1.table.Store', '10': 'store'},
    const {'1': 'store_terminal_basic_data_item', '3': 2, '4': 3, '5': 11, '6': '.api.v1.table.StoreTerminalBasicDataItem', '10': 'storeTerminalBasicDataItem'},
    const {'1': 'store_terminal', '3': 3, '4': 3, '5': 11, '6': '.api.v1.table.StoreTerminal', '10': 'storeTerminal'},
    const {'1': 'basic_data_item', '3': 4, '4': 3, '5': 11, '6': '.api.v1.table.BasicDataItem', '10': 'basicDataItem'},
  ],
};

/// Descriptor for `SettingsData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settingsDataDescriptor = $convert.base64Decode('CgxTZXR0aW5nc0RhdGESJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEjYKB2NvbnRlbnQYAiABKAsyHC5hcGkudjEuU2V0dGluZ3NEYXRhLkNvbnRlbnRSB2NvbnRlbnQaqwIKB0NvbnRlbnQSKQoFc3RvcmUYASADKAsyEy5hcGkudjEudGFibGUuU3RvcmVSBXN0b3JlEmwKHnN0b3JlX3Rlcm1pbmFsX2Jhc2ljX2RhdGFfaXRlbRgCIAMoCzIoLmFwaS52MS50YWJsZS5TdG9yZVRlcm1pbmFsQmFzaWNEYXRhSXRlbVIac3RvcmVUZXJtaW5hbEJhc2ljRGF0YUl0ZW0SQgoOc3RvcmVfdGVybWluYWwYAyADKAsyGy5hcGkudjEudGFibGUuU3RvcmVUZXJtaW5hbFINc3RvcmVUZXJtaW5hbBJDCg9iYXNpY19kYXRhX2l0ZW0YBCADKAsyGy5hcGkudjEudGFibGUuQmFzaWNEYXRhSXRlbVINYmFzaWNEYXRhSXRlbQ==');
@$core.Deprecated('Use cashierDataDescriptor instead')
const CashierData$json = const {
  '1': 'CashierData',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.CashierData.Content', '10': 'content'},
  ],
  '3': const [CashierData_Content$json],
};

@$core.Deprecated('Use cashierDataDescriptor instead')
const CashierData_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'cashdraw_cash_in_out_history', '3': 1, '4': 3, '5': 11, '6': '.api.v1.table.CashdrawCashInOutHistory', '10': 'cashdrawCashInOutHistory'},
    const {'1': 'cashier_bank_history', '3': 2, '4': 3, '5': 11, '6': '.api.v1.table.CashierBankHistory', '10': 'cashierBankHistory'},
    const {'1': 'cashier_bank_history_bill', '3': 3, '4': 3, '5': 11, '6': '.api.v1.table.CashierBankHistoryBill', '10': 'cashierBankHistoryBill'},
  ],
};

/// Descriptor for `CashierData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cashierDataDescriptor = $convert.base64Decode('CgtDYXNoaWVyRGF0YRImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SNQoHY29udGVudBgCIAEoCzIbLmFwaS52MS5DYXNoaWVyRGF0YS5Db250ZW50Ugdjb250ZW50GqYCCgdDb250ZW50EmYKHGNhc2hkcmF3X2Nhc2hfaW5fb3V0X2hpc3RvcnkYASADKAsyJi5hcGkudjEudGFibGUuQ2FzaGRyYXdDYXNoSW5PdXRIaXN0b3J5UhhjYXNoZHJhd0Nhc2hJbk91dEhpc3RvcnkSUgoUY2FzaGllcl9iYW5rX2hpc3RvcnkYAiADKAsyIC5hcGkudjEudGFibGUuQ2FzaGllckJhbmtIaXN0b3J5UhJjYXNoaWVyQmFua0hpc3RvcnkSXwoZY2FzaGllcl9iYW5rX2hpc3RvcnlfYmlsbBgDIAMoCzIkLmFwaS52MS50YWJsZS5DYXNoaWVyQmFua0hpc3RvcnlCaWxsUhZjYXNoaWVyQmFua0hpc3RvcnlCaWxs');
@$core.Deprecated('Use reportDataDescriptor instead')
const ReportData$json = const {
  '1': 'ReportData',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.ReportData.Content', '10': 'content'},
  ],
  '3': const [ReportData_Content$json],
};

@$core.Deprecated('Use reportDataDescriptor instead')
const ReportData_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'daily_report_history', '3': 1, '4': 3, '5': 11, '6': '.api.v1.table.DailyReportHistory', '10': 'dailyReportHistory'},
    const {'1': 'daily_report_history_payments', '3': 2, '4': 3, '5': 11, '6': '.api.v1.table.DailyReportHistoryPayments', '10': 'dailyReportHistoryPayments'},
  ],
};

/// Descriptor for `ReportData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportDataDescriptor = $convert.base64Decode('CgpSZXBvcnREYXRhEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhI0Cgdjb250ZW50GAIgASgLMhouYXBpLnYxLlJlcG9ydERhdGEuQ29udGVudFIHY29udGVudBrKAQoHQ29udGVudBJSChRkYWlseV9yZXBvcnRfaGlzdG9yeRgBIAMoCzIgLmFwaS52MS50YWJsZS5EYWlseVJlcG9ydEhpc3RvcnlSEmRhaWx5UmVwb3J0SGlzdG9yeRJrCh1kYWlseV9yZXBvcnRfaGlzdG9yeV9wYXltZW50cxgCIAMoCzIoLmFwaS52MS50YWJsZS5EYWlseVJlcG9ydEhpc3RvcnlQYXltZW50c1IaZGFpbHlSZXBvcnRIaXN0b3J5UGF5bWVudHM=');
@$core.Deprecated('Use itemDataDescriptor instead')
const ItemData$json = const {
  '1': 'ItemData',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.ItemData.Content', '10': 'content'},
  ],
  '3': const [ItemData_Content$json],
};

@$core.Deprecated('Use itemDataDescriptor instead')
const ItemData_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'menu_group_use', '3': 1, '4': 3, '5': 11, '6': '.api.v1.table.MenuGroupUse', '10': 'menuGroupUse'},
    const {'1': 'menu_group', '3': 2, '4': 3, '5': 11, '6': '.api.v1.table.MenuGroup', '10': 'menuGroup'},
    const {'1': 'menu_item', '3': 3, '4': 3, '5': 11, '6': '.api.v1.table.MenuItem', '10': 'menuItem'},
    const {'1': 'item', '3': 4, '4': 3, '5': 11, '6': '.api.v1.table.Item', '10': 'item'},
    const {'1': 'item_group', '3': 5, '4': 3, '5': 11, '6': '.api.v1.table.ItemGroup', '10': 'itemGroup'},
  ],
};

/// Descriptor for `ItemData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDataDescriptor = $convert.base64Decode('CghJdGVtRGF0YRImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SMgoHY29udGVudBgCIAEoCzIYLmFwaS52MS5JdGVtRGF0YS5Db250ZW50Ugdjb250ZW50GpgCCgdDb250ZW50EkAKDm1lbnVfZ3JvdXBfdXNlGAEgAygLMhouYXBpLnYxLnRhYmxlLk1lbnVHcm91cFVzZVIMbWVudUdyb3VwVXNlEjYKCm1lbnVfZ3JvdXAYAiADKAsyFy5hcGkudjEudGFibGUuTWVudUdyb3VwUgltZW51R3JvdXASMwoJbWVudV9pdGVtGAMgAygLMhYuYXBpLnYxLnRhYmxlLk1lbnVJdGVtUghtZW51SXRlbRImCgRpdGVtGAQgAygLMhIuYXBpLnYxLnRhYmxlLkl0ZW1SBGl0ZW0SNgoKaXRlbV9ncm91cBgFIAMoCzIXLmFwaS52MS50YWJsZS5JdGVtR3JvdXBSCWl0ZW1Hcm91cA==');
@$core.Deprecated('Use licenseInfoDescriptor instead')
const LicenseInfo$json = const {
  '1': 'LicenseInfo',
  '2': const [
    const {'1': 'ver', '3': 1, '4': 1, '5': 9, '10': 'ver'},
    const {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'pkg', '3': 3, '4': 1, '5': 9, '10': 'pkg'},
    const {'1': 'sign', '3': 4, '4': 1, '5': 9, '10': 'sign'},
  ],
};

/// Descriptor for `LicenseInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List licenseInfoDescriptor = $convert.base64Decode('CgtMaWNlbnNlSW5mbxIQCgN2ZXIYASABKAlSA3ZlchIQCgNrZXkYAiABKAlSA2tleRIQCgNwa2cYAyABKAlSA3BrZxISCgRzaWduGAQgASgJUgRzaWdu');
@$core.Deprecated('Use licensePermissionDescriptor instead')
const LicensePermission$json = const {
  '1': 'LicensePermission',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'store_id', '3': 2, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'terminal_id', '3': 3, '4': 1, '5': 9, '10': 'terminalId'},
    const {'1': 'reg_date', '3': 4, '4': 1, '5': 9, '10': 'regDate'},
    const {'1': 'expire_date', '3': 5, '4': 1, '5': 3, '10': 'expireDate'},
    const {'1': 'update_date', '3': 6, '4': 1, '5': 9, '10': 'updateDate'},
    const {'1': 'app_version', '3': 7, '4': 1, '5': 9, '10': 'appVersion'},
    const {'1': 'app_version_code', '3': 8, '4': 1, '5': 9, '10': 'appVersionCode'},
    const {'1': 'sign', '3': 9, '4': 1, '5': 9, '10': 'sign'},
    const {'1': 'state', '3': 10, '4': 1, '5': 9, '10': 'state'},
    const {'1': 'note', '3': 11, '4': 1, '5': 9, '10': 'note'},
  ],
};

/// Descriptor for `LicensePermission`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List licensePermissionDescriptor = $convert.base64Decode('ChFMaWNlbnNlUGVybWlzc2lvbhIbCglkZXZpY2VfaWQYASABKAlSCGRldmljZUlkEhkKCHN0b3JlX2lkGAIgASgJUgdzdG9yZUlkEh8KC3Rlcm1pbmFsX2lkGAMgASgJUgp0ZXJtaW5hbElkEhkKCHJlZ19kYXRlGAQgASgJUgdyZWdEYXRlEh8KC2V4cGlyZV9kYXRlGAUgASgDUgpleHBpcmVEYXRlEh8KC3VwZGF0ZV9kYXRlGAYgASgJUgp1cGRhdGVEYXRlEh8KC2FwcF92ZXJzaW9uGAcgASgJUgphcHBWZXJzaW9uEigKEGFwcF92ZXJzaW9uX2NvZGUYCCABKAlSDmFwcFZlcnNpb25Db2RlEhIKBHNpZ24YCSABKAlSBHNpZ24SFAoFc3RhdGUYCiABKAlSBXN0YXRlEhIKBG5vdGUYCyABKAlSBG5vdGU=');
@$core.Deprecated('Use appVersionInfoDescriptor instead')
const AppVersionInfo$json = const {
  '1': 'AppVersionInfo',
  '2': const [
    const {'1': 'min_ver', '3': 1, '4': 1, '5': 9, '10': 'minVer'},
    const {'1': 'last_ver', '3': 2, '4': 1, '5': 9, '10': 'lastVer'},
    const {'1': 'is_lock', '3': 3, '4': 1, '5': 9, '10': 'isLock'},
  ],
};

/// Descriptor for `AppVersionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appVersionInfoDescriptor = $convert.base64Decode('Cg5BcHBWZXJzaW9uSW5mbxIXCgdtaW5fdmVyGAEgASgJUgZtaW5WZXISGQoIbGFzdF92ZXIYAiABKAlSB2xhc3RWZXISFwoHaXNfbG9jaxgDIAEoCVIGaXNMb2Nr');
@$core.Deprecated('Use appLicenseRegisterDescriptor instead')
const AppLicenseRegister$json = const {
  '1': 'AppLicenseRegister',
  '2': const [
    const {'1': 'app_reg_id', '3': 1, '4': 1, '5': 9, '10': 'appRegId'},
    const {'1': 'license_issued_id', '3': 2, '4': 1, '5': 9, '10': 'licenseIssuedId'},
    const {'1': 'store_id', '3': 3, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 4, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'device_unique_value', '3': 5, '4': 1, '5': 9, '10': 'deviceUniqueValue'},
    const {'1': 'app_package_id', '3': 6, '4': 1, '5': 9, '10': 'appPackageId'},
    const {'1': 'reg_date', '3': 7, '4': 1, '5': 9, '10': 'regDate'},
    const {'1': 'open_date', '3': 8, '4': 1, '5': 9, '10': 'openDate'},
    const {'1': 'expire_date', '3': 9, '4': 1, '5': 3, '10': 'expireDate'},
    const {'1': 'license_stat', '3': 10, '4': 1, '5': 9, '10': 'licenseStat'},
    const {'1': 'note', '3': 11, '4': 1, '5': 9, '10': 'note'},
    const {'1': 'custom_version_yn', '3': 12, '4': 1, '5': 9, '10': 'customVersionYn'},
    const {'1': 'app_version_name', '3': 13, '4': 1, '5': 9, '10': 'appVersionName'},
    const {'1': 'app_current_version_code', '3': 14, '4': 1, '5': 9, '10': 'appCurrentVersionCode'},
    const {'1': 'app_min_version_code', '3': 15, '4': 1, '5': 9, '10': 'appMinVersionCode'},
    const {'1': 'app_last_version_code', '3': 16, '4': 1, '5': 9, '10': 'appLastVersionCode'},
    const {'1': 'state_code', '3': 17, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `AppLicenseRegister`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appLicenseRegisterDescriptor = $convert.base64Decode('ChJBcHBMaWNlbnNlUmVnaXN0ZXISHAoKYXBwX3JlZ19pZBgBIAEoCVIIYXBwUmVnSWQSKgoRbGljZW5zZV9pc3N1ZWRfaWQYAiABKAlSD2xpY2Vuc2VJc3N1ZWRJZBIZCghzdG9yZV9pZBgDIAEoCVIHc3RvcmVJZBIqChFzdG9yZV90ZXJtaW5hbF9pZBgEIAEoCVIPc3RvcmVUZXJtaW5hbElkEi4KE2RldmljZV91bmlxdWVfdmFsdWUYBSABKAlSEWRldmljZVVuaXF1ZVZhbHVlEiQKDmFwcF9wYWNrYWdlX2lkGAYgASgJUgxhcHBQYWNrYWdlSWQSGQoIcmVnX2RhdGUYByABKAlSB3JlZ0RhdGUSGwoJb3Blbl9kYXRlGAggASgJUghvcGVuRGF0ZRIfCgtleHBpcmVfZGF0ZRgJIAEoA1IKZXhwaXJlRGF0ZRIhCgxsaWNlbnNlX3N0YXQYCiABKAlSC2xpY2Vuc2VTdGF0EhIKBG5vdGUYCyABKAlSBG5vdGUSKgoRY3VzdG9tX3ZlcnNpb25feW4YDCABKAlSD2N1c3RvbVZlcnNpb25ZbhIoChBhcHBfdmVyc2lvbl9uYW1lGA0gASgJUg5hcHBWZXJzaW9uTmFtZRI3ChhhcHBfY3VycmVudF92ZXJzaW9uX2NvZGUYDiABKAlSFWFwcEN1cnJlbnRWZXJzaW9uQ29kZRIvChRhcHBfbWluX3ZlcnNpb25fY29kZRgPIAEoCVIRYXBwTWluVmVyc2lvbkNvZGUSMQoVYXBwX2xhc3RfdmVyc2lvbl9jb2RlGBAgASgJUhJhcHBMYXN0VmVyc2lvbkNvZGUSHQoKc3RhdGVfY29kZRgRIAEoCVIJc3RhdGVDb2Rl');
@$core.Deprecated('Use issueLicenseRequestDescriptor instead')
const IssueLicenseRequest$json = const {
  '1': 'IssueLicenseRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.IssueLicenseRequest.Content', '10': 'content'},
  ],
  '3': const [IssueLicenseRequest_Content$json],
};

@$core.Deprecated('Use issueLicenseRequestDescriptor instead')
const IssueLicenseRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'license_info', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LicenseInfo', '10': 'licenseInfo'},
  ],
};

/// Descriptor for `IssueLicenseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueLicenseRequestDescriptor = $convert.base64Decode('ChNJc3N1ZUxpY2Vuc2VSZXF1ZXN0EiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhI9Cgdjb250ZW50GAIgASgLMiMuYXBpLnYxLklzc3VlTGljZW5zZVJlcXVlc3QuQ29udGVudFIHY29udGVudBpBCgdDb250ZW50EjYKDGxpY2Vuc2VfaW5mbxgBIAEoCzITLmFwaS52MS5MaWNlbnNlSW5mb1ILbGljZW5zZUluZm8=');
@$core.Deprecated('Use issueLicenseResponseDescriptor instead')
const IssueLicenseResponse$json = const {
  '1': 'IssueLicenseResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.IssueLicenseResponse.Content', '10': 'content'},
  ],
  '3': const [IssueLicenseResponse_Content$json],
};

@$core.Deprecated('Use issueLicenseResponseDescriptor instead')
const IssueLicenseResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'license_info', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LicenseInfo', '10': 'licenseInfo'},
  ],
};

/// Descriptor for `IssueLicenseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issueLicenseResponseDescriptor = $convert.base64Decode('ChRJc3N1ZUxpY2Vuc2VSZXNwb25zZRImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SPgoHY29udGVudBgCIAEoCzIkLmFwaS52MS5Jc3N1ZUxpY2Vuc2VSZXNwb25zZS5Db250ZW50Ugdjb250ZW50GkEKB0NvbnRlbnQSNgoMbGljZW5zZV9pbmZvGAEgASgLMhMuYXBpLnYxLkxpY2Vuc2VJbmZvUgtsaWNlbnNlSW5mbw==');
@$core.Deprecated('Use requestPermissionRequestDescriptor instead')
const RequestPermissionRequest$json = const {
  '1': 'RequestPermissionRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.RequestPermissionRequest.Content', '10': 'content'},
  ],
  '3': const [RequestPermissionRequest_Content$json],
};

@$core.Deprecated('Use requestPermissionRequestDescriptor instead')
const RequestPermissionRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'license_info', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LicenseInfo', '10': 'licenseInfo'},
    const {'1': 'permission', '3': 2, '4': 1, '5': 11, '6': '.api.v1.LicensePermission', '10': 'permission'},
  ],
};

/// Descriptor for `RequestPermissionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestPermissionRequestDescriptor = $convert.base64Decode('ChhSZXF1ZXN0UGVybWlzc2lvblJlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkIKB2NvbnRlbnQYAiABKAsyKC5hcGkudjEuUmVxdWVzdFBlcm1pc3Npb25SZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQafAoHQ29udGVudBI2CgxsaWNlbnNlX2luZm8YASABKAsyEy5hcGkudjEuTGljZW5zZUluZm9SC2xpY2Vuc2VJbmZvEjkKCnBlcm1pc3Npb24YAiABKAsyGS5hcGkudjEuTGljZW5zZVBlcm1pc3Npb25SCnBlcm1pc3Npb24=');
@$core.Deprecated('Use requestPermissionResponseDescriptor instead')
const RequestPermissionResponse$json = const {
  '1': 'RequestPermissionResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.RequestPermissionResponse.Content', '10': 'content'},
  ],
  '3': const [RequestPermissionResponse_Content$json],
};

@$core.Deprecated('Use requestPermissionResponseDescriptor instead')
const RequestPermissionResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'license_info', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LicenseInfo', '10': 'licenseInfo'},
    const {'1': 'permission', '3': 2, '4': 1, '5': 11, '6': '.api.v1.LicensePermission', '10': 'permission'},
  ],
};

/// Descriptor for `RequestPermissionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestPermissionResponseDescriptor = $convert.base64Decode('ChlSZXF1ZXN0UGVybWlzc2lvblJlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhJDCgdjb250ZW50GAIgASgLMikuYXBpLnYxLlJlcXVlc3RQZXJtaXNzaW9uUmVzcG9uc2UuQ29udGVudFIHY29udGVudBp8CgdDb250ZW50EjYKDGxpY2Vuc2VfaW5mbxgBIAEoCzITLmFwaS52MS5MaWNlbnNlSW5mb1ILbGljZW5zZUluZm8SOQoKcGVybWlzc2lvbhgCIAEoCzIZLmFwaS52MS5MaWNlbnNlUGVybWlzc2lvblIKcGVybWlzc2lvbg==');
@$core.Deprecated('Use confirmPermissionRequestDescriptor instead')
const ConfirmPermissionRequest$json = const {
  '1': 'ConfirmPermissionRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.ConfirmPermissionRequest.Content', '10': 'content'},
  ],
  '3': const [ConfirmPermissionRequest_Content$json],
};

@$core.Deprecated('Use confirmPermissionRequestDescriptor instead')
const ConfirmPermissionRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'license_info', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LicenseInfo', '10': 'licenseInfo'},
    const {'1': 'permission', '3': 2, '4': 1, '5': 11, '6': '.api.v1.LicensePermission', '10': 'permission'},
  ],
};

/// Descriptor for `ConfirmPermissionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confirmPermissionRequestDescriptor = $convert.base64Decode('ChhDb25maXJtUGVybWlzc2lvblJlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkIKB2NvbnRlbnQYAiABKAsyKC5hcGkudjEuQ29uZmlybVBlcm1pc3Npb25SZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQafAoHQ29udGVudBI2CgxsaWNlbnNlX2luZm8YASABKAsyEy5hcGkudjEuTGljZW5zZUluZm9SC2xpY2Vuc2VJbmZvEjkKCnBlcm1pc3Npb24YAiABKAsyGS5hcGkudjEuTGljZW5zZVBlcm1pc3Npb25SCnBlcm1pc3Npb24=');
@$core.Deprecated('Use confirmPermissionResponseDescriptor instead')
const ConfirmPermissionResponse$json = const {
  '1': 'ConfirmPermissionResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.ConfirmPermissionResponse.Content', '10': 'content'},
  ],
  '3': const [ConfirmPermissionResponse_Content$json],
};

@$core.Deprecated('Use confirmPermissionResponseDescriptor instead')
const ConfirmPermissionResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'license_info', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LicenseInfo', '10': 'licenseInfo'},
    const {'1': 'permission', '3': 2, '4': 1, '5': 11, '6': '.api.v1.LicensePermission', '10': 'permission'},
  ],
};

/// Descriptor for `ConfirmPermissionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confirmPermissionResponseDescriptor = $convert.base64Decode('ChlDb25maXJtUGVybWlzc2lvblJlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhJDCgdjb250ZW50GAIgASgLMikuYXBpLnYxLkNvbmZpcm1QZXJtaXNzaW9uUmVzcG9uc2UuQ29udGVudFIHY29udGVudBp8CgdDb250ZW50EjYKDGxpY2Vuc2VfaW5mbxgBIAEoCzITLmFwaS52MS5MaWNlbnNlSW5mb1ILbGljZW5zZUluZm8SOQoKcGVybWlzc2lvbhgCIAEoCzIZLmFwaS52MS5MaWNlbnNlUGVybWlzc2lvblIKcGVybWlzc2lvbg==');
@$core.Deprecated('Use verifyLicenseRequestDescriptor instead')
const VerifyLicenseRequest$json = const {
  '1': 'VerifyLicenseRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.VerifyLicenseRequest.Content', '10': 'content'},
  ],
  '3': const [VerifyLicenseRequest_Content$json],
};

@$core.Deprecated('Use verifyLicenseRequestDescriptor instead')
const VerifyLicenseRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'license_info', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LicenseInfo', '10': 'licenseInfo'},
    const {'1': 'permission', '3': 2, '4': 1, '5': 11, '6': '.api.v1.LicensePermission', '10': 'permission'},
    const {'1': 'app_ver_info', '3': 3, '4': 1, '5': 11, '6': '.api.v1.AppVersionInfo', '10': 'appVerInfo'},
  ],
};

/// Descriptor for `VerifyLicenseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyLicenseRequestDescriptor = $convert.base64Decode('ChRWZXJpZnlMaWNlbnNlUmVxdWVzdBImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SPgoHY29udGVudBgCIAEoCzIkLmFwaS52MS5WZXJpZnlMaWNlbnNlUmVxdWVzdC5Db250ZW50Ugdjb250ZW50GrYBCgdDb250ZW50EjYKDGxpY2Vuc2VfaW5mbxgBIAEoCzITLmFwaS52MS5MaWNlbnNlSW5mb1ILbGljZW5zZUluZm8SOQoKcGVybWlzc2lvbhgCIAEoCzIZLmFwaS52MS5MaWNlbnNlUGVybWlzc2lvblIKcGVybWlzc2lvbhI4CgxhcHBfdmVyX2luZm8YAyABKAsyFi5hcGkudjEuQXBwVmVyc2lvbkluZm9SCmFwcFZlckluZm8=');
@$core.Deprecated('Use verifyLicenseResponseDescriptor instead')
const VerifyLicenseResponse$json = const {
  '1': 'VerifyLicenseResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.VerifyLicenseResponse.Content', '10': 'content'},
  ],
  '3': const [VerifyLicenseResponse_Content$json],
};

@$core.Deprecated('Use verifyLicenseResponseDescriptor instead')
const VerifyLicenseResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'license_info', '3': 1, '4': 1, '5': 11, '6': '.api.v1.LicenseInfo', '10': 'licenseInfo'},
    const {'1': 'permission', '3': 2, '4': 1, '5': 11, '6': '.api.v1.LicensePermission', '10': 'permission'},
    const {'1': 'app_ver_info', '3': 3, '4': 1, '5': 11, '6': '.api.v1.AppVersionInfo', '10': 'appVerInfo'},
  ],
};

/// Descriptor for `VerifyLicenseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyLicenseResponseDescriptor = $convert.base64Decode('ChVWZXJpZnlMaWNlbnNlUmVzcG9uc2USJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEj8KB2NvbnRlbnQYAiABKAsyJS5hcGkudjEuVmVyaWZ5TGljZW5zZVJlc3BvbnNlLkNvbnRlbnRSB2NvbnRlbnQatgEKB0NvbnRlbnQSNgoMbGljZW5zZV9pbmZvGAEgASgLMhMuYXBpLnYxLkxpY2Vuc2VJbmZvUgtsaWNlbnNlSW5mbxI5CgpwZXJtaXNzaW9uGAIgASgLMhkuYXBpLnYxLkxpY2Vuc2VQZXJtaXNzaW9uUgpwZXJtaXNzaW9uEjgKDGFwcF92ZXJfaW5mbxgDIAEoCzIWLmFwaS52MS5BcHBWZXJzaW9uSW5mb1IKYXBwVmVySW5mbw==');
@$core.Deprecated('Use getLicenseListRequestDescriptor instead')
const GetLicenseListRequest$json = const {
  '1': 'GetLicenseListRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.GetLicenseListRequest.Content', '10': 'content'},
  ],
  '3': const [GetLicenseListRequest_Content$json],
};

@$core.Deprecated('Use getLicenseListRequestDescriptor instead')
const GetLicenseListRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'page', '3': 2, '4': 1, '5': 5, '10': 'page'},
    const {'1': 'limit', '3': 3, '4': 1, '5': 5, '10': 'limit'},
    const {'1': 'order_store_id', '3': 4, '4': 1, '5': 5, '10': 'orderStoreId'},
    const {'1': 'order_app_package_id', '3': 5, '4': 1, '5': 5, '10': 'orderAppPackageId'},
    const {'1': 'order_open_date', '3': 6, '4': 1, '5': 5, '10': 'orderOpenDate'},
    const {'1': 'order_expire_date', '3': 7, '4': 1, '5': 5, '10': 'orderExpireDate'},
    const {'1': 'order_license_stat', '3': 8, '4': 1, '5': 5, '10': 'orderLicenseStat'},
  ],
};

/// Descriptor for `GetLicenseListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLicenseListRequestDescriptor = $convert.base64Decode('ChVHZXRMaWNlbnNlTGlzdFJlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEj8KB2NvbnRlbnQYAiABKAsyJS5hcGkudjEuR2V0TGljZW5zZUxpc3RSZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQapwIKB0NvbnRlbnQSGQoIc3RvcmVfaWQYASABKAlSB3N0b3JlSWQSEgoEcGFnZRgCIAEoBVIEcGFnZRIUCgVsaW1pdBgDIAEoBVIFbGltaXQSJAoOb3JkZXJfc3RvcmVfaWQYBCABKAVSDG9yZGVyU3RvcmVJZBIvChRvcmRlcl9hcHBfcGFja2FnZV9pZBgFIAEoBVIRb3JkZXJBcHBQYWNrYWdlSWQSJgoPb3JkZXJfb3Blbl9kYXRlGAYgASgFUg1vcmRlck9wZW5EYXRlEioKEW9yZGVyX2V4cGlyZV9kYXRlGAcgASgFUg9vcmRlckV4cGlyZURhdGUSLAoSb3JkZXJfbGljZW5zZV9zdGF0GAggASgFUhBvcmRlckxpY2Vuc2VTdGF0');
@$core.Deprecated('Use getLicenseListResponseDescriptor instead')
const GetLicenseListResponse$json = const {
  '1': 'GetLicenseListResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.GetLicenseListResponse.Content', '10': 'content'},
  ],
  '3': const [GetLicenseListResponse_Content$json],
};

@$core.Deprecated('Use getLicenseListResponseDescriptor instead')
const GetLicenseListResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'item', '3': 1, '4': 3, '5': 11, '6': '.api.v1.AppLicenseRegister', '10': 'item'},
  ],
};

/// Descriptor for `GetLicenseListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLicenseListResponseDescriptor = $convert.base64Decode('ChZHZXRMaWNlbnNlTGlzdFJlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhJACgdjb250ZW50GAIgASgLMiYuYXBpLnYxLkdldExpY2Vuc2VMaXN0UmVzcG9uc2UuQ29udGVudFIHY29udGVudBo5CgdDb250ZW50Ei4KBGl0ZW0YASADKAsyGi5hcGkudjEuQXBwTGljZW5zZVJlZ2lzdGVyUgRpdGVt');
@$core.Deprecated('Use getLicenseDetailRequestDescriptor instead')
const GetLicenseDetailRequest$json = const {
  '1': 'GetLicenseDetailRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.GetLicenseDetailRequest.Content', '10': 'content'},
  ],
  '3': const [GetLicenseDetailRequest_Content$json],
};

@$core.Deprecated('Use getLicenseDetailRequestDescriptor instead')
const GetLicenseDetailRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'app_reg_id', '3': 2, '4': 1, '5': 9, '10': 'appRegId'},
  ],
};

/// Descriptor for `GetLicenseDetailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLicenseDetailRequestDescriptor = $convert.base64Decode('ChdHZXRMaWNlbnNlRGV0YWlsUmVxdWVzdBImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SQQoHY29udGVudBgCIAEoCzInLmFwaS52MS5HZXRMaWNlbnNlRGV0YWlsUmVxdWVzdC5Db250ZW50Ugdjb250ZW50GkIKB0NvbnRlbnQSGQoIc3RvcmVfaWQYASABKAlSB3N0b3JlSWQSHAoKYXBwX3JlZ19pZBgCIAEoCVIIYXBwUmVnSWQ=');
@$core.Deprecated('Use getLicenseDetailResponseDescriptor instead')
const GetLicenseDetailResponse$json = const {
  '1': 'GetLicenseDetailResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.GetLicenseDetailResponse.Content', '10': 'content'},
  ],
  '3': const [GetLicenseDetailResponse_Content$json],
};

@$core.Deprecated('Use getLicenseDetailResponseDescriptor instead')
const GetLicenseDetailResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.api.v1.AppLicenseRegister', '10': 'item'},
  ],
};

/// Descriptor for `GetLicenseDetailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLicenseDetailResponseDescriptor = $convert.base64Decode('ChhHZXRMaWNlbnNlRGV0YWlsUmVzcG9uc2USJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkIKB2NvbnRlbnQYAiABKAsyKC5hcGkudjEuR2V0TGljZW5zZURldGFpbFJlc3BvbnNlLkNvbnRlbnRSB2NvbnRlbnQaOQoHQ29udGVudBIuCgRpdGVtGAEgASgLMhouYXBpLnYxLkFwcExpY2Vuc2VSZWdpc3RlclIEaXRlbQ==');
@$core.Deprecated('Use updateLicenseInfoRequestDescriptor instead')
const UpdateLicenseInfoRequest$json = const {
  '1': 'UpdateLicenseInfoRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.UpdateLicenseInfoRequest.Content', '10': 'content'},
  ],
  '3': const [UpdateLicenseInfoRequest_Content$json],
};

@$core.Deprecated('Use updateLicenseInfoRequestDescriptor instead')
const UpdateLicenseInfoRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'app_reg_id', '3': 2, '4': 1, '5': 9, '10': 'appRegId'},
    const {'1': 'expire_date', '3': 3, '4': 1, '5': 3, '10': 'expireDate'},
    const {'1': 'license_stat', '3': 4, '4': 1, '5': 9, '10': 'licenseStat'},
    const {'1': 'note', '3': 5, '4': 1, '5': 9, '10': 'note'},
    const {'1': 'custom_version_yn', '3': 6, '4': 1, '5': 9, '10': 'customVersionYn'},
    const {'1': 'app_version_name', '3': 7, '4': 1, '5': 9, '10': 'appVersionName'},
  ],
};

/// Descriptor for `UpdateLicenseInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateLicenseInfoRequestDescriptor = $convert.base64Decode('ChhVcGRhdGVMaWNlbnNlSW5mb1JlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkIKB2NvbnRlbnQYAiABKAsyKC5hcGkudjEuVXBkYXRlTGljZW5zZUluZm9SZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQa8AEKB0NvbnRlbnQSGQoIc3RvcmVfaWQYASABKAlSB3N0b3JlSWQSHAoKYXBwX3JlZ19pZBgCIAEoCVIIYXBwUmVnSWQSHwoLZXhwaXJlX2RhdGUYAyABKANSCmV4cGlyZURhdGUSIQoMbGljZW5zZV9zdGF0GAQgASgJUgtsaWNlbnNlU3RhdBISCgRub3RlGAUgASgJUgRub3RlEioKEWN1c3RvbV92ZXJzaW9uX3luGAYgASgJUg9jdXN0b21WZXJzaW9uWW4SKAoQYXBwX3ZlcnNpb25fbmFtZRgHIAEoCVIOYXBwVmVyc2lvbk5hbWU=');
@$core.Deprecated('Use updateLicenseInfoResponseDescriptor instead')
const UpdateLicenseInfoResponse$json = const {
  '1': 'UpdateLicenseInfoResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.UpdateLicenseInfoResponse.Content', '10': 'content'},
  ],
  '3': const [UpdateLicenseInfoResponse_Content$json],
};

@$core.Deprecated('Use updateLicenseInfoResponseDescriptor instead')
const UpdateLicenseInfoResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'item', '3': 1, '4': 1, '5': 11, '6': '.api.v1.AppLicenseRegister', '10': 'item'},
  ],
};

/// Descriptor for `UpdateLicenseInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateLicenseInfoResponseDescriptor = $convert.base64Decode('ChlVcGRhdGVMaWNlbnNlSW5mb1Jlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhJDCgdjb250ZW50GAIgASgLMikuYXBpLnYxLlVwZGF0ZUxpY2Vuc2VJbmZvUmVzcG9uc2UuQ29udGVudFIHY29udGVudBo5CgdDb250ZW50Ei4KBGl0ZW0YASABKAsyGi5hcGkudjEuQXBwTGljZW5zZVJlZ2lzdGVyUgRpdGVt');
@$core.Deprecated('Use tableLockDescriptor instead')
const TableLock$json = const {
  '1': 'TableLock',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.TableLock.Content', '10': 'content'},
  ],
  '3': const [TableLock_Content$json],
};

@$core.Deprecated('Use tableLockDescriptor instead')
const TableLock_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'client_type', '3': 1, '4': 1, '5': 9, '10': 'clientType'},
    const {'1': 'store_id', '3': 2, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 3, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'store_terminal_group_id', '3': 4, '4': 1, '5': 9, '10': 'storeTerminalGroupId'},
    const {'1': 'table_id', '3': 5, '4': 1, '5': 9, '10': 'tableId'},
  ],
};

/// Descriptor for `TableLock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tableLockDescriptor = $convert.base64Decode('CglUYWJsZUxvY2sSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEjMKB2NvbnRlbnQYAiABKAsyGS5hcGkudjEuVGFibGVMb2NrLkNvbnRlbnRSB2NvbnRlbnQawwEKB0NvbnRlbnQSHwoLY2xpZW50X3R5cGUYASABKAlSCmNsaWVudFR5cGUSGQoIc3RvcmVfaWQYAiABKAlSB3N0b3JlSWQSKgoRc3RvcmVfdGVybWluYWxfaWQYAyABKAlSD3N0b3JlVGVybWluYWxJZBI1ChdzdG9yZV90ZXJtaW5hbF9ncm91cF9pZBgEIAEoCVIUc3RvcmVUZXJtaW5hbEdyb3VwSWQSGQoIdGFibGVfaWQYBSABKAlSB3RhYmxlSWQ=');
@$core.Deprecated('Use orderDataDescriptor instead')
const OrderData$json = const {
  '1': 'OrderData',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.OrderData.Content', '10': 'content'},
  ],
  '3': const [OrderData_Order$json, OrderData_Content$json],
};

@$core.Deprecated('Use orderDataDescriptor instead')
const OrderData_Order$json = const {
  '1': 'Order',
  '2': const [
    const {'1': 'order_history', '3': 1, '4': 1, '5': 11, '6': '.api.v1.table.OrderHistory', '10': 'orderHistory'},
    const {'1': 'order_history_item', '3': 2, '4': 3, '5': 11, '6': '.api.v1.table.OrderHistoryItem', '10': 'orderHistoryItem'},
    const {'1': 'order_history_kitchen_memo', '3': 3, '4': 3, '5': 11, '6': '.api.v1.table.OrderHistoryKitchenMemo', '10': 'orderHistoryKitchenMemo'},
    const {'1': 'order_history_discount', '3': 4, '4': 3, '5': 11, '6': '.api.v1.table.OrderHistoryDiscount', '10': 'orderHistoryDiscount'},
  ],
};

@$core.Deprecated('Use orderDataDescriptor instead')
const OrderData_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'client_type', '3': 1, '4': 1, '5': 9, '10': 'clientType'},
    const {'1': 'store_id', '3': 2, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 3, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'store_terminal_group_id', '3': 4, '4': 1, '5': 9, '10': 'storeTerminalGroupId'},
    const {'1': 'is_delete', '3': 5, '4': 1, '5': 8, '10': 'isDelete'},
    const {'1': 'orders', '3': 6, '4': 3, '5': 11, '6': '.api.v1.OrderData.Order', '10': 'orders'},
  ],
};

/// Descriptor for `OrderData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderDataDescriptor = $convert.base64Decode('CglPcmRlckRhdGESJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEjMKB2NvbnRlbnQYAiABKAsyGS5hcGkudjEuT3JkZXJEYXRhLkNvbnRlbnRSB2NvbnRlbnQa1AIKBU9yZGVyEj8KDW9yZGVyX2hpc3RvcnkYASABKAsyGi5hcGkudjEudGFibGUuT3JkZXJIaXN0b3J5UgxvcmRlckhpc3RvcnkSTAoSb3JkZXJfaGlzdG9yeV9pdGVtGAIgAygLMh4uYXBpLnYxLnRhYmxlLk9yZGVySGlzdG9yeUl0ZW1SEG9yZGVySGlzdG9yeUl0ZW0SYgoab3JkZXJfaGlzdG9yeV9raXRjaGVuX21lbW8YAyADKAsyJS5hcGkudjEudGFibGUuT3JkZXJIaXN0b3J5S2l0Y2hlbk1lbW9SF29yZGVySGlzdG9yeUtpdGNoZW5NZW1vElgKFm9yZGVyX2hpc3RvcnlfZGlzY291bnQYBCADKAsyIi5hcGkudjEudGFibGUuT3JkZXJIaXN0b3J5RGlzY291bnRSFG9yZGVySGlzdG9yeURpc2NvdW50GvYBCgdDb250ZW50Eh8KC2NsaWVudF90eXBlGAEgASgJUgpjbGllbnRUeXBlEhkKCHN0b3JlX2lkGAIgASgJUgdzdG9yZUlkEioKEXN0b3JlX3Rlcm1pbmFsX2lkGAMgASgJUg9zdG9yZVRlcm1pbmFsSWQSNQoXc3RvcmVfdGVybWluYWxfZ3JvdXBfaWQYBCABKAlSFHN0b3JlVGVybWluYWxHcm91cElkEhsKCWlzX2RlbGV0ZRgFIAEoCFIIaXNEZWxldGUSLwoGb3JkZXJzGAYgAygLMhcuYXBpLnYxLk9yZGVyRGF0YS5PcmRlclIGb3JkZXJz');
@$core.Deprecated('Use entranceRegistrationDataDescriptor instead')
const EntranceRegistrationData$json = const {
  '1': 'EntranceRegistrationData',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.EntranceRegistrationData.Content', '10': 'content'},
  ],
  '3': const [EntranceRegistrationData_Content$json],
};

@$core.Deprecated('Use entranceRegistrationDataDescriptor instead')
const EntranceRegistrationData_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'login_id', '3': 1, '4': 1, '5': 9, '10': 'loginId'},
    const {'1': 'store_id', '3': 2, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 3, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'phone_number', '3': 4, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'is_agree', '3': 5, '4': 1, '5': 8, '10': 'isAgree'},
  ],
};

/// Descriptor for `EntranceRegistrationData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entranceRegistrationDataDescriptor = $convert.base64Decode('ChhFbnRyYW5jZVJlZ2lzdHJhdGlvbkRhdGESJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkIKB2NvbnRlbnQYAiABKAsyKC5hcGkudjEuRW50cmFuY2VSZWdpc3RyYXRpb25EYXRhLkNvbnRlbnRSB2NvbnRlbnQaqQEKB0NvbnRlbnQSGQoIbG9naW5faWQYASABKAlSB2xvZ2luSWQSGQoIc3RvcmVfaWQYAiABKAlSB3N0b3JlSWQSKgoRc3RvcmVfdGVybWluYWxfaWQYAyABKAlSD3N0b3JlVGVybWluYWxJZBIhCgxwaG9uZV9udW1iZXIYBCABKAlSC3Bob25lTnVtYmVyEhkKCGlzX2FncmVlGAUgASgIUgdpc0FncmVl');
@$core.Deprecated('Use aSPApiRequestDescriptor instead')
const ASPApiRequest$json = const {
  '1': 'ASPApiRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `ASPApiRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aSPApiRequestDescriptor = $convert.base64Decode('Cg1BU1BBcGlSZXF1ZXN0EiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhIYCgdjb250ZW50GAIgASgJUgdjb250ZW50');
@$core.Deprecated('Use aSPApiResponseDescriptor instead')
const ASPApiResponse$json = const {
  '1': 'ASPApiResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `ASPApiResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aSPApiResponseDescriptor = $convert.base64Decode('Cg5BU1BBcGlSZXNwb25zZRImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SGAoHY29udGVudBgCIAEoCVIHY29udGVudA==');
@$core.Deprecated('Use balanceItemRequestDescriptor instead')
const BalanceItemRequest$json = const {
  '1': 'BalanceItemRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.BalanceItemRequest.Content', '10': 'content'},
  ],
  '3': const [BalanceItemRequest_Content$json],
};

@$core.Deprecated('Use balanceItemRequestDescriptor instead')
const BalanceItemRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'item_group_id', '3': 3, '4': 1, '5': 9, '10': 'itemGroupId'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'barcode', '3': 5, '4': 1, '5': 9, '10': 'barcode'},
    const {'1': 'page_index', '3': 6, '4': 1, '5': 5, '10': 'pageIndex'},
    const {'1': 'page_size', '3': 7, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `BalanceItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List balanceItemRequestDescriptor = $convert.base64Decode('ChJCYWxhbmNlSXRlbVJlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEjwKB2NvbnRlbnQYAiABKAsyIi5hcGkudjEuQmFsYW5jZUl0ZW1SZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQa3gEKB0NvbnRlbnQSGQoIc3RvcmVfaWQYASABKAlSB3N0b3JlSWQSKgoRc3RvcmVfdGVybWluYWxfaWQYAiABKAlSD3N0b3JlVGVybWluYWxJZBIiCg1pdGVtX2dyb3VwX2lkGAMgASgJUgtpdGVtR3JvdXBJZBISCgRuYW1lGAQgASgJUgRuYW1lEhgKB2JhcmNvZGUYBSABKAlSB2JhcmNvZGUSHQoKcGFnZV9pbmRleBgGIAEoBVIJcGFnZUluZGV4EhsKCXBhZ2Vfc2l6ZRgHIAEoBVIIcGFnZVNpemU=');
@$core.Deprecated('Use balanceItemResponseDescriptor instead')
const BalanceItemResponse$json = const {
  '1': 'BalanceItemResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.BalanceItemResponse.Content', '10': 'content'},
  ],
  '3': const [BalanceItemResponse_Content$json],
};

@$core.Deprecated('Use balanceItemResponseDescriptor instead')
const BalanceItemResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.v1.BalanceItem', '10': 'items'},
  ],
};

/// Descriptor for `BalanceItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List balanceItemResponseDescriptor = $convert.base64Decode('ChNCYWxhbmNlSXRlbVJlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhI9Cgdjb250ZW50GAIgASgLMiMuYXBpLnYxLkJhbGFuY2VJdGVtUmVzcG9uc2UuQ29udGVudFIHY29udGVudBpKCgdDb250ZW50EhQKBWNvdW50GAEgASgFUgVjb3VudBIpCgVpdGVtcxgCIAMoCzITLmFwaS52MS5CYWxhbmNlSXRlbVIFaXRlbXM=');
@$core.Deprecated('Use balanceItemDescriptor instead')
const BalanceItem$json = const {
  '1': 'BalanceItem',
  '2': const [
    const {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'item_group_id', '3': 2, '4': 1, '5': 9, '10': 'itemGroupId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'imageUrl', '3': 4, '4': 1, '5': 9, '10': 'imageUrl'},
    const {'1': 'sale_price', '3': 5, '4': 1, '5': 1, '10': 'salePrice'},
    const {'1': 'purchase_price', '3': 6, '4': 1, '5': 1, '10': 'purchasePrice'},
    const {'1': 'is_marking', '3': 7, '4': 1, '5': 8, '10': 'isMarking'},
    const {'1': 'qty', '3': 8, '4': 1, '5': 1, '10': 'qty'},
    const {'1': 'barcode', '3': 9, '4': 1, '5': 9, '10': 'barcode'},
  ],
};

/// Descriptor for `BalanceItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List balanceItemDescriptor = $convert.base64Decode('CgtCYWxhbmNlSXRlbRIXCgdpdGVtX2lkGAEgASgJUgZpdGVtSWQSIgoNaXRlbV9ncm91cF9pZBgCIAEoCVILaXRlbUdyb3VwSWQSEgoEbmFtZRgDIAEoCVIEbmFtZRIaCghpbWFnZVVybBgEIAEoCVIIaW1hZ2VVcmwSHQoKc2FsZV9wcmljZRgFIAEoAVIJc2FsZVByaWNlEiUKDnB1cmNoYXNlX3ByaWNlGAYgASgBUg1wdXJjaGFzZVByaWNlEh0KCmlzX21hcmtpbmcYByABKAhSCWlzTWFya2luZxIQCgNxdHkYCCABKAFSA3F0eRIYCgdiYXJjb2RlGAkgASgJUgdiYXJjb2Rl');
@$core.Deprecated('Use acceptanceItemDescriptor instead')
const AcceptanceItem$json = const {
  '1': 'AcceptanceItem',
  '2': const [
    const {'1': 'acceptance_items_id', '3': 1, '4': 1, '5': 9, '10': 'acceptanceItemsId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'price', '3': 3, '4': 1, '5': 1, '10': 'price'},
    const {'1': 'date', '3': 4, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `AcceptanceItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptanceItemDescriptor = $convert.base64Decode('Cg5BY2NlcHRhbmNlSXRlbRIuChNhY2NlcHRhbmNlX2l0ZW1zX2lkGAEgASgJUhFhY2NlcHRhbmNlSXRlbXNJZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBXByaWNlGAMgASgBUgVwcmljZRISCgRkYXRlGAQgASgJUgRkYXRl');
@$core.Deprecated('Use acceptanceItemDetailDescriptor instead')
const AcceptanceItemDetail$json = const {
  '1': 'AcceptanceItemDetail',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'item_id', '3': 2, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'barcode', '3': 4, '4': 1, '5': 9, '10': 'barcode'},
    const {'1': 'sale_price', '3': 5, '4': 1, '5': 1, '10': 'salePrice'},
    const {'1': 'purchase_price', '3': 6, '4': 1, '5': 1, '10': 'purchasePrice'},
    const {'1': 'qty', '3': 7, '4': 1, '5': 1, '10': 'qty'},
  ],
};

/// Descriptor for `AcceptanceItemDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List acceptanceItemDetailDescriptor = $convert.base64Decode('ChRBY2NlcHRhbmNlSXRlbURldGFpbBIOCgJpZBgBIAEoCVICaWQSFwoHaXRlbV9pZBgCIAEoCVIGaXRlbUlkEhIKBG5hbWUYAyABKAlSBG5hbWUSGAoHYmFyY29kZRgEIAEoCVIHYmFyY29kZRIdCgpzYWxlX3ByaWNlGAUgASgBUglzYWxlUHJpY2USJQoOcHVyY2hhc2VfcHJpY2UYBiABKAFSDXB1cmNoYXNlUHJpY2USEAoDcXR5GAcgASgBUgNxdHk=');
@$core.Deprecated('Use supplierDescriptor instead')
const Supplier$json = const {
  '1': 'Supplier',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Supplier`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List supplierDescriptor = $convert.base64Decode('CghTdXBwbGllchIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use revisionItemDescriptor instead')
const RevisionItem$json = const {
  '1': 'RevisionItem',
  '2': const [
    const {'1': 'revision_items_id', '3': 1, '4': 1, '5': 9, '10': 'revisionItemsId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'date', '3': 4, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'price', '3': 5, '4': 1, '5': 1, '10': 'price'},
  ],
};

/// Descriptor for `RevisionItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revisionItemDescriptor = $convert.base64Decode('CgxSZXZpc2lvbkl0ZW0SKgoRcmV2aXNpb25faXRlbXNfaWQYASABKAlSD3JldmlzaW9uSXRlbXNJZBISCgRuYW1lGAMgASgJUgRuYW1lEhIKBGRhdGUYBCABKAlSBGRhdGUSFAoFcHJpY2UYBSABKAFSBXByaWNl');
@$core.Deprecated('Use revisionItemDetailDescriptor instead')
const RevisionItemDetail$json = const {
  '1': 'RevisionItemDetail',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'item_id', '3': 2, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'barcode', '3': 4, '4': 1, '5': 9, '10': 'barcode'},
    const {'1': 'sale_price', '3': 5, '4': 1, '5': 1, '10': 'salePrice'},
    const {'1': 'purchase_price', '3': 6, '4': 1, '5': 1, '10': 'purchasePrice'},
    const {'1': 'qty', '3': 7, '4': 1, '5': 1, '10': 'qty'},
    const {'1': 'real_qty', '3': 8, '4': 1, '5': 1, '10': 'realQty'},
    const {'1': 'memo', '3': 9, '4': 1, '5': 9, '10': 'memo'},
  ],
};

/// Descriptor for `RevisionItemDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revisionItemDetailDescriptor = $convert.base64Decode('ChJSZXZpc2lvbkl0ZW1EZXRhaWwSDgoCaWQYASABKAlSAmlkEhcKB2l0ZW1faWQYAiABKAlSBml0ZW1JZBISCgRuYW1lGAMgASgJUgRuYW1lEhgKB2JhcmNvZGUYBCABKAlSB2JhcmNvZGUSHQoKc2FsZV9wcmljZRgFIAEoAVIJc2FsZVByaWNlEiUKDnB1cmNoYXNlX3ByaWNlGAYgASgBUg1wdXJjaGFzZVByaWNlEhAKA3F0eRgHIAEoAVIDcXR5EhkKCHJlYWxfcXR5GAggASgBUgdyZWFsUXR5EhIKBG1lbW8YCSABKAlSBG1lbW8=');
@$core.Deprecated('Use listAcceptanceItemsRequestDescriptor instead')
const ListAcceptanceItemsRequest$json = const {
  '1': 'ListAcceptanceItemsRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.ListAcceptanceItemsRequest.Content', '10': 'content'},
  ],
  '3': const [ListAcceptanceItemsRequest_Content$json],
};

@$core.Deprecated('Use listAcceptanceItemsRequestDescriptor instead')
const ListAcceptanceItemsRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'start_date', '3': 3, '4': 1, '5': 9, '10': 'startDate'},
    const {'1': 'end_date', '3': 4, '4': 1, '5': 9, '10': 'endDate'},
    const {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'page_index', '3': 6, '4': 1, '5': 5, '10': 'pageIndex'},
    const {'1': 'page_size', '3': 7, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `ListAcceptanceItemsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAcceptanceItemsRequestDescriptor = $convert.base64Decode('ChpMaXN0QWNjZXB0YW5jZUl0ZW1zUmVxdWVzdBImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SRAoHY29udGVudBgCIAEoCzIqLmFwaS52MS5MaXN0QWNjZXB0YW5jZUl0ZW1zUmVxdWVzdC5Db250ZW50Ugdjb250ZW50GtoBCgdDb250ZW50EhkKCHN0b3JlX2lkGAEgASgJUgdzdG9yZUlkEioKEXN0b3JlX3Rlcm1pbmFsX2lkGAIgASgJUg9zdG9yZVRlcm1pbmFsSWQSHQoKc3RhcnRfZGF0ZRgDIAEoCVIJc3RhcnREYXRlEhkKCGVuZF9kYXRlGAQgASgJUgdlbmREYXRlEhIKBHR5cGUYBSABKAlSBHR5cGUSHQoKcGFnZV9pbmRleBgGIAEoBVIJcGFnZUluZGV4EhsKCXBhZ2Vfc2l6ZRgHIAEoBVIIcGFnZVNpemU=');
@$core.Deprecated('Use listAcceptanceItemsResponseDescriptor instead')
const ListAcceptanceItemsResponse$json = const {
  '1': 'ListAcceptanceItemsResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.ListAcceptanceItemsResponse.Content', '10': 'content'},
  ],
  '3': const [ListAcceptanceItemsResponse_Content$json],
};

@$core.Deprecated('Use listAcceptanceItemsResponseDescriptor instead')
const ListAcceptanceItemsResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.v1.AcceptanceItem', '10': 'items'},
  ],
};

/// Descriptor for `ListAcceptanceItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAcceptanceItemsResponseDescriptor = $convert.base64Decode('ChtMaXN0QWNjZXB0YW5jZUl0ZW1zUmVzcG9uc2USJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkUKB2NvbnRlbnQYAiABKAsyKy5hcGkudjEuTGlzdEFjY2VwdGFuY2VJdGVtc1Jlc3BvbnNlLkNvbnRlbnRSB2NvbnRlbnQaTQoHQ29udGVudBIUCgVjb3VudBgBIAEoBVIFY291bnQSLAoFaXRlbXMYAiADKAsyFi5hcGkudjEuQWNjZXB0YW5jZUl0ZW1SBWl0ZW1z');
@$core.Deprecated('Use addAcceptanceItemRequestDescriptor instead')
const AddAcceptanceItemRequest$json = const {
  '1': 'AddAcceptanceItemRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.AddAcceptanceItemRequest.Content', '10': 'content'},
  ],
  '3': const [AddAcceptanceItemRequest_Content$json],
};

@$core.Deprecated('Use addAcceptanceItemRequestDescriptor instead')
const AddAcceptanceItemRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'supplier_id', '3': 5, '4': 1, '5': 9, '10': 'supplierId'},
    const {'1': 'items', '3': 6, '4': 3, '5': 11, '6': '.api.v1.AcceptanceItemDetail', '10': 'items'},
  ],
};

/// Descriptor for `AddAcceptanceItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addAcceptanceItemRequestDescriptor = $convert.base64Decode('ChhBZGRBY2NlcHRhbmNlSXRlbVJlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkIKB2NvbnRlbnQYAiABKAsyKC5hcGkudjEuQWRkQWNjZXB0YW5jZUl0ZW1SZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQazQEKB0NvbnRlbnQSGQoIc3RvcmVfaWQYASABKAlSB3N0b3JlSWQSKgoRc3RvcmVfdGVybWluYWxfaWQYAiABKAlSD3N0b3JlVGVybWluYWxJZBISCgR0eXBlGAMgASgJUgR0eXBlEhIKBG5hbWUYBCABKAlSBG5hbWUSHwoLc3VwcGxpZXJfaWQYBSABKAlSCnN1cHBsaWVySWQSMgoFaXRlbXMYBiADKAsyHC5hcGkudjEuQWNjZXB0YW5jZUl0ZW1EZXRhaWxSBWl0ZW1z');
@$core.Deprecated('Use addAcceptanceItemResponseDescriptor instead')
const AddAcceptanceItemResponse$json = const {
  '1': 'AddAcceptanceItemResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.AddAcceptanceItemResponse.Content', '10': 'content'},
  ],
  '3': const [AddAcceptanceItemResponse_Content$json],
};

@$core.Deprecated('Use addAcceptanceItemResponseDescriptor instead')
const AddAcceptanceItemResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'acceptance_items_id', '3': 1, '4': 1, '5': 9, '10': 'acceptanceItemsId'},
  ],
};

/// Descriptor for `AddAcceptanceItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addAcceptanceItemResponseDescriptor = $convert.base64Decode('ChlBZGRBY2NlcHRhbmNlSXRlbVJlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhJDCgdjb250ZW50GAIgASgLMikuYXBpLnYxLkFkZEFjY2VwdGFuY2VJdGVtUmVzcG9uc2UuQ29udGVudFIHY29udGVudBo5CgdDb250ZW50Ei4KE2FjY2VwdGFuY2VfaXRlbXNfaWQYASABKAlSEWFjY2VwdGFuY2VJdGVtc0lk');
@$core.Deprecated('Use updateAcceptanceItemRequestDescriptor instead')
const UpdateAcceptanceItemRequest$json = const {
  '1': 'UpdateAcceptanceItemRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.UpdateAcceptanceItemRequest.Content', '10': 'content'},
  ],
  '3': const [UpdateAcceptanceItemRequest_Content$json],
};

@$core.Deprecated('Use updateAcceptanceItemRequestDescriptor instead')
const UpdateAcceptanceItemRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'acceptance_items_id', '3': 5, '4': 1, '5': 9, '10': 'acceptanceItemsId'},
    const {'1': 'supplier_id', '3': 6, '4': 1, '5': 9, '10': 'supplierId'},
    const {'1': 'items', '3': 7, '4': 3, '5': 11, '6': '.api.v1.AcceptanceItemDetail', '10': 'items'},
  ],
};

/// Descriptor for `UpdateAcceptanceItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAcceptanceItemRequestDescriptor = $convert.base64Decode('ChtVcGRhdGVBY2NlcHRhbmNlSXRlbVJlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkUKB2NvbnRlbnQYAiABKAsyKy5hcGkudjEuVXBkYXRlQWNjZXB0YW5jZUl0ZW1SZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQa/QEKB0NvbnRlbnQSGQoIc3RvcmVfaWQYASABKAlSB3N0b3JlSWQSKgoRc3RvcmVfdGVybWluYWxfaWQYAiABKAlSD3N0b3JlVGVybWluYWxJZBISCgR0eXBlGAMgASgJUgR0eXBlEhIKBG5hbWUYBCABKAlSBG5hbWUSLgoTYWNjZXB0YW5jZV9pdGVtc19pZBgFIAEoCVIRYWNjZXB0YW5jZUl0ZW1zSWQSHwoLc3VwcGxpZXJfaWQYBiABKAlSCnN1cHBsaWVySWQSMgoFaXRlbXMYByADKAsyHC5hcGkudjEuQWNjZXB0YW5jZUl0ZW1EZXRhaWxSBWl0ZW1z');
@$core.Deprecated('Use updateAcceptanceItemResponseDescriptor instead')
const UpdateAcceptanceItemResponse$json = const {
  '1': 'UpdateAcceptanceItemResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.UpdateAcceptanceItemResponse.Content', '10': 'content'},
  ],
  '3': const [UpdateAcceptanceItemResponse_Content$json],
};

@$core.Deprecated('Use updateAcceptanceItemResponseDescriptor instead')
const UpdateAcceptanceItemResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'acceptance_items_id', '3': 1, '4': 1, '5': 9, '10': 'acceptanceItemsId'},
  ],
};

/// Descriptor for `UpdateAcceptanceItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAcceptanceItemResponseDescriptor = $convert.base64Decode('ChxVcGRhdGVBY2NlcHRhbmNlSXRlbVJlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhJGCgdjb250ZW50GAIgASgLMiwuYXBpLnYxLlVwZGF0ZUFjY2VwdGFuY2VJdGVtUmVzcG9uc2UuQ29udGVudFIHY29udGVudBo5CgdDb250ZW50Ei4KE2FjY2VwdGFuY2VfaXRlbXNfaWQYASABKAlSEWFjY2VwdGFuY2VJdGVtc0lk');
@$core.Deprecated('Use deleteAcceptanceItemRequestDescriptor instead')
const DeleteAcceptanceItemRequest$json = const {
  '1': 'DeleteAcceptanceItemRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.DeleteAcceptanceItemRequest.Content', '10': 'content'},
  ],
  '3': const [DeleteAcceptanceItemRequest_Content$json],
};

@$core.Deprecated('Use deleteAcceptanceItemRequestDescriptor instead')
const DeleteAcceptanceItemRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'acceptance_items_id', '3': 3, '4': 1, '5': 9, '10': 'acceptanceItemsId'},
  ],
};

/// Descriptor for `DeleteAcceptanceItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAcceptanceItemRequestDescriptor = $convert.base64Decode('ChtEZWxldGVBY2NlcHRhbmNlSXRlbVJlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkUKB2NvbnRlbnQYAiABKAsyKy5hcGkudjEuRGVsZXRlQWNjZXB0YW5jZUl0ZW1SZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQagAEKB0NvbnRlbnQSGQoIc3RvcmVfaWQYASABKAlSB3N0b3JlSWQSKgoRc3RvcmVfdGVybWluYWxfaWQYAiABKAlSD3N0b3JlVGVybWluYWxJZBIuChNhY2NlcHRhbmNlX2l0ZW1zX2lkGAMgASgJUhFhY2NlcHRhbmNlSXRlbXNJZA==');
@$core.Deprecated('Use deleteAcceptanceItemResponseDescriptor instead')
const DeleteAcceptanceItemResponse$json = const {
  '1': 'DeleteAcceptanceItemResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.DeleteAcceptanceItemResponse.Content', '10': 'content'},
  ],
  '3': const [DeleteAcceptanceItemResponse_Content$json],
};

@$core.Deprecated('Use deleteAcceptanceItemResponseDescriptor instead')
const DeleteAcceptanceItemResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'acceptance_items_id', '3': 1, '4': 1, '5': 9, '10': 'acceptanceItemsId'},
  ],
};

/// Descriptor for `DeleteAcceptanceItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAcceptanceItemResponseDescriptor = $convert.base64Decode('ChxEZWxldGVBY2NlcHRhbmNlSXRlbVJlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhJGCgdjb250ZW50GAIgASgLMiwuYXBpLnYxLkRlbGV0ZUFjY2VwdGFuY2VJdGVtUmVzcG9uc2UuQ29udGVudFIHY29udGVudBo5CgdDb250ZW50Ei4KE2FjY2VwdGFuY2VfaXRlbXNfaWQYASABKAlSEWFjY2VwdGFuY2VJdGVtc0lk');
@$core.Deprecated('Use detailAcceptanceItemRequestDescriptor instead')
const DetailAcceptanceItemRequest$json = const {
  '1': 'DetailAcceptanceItemRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.DetailAcceptanceItemRequest.Content', '10': 'content'},
  ],
  '3': const [DetailAcceptanceItemRequest_Content$json],
};

@$core.Deprecated('Use detailAcceptanceItemRequestDescriptor instead')
const DetailAcceptanceItemRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'acceptance_items_id', '3': 3, '4': 1, '5': 9, '10': 'acceptanceItemsId'},
  ],
};

/// Descriptor for `DetailAcceptanceItemRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List detailAcceptanceItemRequestDescriptor = $convert.base64Decode('ChtEZXRhaWxBY2NlcHRhbmNlSXRlbVJlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkUKB2NvbnRlbnQYAiABKAsyKy5hcGkudjEuRGV0YWlsQWNjZXB0YW5jZUl0ZW1SZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQagAEKB0NvbnRlbnQSGQoIc3RvcmVfaWQYASABKAlSB3N0b3JlSWQSKgoRc3RvcmVfdGVybWluYWxfaWQYAiABKAlSD3N0b3JlVGVybWluYWxJZBIuChNhY2NlcHRhbmNlX2l0ZW1zX2lkGAMgASgJUhFhY2NlcHRhbmNlSXRlbXNJZA==');
@$core.Deprecated('Use detailAcceptanceItemResponseDescriptor instead')
const DetailAcceptanceItemResponse$json = const {
  '1': 'DetailAcceptanceItemResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.DetailAcceptanceItemResponse.Content', '10': 'content'},
  ],
  '3': const [DetailAcceptanceItemResponse_Content$json],
};

@$core.Deprecated('Use detailAcceptanceItemResponseDescriptor instead')
const DetailAcceptanceItemResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'date', '3': 1, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'acceptance_items_id', '3': 3, '4': 1, '5': 9, '10': 'acceptanceItemsId'},
    const {'1': 'items', '3': 4, '4': 3, '5': 11, '6': '.api.v1.AcceptanceItemDetail', '10': 'items'},
  ],
};

/// Descriptor for `DetailAcceptanceItemResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List detailAcceptanceItemResponseDescriptor = $convert.base64Decode('ChxEZXRhaWxBY2NlcHRhbmNlSXRlbVJlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhJGCgdjb250ZW50GAIgASgLMiwuYXBpLnYxLkRldGFpbEFjY2VwdGFuY2VJdGVtUmVzcG9uc2UuQ29udGVudFIHY29udGVudBqVAQoHQ29udGVudBISCgRkYXRlGAEgASgJUgRkYXRlEhIKBG5hbWUYAiABKAlSBG5hbWUSLgoTYWNjZXB0YW5jZV9pdGVtc19pZBgDIAEoCVIRYWNjZXB0YW5jZUl0ZW1zSWQSMgoFaXRlbXMYBCADKAsyHC5hcGkudjEuQWNjZXB0YW5jZUl0ZW1EZXRhaWxSBWl0ZW1z');
@$core.Deprecated('Use listSupplierRequestDescriptor instead')
const ListSupplierRequest$json = const {
  '1': 'ListSupplierRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.ListSupplierRequest.Content', '10': 'content'},
  ],
  '3': const [ListSupplierRequest_Content$json],
};

@$core.Deprecated('Use listSupplierRequestDescriptor instead')
const ListSupplierRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
  ],
};

/// Descriptor for `ListSupplierRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSupplierRequestDescriptor = $convert.base64Decode('ChNMaXN0U3VwcGxpZXJSZXF1ZXN0EiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhI9Cgdjb250ZW50GAIgASgLMiMuYXBpLnYxLkxpc3RTdXBwbGllclJlcXVlc3QuQ29udGVudFIHY29udGVudBpQCgdDb250ZW50EhkKCHN0b3JlX2lkGAEgASgJUgdzdG9yZUlkEioKEXN0b3JlX3Rlcm1pbmFsX2lkGAIgASgJUg9zdG9yZVRlcm1pbmFsSWQ=');
@$core.Deprecated('Use listSupplierResponseDescriptor instead')
const ListSupplierResponse$json = const {
  '1': 'ListSupplierResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.ListSupplierResponse.Content', '10': 'content'},
  ],
  '3': const [ListSupplierResponse_Content$json],
};

@$core.Deprecated('Use listSupplierResponseDescriptor instead')
const ListSupplierResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.v1.Supplier', '10': 'items'},
  ],
};

/// Descriptor for `ListSupplierResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSupplierResponseDescriptor = $convert.base64Decode('ChRMaXN0U3VwcGxpZXJSZXNwb25zZRImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SPgoHY29udGVudBgCIAEoCzIkLmFwaS52MS5MaXN0U3VwcGxpZXJSZXNwb25zZS5Db250ZW50Ugdjb250ZW50GkcKB0NvbnRlbnQSFAoFY291bnQYASABKAVSBWNvdW50EiYKBWl0ZW1zGAIgAygLMhAuYXBpLnYxLlN1cHBsaWVyUgVpdGVtcw==');
@$core.Deprecated('Use addSupplierRequestDescriptor instead')
const AddSupplierRequest$json = const {
  '1': 'AddSupplierRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.AddSupplierRequest.Content', '10': 'content'},
  ],
  '3': const [AddSupplierRequest_Content$json],
};

@$core.Deprecated('Use addSupplierRequestDescriptor instead')
const AddSupplierRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `AddSupplierRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSupplierRequestDescriptor = $convert.base64Decode('ChJBZGRTdXBwbGllclJlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEjwKB2NvbnRlbnQYAiABKAsyIi5hcGkudjEuQWRkU3VwcGxpZXJSZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQaZAoHQ29udGVudBIZCghzdG9yZV9pZBgBIAEoCVIHc3RvcmVJZBIqChFzdG9yZV90ZXJtaW5hbF9pZBgCIAEoCVIPc3RvcmVUZXJtaW5hbElkEhIKBG5hbWUYAyABKAlSBG5hbWU=');
@$core.Deprecated('Use addSupplierResponseDescriptor instead')
const AddSupplierResponse$json = const {
  '1': 'AddSupplierResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.AddSupplierResponse.Content', '10': 'content'},
  ],
  '3': const [AddSupplierResponse_Content$json],
};

@$core.Deprecated('Use addSupplierResponseDescriptor instead')
const AddSupplierResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'supplier_id', '3': 1, '4': 1, '5': 9, '10': 'supplierId'},
  ],
};

/// Descriptor for `AddSupplierResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSupplierResponseDescriptor = $convert.base64Decode('ChNBZGRTdXBwbGllclJlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhI9Cgdjb250ZW50GAIgASgLMiMuYXBpLnYxLkFkZFN1cHBsaWVyUmVzcG9uc2UuQ29udGVudFIHY29udGVudBoqCgdDb250ZW50Eh8KC3N1cHBsaWVyX2lkGAEgASgJUgpzdXBwbGllcklk');
@$core.Deprecated('Use updateSupplierRequestDescriptor instead')
const UpdateSupplierRequest$json = const {
  '1': 'UpdateSupplierRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.UpdateSupplierRequest.Content', '10': 'content'},
  ],
  '3': const [UpdateSupplierRequest_Content$json],
};

@$core.Deprecated('Use updateSupplierRequestDescriptor instead')
const UpdateSupplierRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'supplier_id', '3': 4, '4': 1, '5': 9, '10': 'supplierId'},
  ],
};

/// Descriptor for `UpdateSupplierRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSupplierRequestDescriptor = $convert.base64Decode('ChVVcGRhdGVTdXBwbGllclJlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEj8KB2NvbnRlbnQYAiABKAsyJS5hcGkudjEuVXBkYXRlU3VwcGxpZXJSZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQahQEKB0NvbnRlbnQSGQoIc3RvcmVfaWQYASABKAlSB3N0b3JlSWQSKgoRc3RvcmVfdGVybWluYWxfaWQYAiABKAlSD3N0b3JlVGVybWluYWxJZBISCgRuYW1lGAMgASgJUgRuYW1lEh8KC3N1cHBsaWVyX2lkGAQgASgJUgpzdXBwbGllcklk');
@$core.Deprecated('Use updateSupplierResponseDescriptor instead')
const UpdateSupplierResponse$json = const {
  '1': 'UpdateSupplierResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.UpdateSupplierResponse.Content', '10': 'content'},
  ],
  '3': const [UpdateSupplierResponse_Content$json],
};

@$core.Deprecated('Use updateSupplierResponseDescriptor instead')
const UpdateSupplierResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'supplier_id', '3': 1, '4': 1, '5': 9, '10': 'supplierId'},
  ],
};

/// Descriptor for `UpdateSupplierResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSupplierResponseDescriptor = $convert.base64Decode('ChZVcGRhdGVTdXBwbGllclJlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhJACgdjb250ZW50GAIgASgLMiYuYXBpLnYxLlVwZGF0ZVN1cHBsaWVyUmVzcG9uc2UuQ29udGVudFIHY29udGVudBoqCgdDb250ZW50Eh8KC3N1cHBsaWVyX2lkGAEgASgJUgpzdXBwbGllcklk');
@$core.Deprecated('Use deleteSupplierRequestDescriptor instead')
const DeleteSupplierRequest$json = const {
  '1': 'DeleteSupplierRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.DeleteSupplierRequest.Content', '10': 'content'},
  ],
  '3': const [DeleteSupplierRequest_Content$json],
};

@$core.Deprecated('Use deleteSupplierRequestDescriptor instead')
const DeleteSupplierRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'supplier_id', '3': 3, '4': 1, '5': 9, '10': 'supplierId'},
  ],
};

/// Descriptor for `DeleteSupplierRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSupplierRequestDescriptor = $convert.base64Decode('ChVEZWxldGVTdXBwbGllclJlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEj8KB2NvbnRlbnQYAiABKAsyJS5hcGkudjEuRGVsZXRlU3VwcGxpZXJSZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQacQoHQ29udGVudBIZCghzdG9yZV9pZBgBIAEoCVIHc3RvcmVJZBIqChFzdG9yZV90ZXJtaW5hbF9pZBgCIAEoCVIPc3RvcmVUZXJtaW5hbElkEh8KC3N1cHBsaWVyX2lkGAMgASgJUgpzdXBwbGllcklk');
@$core.Deprecated('Use deleteSupplierResponseDescriptor instead')
const DeleteSupplierResponse$json = const {
  '1': 'DeleteSupplierResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.DeleteSupplierResponse.Content', '10': 'content'},
  ],
  '3': const [DeleteSupplierResponse_Content$json],
};

@$core.Deprecated('Use deleteSupplierResponseDescriptor instead')
const DeleteSupplierResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'supplier_id', '3': 1, '4': 1, '5': 9, '10': 'supplierId'},
  ],
};

/// Descriptor for `DeleteSupplierResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSupplierResponseDescriptor = $convert.base64Decode('ChZEZWxldGVTdXBwbGllclJlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhJACgdjb250ZW50GAIgASgLMiYuYXBpLnYxLkRlbGV0ZVN1cHBsaWVyUmVzcG9uc2UuQ29udGVudFIHY29udGVudBoqCgdDb250ZW50Eh8KC3N1cHBsaWVyX2lkGAEgASgJUgpzdXBwbGllcklk');
@$core.Deprecated('Use listRevisionItemsRequestDescriptor instead')
const ListRevisionItemsRequest$json = const {
  '1': 'ListRevisionItemsRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.ListRevisionItemsRequest.Content', '10': 'content'},
  ],
  '3': const [ListRevisionItemsRequest_Content$json],
};

@$core.Deprecated('Use listRevisionItemsRequestDescriptor instead')
const ListRevisionItemsRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'start_date', '3': 3, '4': 1, '5': 9, '10': 'startDate'},
    const {'1': 'end_date', '3': 4, '4': 1, '5': 9, '10': 'endDate'},
    const {'1': 'page_index', '3': 5, '4': 1, '5': 5, '10': 'pageIndex'},
    const {'1': 'page_size', '3': 6, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `ListRevisionItemsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRevisionItemsRequestDescriptor = $convert.base64Decode('ChhMaXN0UmV2aXNpb25JdGVtc1JlcXVlc3QSJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkIKB2NvbnRlbnQYAiABKAsyKC5hcGkudjEuTGlzdFJldmlzaW9uSXRlbXNSZXF1ZXN0LkNvbnRlbnRSB2NvbnRlbnQaxgEKB0NvbnRlbnQSGQoIc3RvcmVfaWQYASABKAlSB3N0b3JlSWQSKgoRc3RvcmVfdGVybWluYWxfaWQYAiABKAlSD3N0b3JlVGVybWluYWxJZBIdCgpzdGFydF9kYXRlGAMgASgJUglzdGFydERhdGUSGQoIZW5kX2RhdGUYBCABKAlSB2VuZERhdGUSHQoKcGFnZV9pbmRleBgFIAEoBVIJcGFnZUluZGV4EhsKCXBhZ2Vfc2l6ZRgGIAEoBVIIcGFnZVNpemU=');
@$core.Deprecated('Use listRevisionItemsResponseDescriptor instead')
const ListRevisionItemsResponse$json = const {
  '1': 'ListRevisionItemsResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.ListRevisionItemsResponse.Content', '10': 'content'},
  ],
  '3': const [ListRevisionItemsResponse_Content$json],
};

@$core.Deprecated('Use listRevisionItemsResponseDescriptor instead')
const ListRevisionItemsResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    const {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.v1.RevisionItem', '10': 'items'},
  ],
};

/// Descriptor for `ListRevisionItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRevisionItemsResponseDescriptor = $convert.base64Decode('ChlMaXN0UmV2aXNpb25JdGVtc1Jlc3BvbnNlEiYKBmNvbW1vbhgBIAEoCzIOLmFwaS52MS5Db21tb25SBmNvbW1vbhJDCgdjb250ZW50GAIgASgLMikuYXBpLnYxLkxpc3RSZXZpc2lvbkl0ZW1zUmVzcG9uc2UuQ29udGVudFIHY29udGVudBpLCgdDb250ZW50EhQKBWNvdW50GAEgASgFUgVjb3VudBIqCgVpdGVtcxgCIAMoCzIULmFwaS52MS5SZXZpc2lvbkl0ZW1SBWl0ZW1z');
@$core.Deprecated('Use addRevisionItemsRequestDescriptor instead')
const AddRevisionItemsRequest$json = const {
  '1': 'AddRevisionItemsRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.AddRevisionItemsRequest.Content', '10': 'content'},
  ],
  '3': const [AddRevisionItemsRequest_Content$json],
};

@$core.Deprecated('Use addRevisionItemsRequestDescriptor instead')
const AddRevisionItemsRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'date', '3': 3, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'items', '3': 5, '4': 3, '5': 11, '6': '.api.v1.RevisionItemDetail', '10': 'items'},
  ],
};

/// Descriptor for `AddRevisionItemsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addRevisionItemsRequestDescriptor = $convert.base64Decode('ChdBZGRSZXZpc2lvbkl0ZW1zUmVxdWVzdBImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SQQoHY29udGVudBgCIAEoCzInLmFwaS52MS5BZGRSZXZpc2lvbkl0ZW1zUmVxdWVzdC5Db250ZW50Ugdjb250ZW50GqoBCgdDb250ZW50EhkKCHN0b3JlX2lkGAEgASgJUgdzdG9yZUlkEioKEXN0b3JlX3Rlcm1pbmFsX2lkGAIgASgJUg9zdG9yZVRlcm1pbmFsSWQSEgoEZGF0ZRgDIAEoCVIEZGF0ZRISCgRuYW1lGAQgASgJUgRuYW1lEjAKBWl0ZW1zGAUgAygLMhouYXBpLnYxLlJldmlzaW9uSXRlbURldGFpbFIFaXRlbXM=');
@$core.Deprecated('Use addRevisionItemsResponseDescriptor instead')
const AddRevisionItemsResponse$json = const {
  '1': 'AddRevisionItemsResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.AddRevisionItemsResponse.Content', '10': 'content'},
  ],
  '3': const [AddRevisionItemsResponse_Content$json],
};

@$core.Deprecated('Use addRevisionItemsResponseDescriptor instead')
const AddRevisionItemsResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'revision_items_id', '3': 1, '4': 1, '5': 9, '10': 'revisionItemsId'},
  ],
};

/// Descriptor for `AddRevisionItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addRevisionItemsResponseDescriptor = $convert.base64Decode('ChhBZGRSZXZpc2lvbkl0ZW1zUmVzcG9uc2USJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkIKB2NvbnRlbnQYAiABKAsyKC5hcGkudjEuQWRkUmV2aXNpb25JdGVtc1Jlc3BvbnNlLkNvbnRlbnRSB2NvbnRlbnQaNQoHQ29udGVudBIqChFyZXZpc2lvbl9pdGVtc19pZBgBIAEoCVIPcmV2aXNpb25JdGVtc0lk');
@$core.Deprecated('Use detailRevisionItemsRequestDescriptor instead')
const DetailRevisionItemsRequest$json = const {
  '1': 'DetailRevisionItemsRequest',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.DetailRevisionItemsRequest.Content', '10': 'content'},
  ],
  '3': const [DetailRevisionItemsRequest_Content$json],
};

@$core.Deprecated('Use detailRevisionItemsRequestDescriptor instead')
const DetailRevisionItemsRequest_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'revision_items_id', '3': 3, '4': 1, '5': 9, '10': 'revisionItemsId'},
  ],
};

/// Descriptor for `DetailRevisionItemsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List detailRevisionItemsRequestDescriptor = $convert.base64Decode('ChpEZXRhaWxSZXZpc2lvbkl0ZW1zUmVxdWVzdBImCgZjb21tb24YASABKAsyDi5hcGkudjEuQ29tbW9uUgZjb21tb24SRAoHY29udGVudBgCIAEoCzIqLmFwaS52MS5EZXRhaWxSZXZpc2lvbkl0ZW1zUmVxdWVzdC5Db250ZW50Ugdjb250ZW50GnwKB0NvbnRlbnQSGQoIc3RvcmVfaWQYASABKAlSB3N0b3JlSWQSKgoRc3RvcmVfdGVybWluYWxfaWQYAiABKAlSD3N0b3JlVGVybWluYWxJZBIqChFyZXZpc2lvbl9pdGVtc19pZBgDIAEoCVIPcmV2aXNpb25JdGVtc0lk');
@$core.Deprecated('Use detailRevisionItemsResponseDescriptor instead')
const DetailRevisionItemsResponse$json = const {
  '1': 'DetailRevisionItemsResponse',
  '2': const [
    const {'1': 'common', '3': 1, '4': 1, '5': 11, '6': '.api.v1.Common', '10': 'common'},
    const {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.api.v1.DetailRevisionItemsResponse.Content', '10': 'content'},
  ],
  '3': const [DetailRevisionItemsResponse_Content$json],
};

@$core.Deprecated('Use detailRevisionItemsResponseDescriptor instead')
const DetailRevisionItemsResponse_Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'date', '3': 1, '4': 1, '5': 9, '10': 'date'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'items', '3': 3, '4': 3, '5': 11, '6': '.api.v1.RevisionItemDetail', '10': 'items'},
  ],
};

/// Descriptor for `DetailRevisionItemsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List detailRevisionItemsResponseDescriptor = $convert.base64Decode('ChtEZXRhaWxSZXZpc2lvbkl0ZW1zUmVzcG9uc2USJgoGY29tbW9uGAEgASgLMg4uYXBpLnYxLkNvbW1vblIGY29tbW9uEkUKB2NvbnRlbnQYAiABKAsyKy5hcGkudjEuRGV0YWlsUmV2aXNpb25JdGVtc1Jlc3BvbnNlLkNvbnRlbnRSB2NvbnRlbnQaYwoHQ29udGVudBISCgRkYXRlGAEgASgJUgRkYXRlEhIKBG5hbWUYAiABKAlSBG5hbWUSMAoFaXRlbXMYAyADKAsyGi5hcGkudjEuUmV2aXNpb25JdGVtRGV0YWlsUgVpdGVtcw==');
