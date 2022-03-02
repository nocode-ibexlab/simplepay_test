///
//  Generated code. Do not modify.
//  source: api/v1/table/table.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use allTablesDescriptor instead')
const AllTables$json = const {
  '1': 'AllTables',
  '2': const [
    const {'1': 'account_subject', '3': 1, '4': 3, '5': 11, '6': '.api.v1.table.AccountSubject', '10': 'accountSubject'},
    const {'1': 'basic_data_item', '3': 2, '4': 3, '5': 11, '6': '.api.v1.table.BasicDataItem', '10': 'basicDataItem'},
    const {'1': 'store_terminal_basic_data', '3': 3, '4': 3, '5': 11, '6': '.api.v1.table.StoreTerminalBasicData', '10': 'storeTerminalBasicData'},
    const {'1': 'store_terminal_basic_data_item', '3': 4, '4': 3, '5': 11, '6': '.api.v1.table.StoreTerminalBasicDataItem', '10': 'storeTerminalBasicDataItem'},
    const {'1': 'i18n_term', '3': 5, '4': 3, '5': 11, '6': '.api.v1.table.I18NTerm', '10': 'i18nTerm'},
    const {'1': 'employee_group', '3': 6, '4': 3, '5': 11, '6': '.api.v1.table.EmployeeGroup', '10': 'employeeGroup'},
    const {'1': 'employee', '3': 7, '4': 3, '5': 11, '6': '.api.v1.table.Employee', '10': 'employee'},
    const {'1': 'employee_authority', '3': 8, '4': 3, '5': 11, '6': '.api.v1.table.EmployeeAuthority', '10': 'employeeAuthority'},
    const {'1': 'table_detail', '3': 9, '4': 3, '5': 11, '6': '.api.v1.table.TableDetail', '10': 'tableDetail'},
    const {'1': 'table_group', '3': 10, '4': 3, '5': 11, '6': '.api.v1.table.TableGroup', '10': 'tableGroup'},
    const {'1': 'table', '3': 11, '4': 3, '5': 11, '6': '.api.v1.table.Table', '10': 'table'},
    const {'1': 'basic_data', '3': 12, '4': 3, '5': 11, '6': '.api.v1.table.BasicData', '10': 'basicData'},
    const {'1': 'store_terminal', '3': 13, '4': 3, '5': 11, '6': '.api.v1.table.StoreTerminal', '10': 'storeTerminal'},
    const {'1': 'kitchen_memo_group', '3': 14, '4': 3, '5': 11, '6': '.api.v1.table.KitchenMemoGroup', '10': 'kitchenMemoGroup'},
    const {'1': 'kitchen_memo', '3': 15, '4': 3, '5': 11, '6': '.api.v1.table.KitchenMemo', '10': 'kitchenMemo'},
    const {'1': 'item_group', '3': 16, '4': 3, '5': 11, '6': '.api.v1.table.ItemGroup', '10': 'itemGroup'},
    const {'1': 'item', '3': 17, '4': 3, '5': 11, '6': '.api.v1.table.Item', '10': 'item'},
    const {'1': 'option_group', '3': 18, '4': 3, '5': 11, '6': '.api.v1.table.OptionGroup', '10': 'optionGroup'},
    const {'1': 'option_entity', '3': 19, '4': 3, '5': 11, '6': '.api.v1.table.OptionEntity', '10': 'optionEntity'},
    const {'1': 'set_entity', '3': 20, '4': 3, '5': 11, '6': '.api.v1.table.SetEntity', '10': 'setEntity'},
    const {'1': 'item_option', '3': 21, '4': 3, '5': 11, '6': '.api.v1.table.ItemOption', '10': 'itemOption'},
    const {'1': 'menu_group', '3': 22, '4': 3, '5': 11, '6': '.api.v1.table.MenuGroup', '10': 'menuGroup'},
    const {'1': 'menu_group_use', '3': 23, '4': 3, '5': 11, '6': '.api.v1.table.MenuGroupUse', '10': 'menuGroupUse'},
    const {'1': 'menu_item', '3': 24, '4': 3, '5': 11, '6': '.api.v1.table.MenuItem', '10': 'menuItem'},
    const {'1': 'store', '3': 25, '4': 3, '5': 11, '6': '.api.v1.table.Store', '10': 'store'},
    const {'1': 'admin_user', '3': 26, '4': 3, '5': 11, '6': '.api.v1.table.AdminUser', '10': 'adminUser'},
    const {'1': 'self_menu_group', '3': 27, '4': 3, '5': 11, '6': '.api.v1.table.SelfMenuGroup', '10': 'selfMenuGroup'},
    const {'1': 'self_menu_item', '3': 28, '4': 3, '5': 11, '6': '.api.v1.table.SelfMenuItem', '10': 'selfMenuItem'},
    const {'1': 'template_item', '3': 29, '4': 3, '5': 11, '6': '.api.v1.table.TemplateItem', '10': 'templateItem'},
    const {'1': 'store_place', '3': 30, '4': 3, '5': 11, '6': '.api.v1.table.StorePlace', '10': 'storePlace'},
  ],
};

/// Descriptor for `AllTables`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allTablesDescriptor = $convert.base64Decode('CglBbGxUYWJsZXMSRQoPYWNjb3VudF9zdWJqZWN0GAEgAygLMhwuYXBpLnYxLnRhYmxlLkFjY291bnRTdWJqZWN0Ug5hY2NvdW50U3ViamVjdBJDCg9iYXNpY19kYXRhX2l0ZW0YAiADKAsyGy5hcGkudjEudGFibGUuQmFzaWNEYXRhSXRlbVINYmFzaWNEYXRhSXRlbRJfChlzdG9yZV90ZXJtaW5hbF9iYXNpY19kYXRhGAMgAygLMiQuYXBpLnYxLnRhYmxlLlN0b3JlVGVybWluYWxCYXNpY0RhdGFSFnN0b3JlVGVybWluYWxCYXNpY0RhdGESbAoec3RvcmVfdGVybWluYWxfYmFzaWNfZGF0YV9pdGVtGAQgAygLMiguYXBpLnYxLnRhYmxlLlN0b3JlVGVybWluYWxCYXNpY0RhdGFJdGVtUhpzdG9yZVRlcm1pbmFsQmFzaWNEYXRhSXRlbRIzCglpMThuX3Rlcm0YBSADKAsyFi5hcGkudjEudGFibGUuSTE4TlRlcm1SCGkxOG5UZXJtEkIKDmVtcGxveWVlX2dyb3VwGAYgAygLMhsuYXBpLnYxLnRhYmxlLkVtcGxveWVlR3JvdXBSDWVtcGxveWVlR3JvdXASMgoIZW1wbG95ZWUYByADKAsyFi5hcGkudjEudGFibGUuRW1wbG95ZWVSCGVtcGxveWVlEk4KEmVtcGxveWVlX2F1dGhvcml0eRgIIAMoCzIfLmFwaS52MS50YWJsZS5FbXBsb3llZUF1dGhvcml0eVIRZW1wbG95ZWVBdXRob3JpdHkSPAoMdGFibGVfZGV0YWlsGAkgAygLMhkuYXBpLnYxLnRhYmxlLlRhYmxlRGV0YWlsUgt0YWJsZURldGFpbBI5Cgt0YWJsZV9ncm91cBgKIAMoCzIYLmFwaS52MS50YWJsZS5UYWJsZUdyb3VwUgp0YWJsZUdyb3VwEikKBXRhYmxlGAsgAygLMhMuYXBpLnYxLnRhYmxlLlRhYmxlUgV0YWJsZRI2CgpiYXNpY19kYXRhGAwgAygLMhcuYXBpLnYxLnRhYmxlLkJhc2ljRGF0YVIJYmFzaWNEYXRhEkIKDnN0b3JlX3Rlcm1pbmFsGA0gAygLMhsuYXBpLnYxLnRhYmxlLlN0b3JlVGVybWluYWxSDXN0b3JlVGVybWluYWwSTAoSa2l0Y2hlbl9tZW1vX2dyb3VwGA4gAygLMh4uYXBpLnYxLnRhYmxlLktpdGNoZW5NZW1vR3JvdXBSEGtpdGNoZW5NZW1vR3JvdXASPAoMa2l0Y2hlbl9tZW1vGA8gAygLMhkuYXBpLnYxLnRhYmxlLktpdGNoZW5NZW1vUgtraXRjaGVuTWVtbxI2CgppdGVtX2dyb3VwGBAgAygLMhcuYXBpLnYxLnRhYmxlLkl0ZW1Hcm91cFIJaXRlbUdyb3VwEiYKBGl0ZW0YESADKAsyEi5hcGkudjEudGFibGUuSXRlbVIEaXRlbRI8CgxvcHRpb25fZ3JvdXAYEiADKAsyGS5hcGkudjEudGFibGUuT3B0aW9uR3JvdXBSC29wdGlvbkdyb3VwEj8KDW9wdGlvbl9lbnRpdHkYEyADKAsyGi5hcGkudjEudGFibGUuT3B0aW9uRW50aXR5UgxvcHRpb25FbnRpdHkSNgoKc2V0X2VudGl0eRgUIAMoCzIXLmFwaS52MS50YWJsZS5TZXRFbnRpdHlSCXNldEVudGl0eRI5CgtpdGVtX29wdGlvbhgVIAMoCzIYLmFwaS52MS50YWJsZS5JdGVtT3B0aW9uUgppdGVtT3B0aW9uEjYKCm1lbnVfZ3JvdXAYFiADKAsyFy5hcGkudjEudGFibGUuTWVudUdyb3VwUgltZW51R3JvdXASQAoObWVudV9ncm91cF91c2UYFyADKAsyGi5hcGkudjEudGFibGUuTWVudUdyb3VwVXNlUgxtZW51R3JvdXBVc2USMwoJbWVudV9pdGVtGBggAygLMhYuYXBpLnYxLnRhYmxlLk1lbnVJdGVtUghtZW51SXRlbRIpCgVzdG9yZRgZIAMoCzITLmFwaS52MS50YWJsZS5TdG9yZVIFc3RvcmUSNgoKYWRtaW5fdXNlchgaIAMoCzIXLmFwaS52MS50YWJsZS5BZG1pblVzZXJSCWFkbWluVXNlchJDCg9zZWxmX21lbnVfZ3JvdXAYGyADKAsyGy5hcGkudjEudGFibGUuU2VsZk1lbnVHcm91cFINc2VsZk1lbnVHcm91cBJACg5zZWxmX21lbnVfaXRlbRgcIAMoCzIaLmFwaS52MS50YWJsZS5TZWxmTWVudUl0ZW1SDHNlbGZNZW51SXRlbRI/Cg10ZW1wbGF0ZV9pdGVtGB0gAygLMhouYXBpLnYxLnRhYmxlLlRlbXBsYXRlSXRlbVIMdGVtcGxhdGVJdGVtEjkKC3N0b3JlX3BsYWNlGB4gAygLMhguYXBpLnYxLnRhYmxlLlN0b3JlUGxhY2VSCnN0b3JlUGxhY2U=');
@$core.Deprecated('Use salesAndReportTablesDescriptor instead')
const SalesAndReportTables$json = const {
  '1': 'SalesAndReportTables',
  '2': const [
    const {'1': 'sales_history', '3': 1, '4': 3, '5': 11, '6': '.api.v1.table.SalesHistory', '10': 'salesHistory'},
    const {'1': 'sales_history_item', '3': 2, '4': 3, '5': 11, '6': '.api.v1.table.SalesHistoryItem', '10': 'salesHistoryItem'},
    const {'1': 'sales_account_history', '3': 3, '4': 3, '5': 11, '6': '.api.v1.table.SalesAccountHistory', '10': 'salesAccountHistory'},
    const {'1': 'sales_account_history_details', '3': 4, '4': 3, '5': 11, '6': '.api.v1.table.SalesAccountHistoryDetails', '10': 'salesAccountHistoryDetails'},
    const {'1': 'sales_account_history_tip', '3': 5, '4': 3, '5': 11, '6': '.api.v1.table.SalesAccountHistoryTip', '10': 'salesAccountHistoryTip'},
    const {'1': 'sales_history_discount', '3': 6, '4': 3, '5': 11, '6': '.api.v1.table.SalesHistoryDiscount', '10': 'salesHistoryDiscount'},
    const {'1': 'cashdraw_cash_in_out_history', '3': 7, '4': 3, '5': 11, '6': '.api.v1.table.CashdrawCashInOutHistory', '10': 'cashdrawCashInOutHistory'},
    const {'1': 'cashier_bank_history', '3': 8, '4': 3, '5': 11, '6': '.api.v1.table.CashierBankHistory', '10': 'cashierBankHistory'},
    const {'1': 'cashier_bank_history_bill', '3': 9, '4': 3, '5': 11, '6': '.api.v1.table.CashierBankHistoryBill', '10': 'cashierBankHistoryBill'},
    const {'1': 'daily_report_history', '3': 10, '4': 3, '5': 11, '6': '.api.v1.table.DailyReportHistory', '10': 'dailyReportHistory'},
    const {'1': 'daily_report_history_payments', '3': 11, '4': 3, '5': 11, '6': '.api.v1.table.DailyReportHistoryPayments', '10': 'dailyReportHistoryPayments'},
  ],
};

/// Descriptor for `SalesAndReportTables`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List salesAndReportTablesDescriptor = $convert.base64Decode('ChRTYWxlc0FuZFJlcG9ydFRhYmxlcxI/Cg1zYWxlc19oaXN0b3J5GAEgAygLMhouYXBpLnYxLnRhYmxlLlNhbGVzSGlzdG9yeVIMc2FsZXNIaXN0b3J5EkwKEnNhbGVzX2hpc3RvcnlfaXRlbRgCIAMoCzIeLmFwaS52MS50YWJsZS5TYWxlc0hpc3RvcnlJdGVtUhBzYWxlc0hpc3RvcnlJdGVtElUKFXNhbGVzX2FjY291bnRfaGlzdG9yeRgDIAMoCzIhLmFwaS52MS50YWJsZS5TYWxlc0FjY291bnRIaXN0b3J5UhNzYWxlc0FjY291bnRIaXN0b3J5EmsKHXNhbGVzX2FjY291bnRfaGlzdG9yeV9kZXRhaWxzGAQgAygLMiguYXBpLnYxLnRhYmxlLlNhbGVzQWNjb3VudEhpc3RvcnlEZXRhaWxzUhpzYWxlc0FjY291bnRIaXN0b3J5RGV0YWlscxJfChlzYWxlc19hY2NvdW50X2hpc3RvcnlfdGlwGAUgAygLMiQuYXBpLnYxLnRhYmxlLlNhbGVzQWNjb3VudEhpc3RvcnlUaXBSFnNhbGVzQWNjb3VudEhpc3RvcnlUaXASWAoWc2FsZXNfaGlzdG9yeV9kaXNjb3VudBgGIAMoCzIiLmFwaS52MS50YWJsZS5TYWxlc0hpc3RvcnlEaXNjb3VudFIUc2FsZXNIaXN0b3J5RGlzY291bnQSZgocY2FzaGRyYXdfY2FzaF9pbl9vdXRfaGlzdG9yeRgHIAMoCzImLmFwaS52MS50YWJsZS5DYXNoZHJhd0Nhc2hJbk91dEhpc3RvcnlSGGNhc2hkcmF3Q2FzaEluT3V0SGlzdG9yeRJSChRjYXNoaWVyX2JhbmtfaGlzdG9yeRgIIAMoCzIgLmFwaS52MS50YWJsZS5DYXNoaWVyQmFua0hpc3RvcnlSEmNhc2hpZXJCYW5rSGlzdG9yeRJfChljYXNoaWVyX2JhbmtfaGlzdG9yeV9iaWxsGAkgAygLMiQuYXBpLnYxLnRhYmxlLkNhc2hpZXJCYW5rSGlzdG9yeUJpbGxSFmNhc2hpZXJCYW5rSGlzdG9yeUJpbGwSUgoUZGFpbHlfcmVwb3J0X2hpc3RvcnkYCiADKAsyIC5hcGkudjEudGFibGUuRGFpbHlSZXBvcnRIaXN0b3J5UhJkYWlseVJlcG9ydEhpc3RvcnkSawodZGFpbHlfcmVwb3J0X2hpc3RvcnlfcGF5bWVudHMYCyADKAsyKC5hcGkudjEudGFibGUuRGFpbHlSZXBvcnRIaXN0b3J5UGF5bWVudHNSGmRhaWx5UmVwb3J0SGlzdG9yeVBheW1lbnRz');
@$core.Deprecated('Use accountSubjectDescriptor instead')
const AccountSubject$json = const {
  '1': 'AccountSubject',
  '2': const [
    const {'1': 'account_subject_id', '3': 1, '4': 1, '5': 9, '10': 'accountSubjectId'},
    const {'1': 'i18n_term_id', '3': 2, '4': 1, '5': 9, '10': 'i18nTermId'},
    const {'1': 'account_subject_name', '3': 3, '4': 1, '5': 9, '10': 'accountSubjectName'},
    const {'1': 'account_subject_useType', '3': 4, '4': 1, '5': 9, '10': 'accountSubjectUseType'},
    const {'1': 'account_subject_type', '3': 5, '4': 1, '5': 9, '10': 'accountSubjectType'},
    const {'1': 'fixed_expenses_yn', '3': 6, '4': 1, '5': 8, '10': 'fixedExpensesYn'},
    const {'1': 'remark_a', '3': 7, '4': 1, '5': 9, '10': 'remarkA'},
    const {'1': 'remark_b', '3': 8, '4': 1, '5': 9, '10': 'remarkB'},
    const {'1': 'remark_c', '3': 9, '4': 1, '5': 9, '10': 'remarkC'},
    const {'1': 'remark_d', '3': 10, '4': 1, '5': 9, '10': 'remarkD'},
    const {'1': 'remark_e', '3': 11, '4': 1, '5': 9, '10': 'remarkE'},
    const {'1': 'user_input', '3': 12, '4': 1, '5': 9, '10': 'userInput'},
    const {'1': 'first_registrant_id', '3': 13, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 14, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 15, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 16, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 17, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `AccountSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountSubjectDescriptor = $convert.base64Decode('Cg5BY2NvdW50U3ViamVjdBIsChJhY2NvdW50X3N1YmplY3RfaWQYASABKAlSEGFjY291bnRTdWJqZWN0SWQSIAoMaTE4bl90ZXJtX2lkGAIgASgJUgppMThuVGVybUlkEjAKFGFjY291bnRfc3ViamVjdF9uYW1lGAMgASgJUhJhY2NvdW50U3ViamVjdE5hbWUSNgoXYWNjb3VudF9zdWJqZWN0X3VzZVR5cGUYBCABKAlSFWFjY291bnRTdWJqZWN0VXNlVHlwZRIwChRhY2NvdW50X3N1YmplY3RfdHlwZRgFIAEoCVISYWNjb3VudFN1YmplY3RUeXBlEioKEWZpeGVkX2V4cGVuc2VzX3luGAYgASgIUg9maXhlZEV4cGVuc2VzWW4SGQoIcmVtYXJrX2EYByABKAlSB3JlbWFya0ESGQoIcmVtYXJrX2IYCCABKAlSB3JlbWFya0ISGQoIcmVtYXJrX2MYCSABKAlSB3JlbWFya0MSGQoIcmVtYXJrX2QYCiABKAlSB3JlbWFya0QSGQoIcmVtYXJrX2UYCyABKAlSB3JlbWFya0USHQoKdXNlcl9pbnB1dBgMIAEoCVIJdXNlcklucHV0Ei4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYDSABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgOIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYDyABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgQIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgRIAEoCVIJc3RhdGVDb2Rl');
@$core.Deprecated('Use basicDataItemDescriptor instead')
const BasicDataItem$json = const {
  '1': 'BasicDataItem',
  '2': const [
    const {'1': 'basic_data_item_id', '3': 1, '4': 1, '5': 9, '10': 'basicDataItemId'},
    const {'1': 'basic_data_id', '3': 2, '4': 1, '5': 9, '10': 'basicDataId'},
    const {'1': 'i18n_term_id', '3': 3, '4': 1, '5': 9, '10': 'i18nTermId'},
    const {'1': 'basic_data_item_serial_number', '3': 4, '4': 1, '5': 5, '10': 'basicDataItemSerialNumber'},
    const {'1': 'basic_data_item_code_name', '3': 5, '4': 1, '5': 9, '10': 'basicDataItemCodeName'},
    const {'1': 'basic_data_item_name', '3': 6, '4': 1, '5': 9, '10': 'basicDataItemName'},
    const {'1': 'data1', '3': 7, '4': 1, '5': 9, '10': 'data1'},
    const {'1': 'data2', '3': 8, '4': 1, '5': 9, '10': 'data2'},
    const {'1': 'data3', '3': 9, '4': 1, '5': 9, '10': 'data3'},
    const {'1': 'data4', '3': 10, '4': 1, '5': 9, '10': 'data4'},
    const {'1': 'data5', '3': 11, '4': 1, '5': 9, '10': 'data5'},
    const {'1': 'data6', '3': 12, '4': 1, '5': 9, '10': 'data6'},
    const {'1': 'data7', '3': 13, '4': 1, '5': 9, '10': 'data7'},
    const {'1': 'data8', '3': 14, '4': 1, '5': 9, '10': 'data8'},
    const {'1': 'data9', '3': 15, '4': 1, '5': 9, '10': 'data9'},
    const {'1': 'data10', '3': 16, '4': 1, '5': 9, '10': 'data10'},
    const {'1': 'data11', '3': 17, '4': 1, '5': 9, '10': 'data11'},
    const {'1': 'data12', '3': 18, '4': 1, '5': 9, '10': 'data12'},
    const {'1': 'data13', '3': 19, '4': 1, '5': 9, '10': 'data13'},
    const {'1': 'data14', '3': 20, '4': 1, '5': 9, '10': 'data14'},
    const {'1': 'data15', '3': 21, '4': 1, '5': 9, '10': 'data15'},
    const {'1': 'data16', '3': 22, '4': 1, '5': 9, '10': 'data16'},
    const {'1': 'data17', '3': 23, '4': 1, '5': 9, '10': 'data17'},
    const {'1': 'data18', '3': 24, '4': 1, '5': 9, '10': 'data18'},
    const {'1': 'data19', '3': 25, '4': 1, '5': 9, '10': 'data19'},
    const {'1': 'data20', '3': 26, '4': 1, '5': 9, '10': 'data20'},
    const {'1': 'hiding_yn', '3': 27, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 28, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 29, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 30, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 31, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 32, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'server_last_revision_datetime', '3': 33, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `BasicDataItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List basicDataItemDescriptor = $convert.base64Decode('Cg1CYXNpY0RhdGFJdGVtEisKEmJhc2ljX2RhdGFfaXRlbV9pZBgBIAEoCVIPYmFzaWNEYXRhSXRlbUlkEiIKDWJhc2ljX2RhdGFfaWQYAiABKAlSC2Jhc2ljRGF0YUlkEiAKDGkxOG5fdGVybV9pZBgDIAEoCVIKaTE4blRlcm1JZBJACh1iYXNpY19kYXRhX2l0ZW1fc2VyaWFsX251bWJlchgEIAEoBVIZYmFzaWNEYXRhSXRlbVNlcmlhbE51bWJlchI4ChliYXNpY19kYXRhX2l0ZW1fY29kZV9uYW1lGAUgASgJUhViYXNpY0RhdGFJdGVtQ29kZU5hbWUSLwoUYmFzaWNfZGF0YV9pdGVtX25hbWUYBiABKAlSEWJhc2ljRGF0YUl0ZW1OYW1lEhQKBWRhdGExGAcgASgJUgVkYXRhMRIUCgVkYXRhMhgIIAEoCVIFZGF0YTISFAoFZGF0YTMYCSABKAlSBWRhdGEzEhQKBWRhdGE0GAogASgJUgVkYXRhNBIUCgVkYXRhNRgLIAEoCVIFZGF0YTUSFAoFZGF0YTYYDCABKAlSBWRhdGE2EhQKBWRhdGE3GA0gASgJUgVkYXRhNxIUCgVkYXRhOBgOIAEoCVIFZGF0YTgSFAoFZGF0YTkYDyABKAlSBWRhdGE5EhYKBmRhdGExMBgQIAEoCVIGZGF0YTEwEhYKBmRhdGExMRgRIAEoCVIGZGF0YTExEhYKBmRhdGExMhgSIAEoCVIGZGF0YTEyEhYKBmRhdGExMxgTIAEoCVIGZGF0YTEzEhYKBmRhdGExNBgUIAEoCVIGZGF0YTE0EhYKBmRhdGExNRgVIAEoCVIGZGF0YTE1EhYKBmRhdGExNhgWIAEoCVIGZGF0YTE2EhYKBmRhdGExNxgXIAEoCVIGZGF0YTE3EhYKBmRhdGExOBgYIAEoCVIGZGF0YTE4EhYKBmRhdGExORgZIAEoCVIGZGF0YTE5EhYKBmRhdGEyMBgaIAEoCVIGZGF0YTIwEhsKCWhpZGluZ195bhgbIAEoCFIIaGlkaW5nWW4SLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgcIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGB0gASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgeIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGB8gASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGCAgASgJUglzdGF0ZUNvZGUSQQodc2VydmVyX2xhc3RfcmV2aXNpb25fZGF0ZXRpbWUYISABKAlSGnNlcnZlckxhc3RSZXZpc2lvbkRhdGV0aW1l');
@$core.Deprecated('Use storeTerminalBasicDataDescriptor instead')
const StoreTerminalBasicData$json = const {
  '1': 'StoreTerminalBasicData',
  '2': const [
    const {'1': 'store_terminal_basic_data_id', '3': 1, '4': 1, '5': 9, '10': 'storeTerminalBasicDataId'},
    const {'1': 'store_terminal_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'i18n_term_id', '3': 3, '4': 1, '5': 9, '10': 'i18nTermId'},
    const {'1': 'store_terminal_basic_data_code_name', '3': 4, '4': 1, '5': 9, '10': 'storeTerminalBasicDataCodeName'},
    const {'1': 'store_terminal_basic_data_name', '3': 5, '4': 1, '5': 9, '10': 'storeTerminalBasicDataName'},
    const {'1': 'hiding_yn', '3': 6, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 7, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 8, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 9, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 10, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 11, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `StoreTerminalBasicData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeTerminalBasicDataDescriptor = $convert.base64Decode('ChZTdG9yZVRlcm1pbmFsQmFzaWNEYXRhEj4KHHN0b3JlX3Rlcm1pbmFsX2Jhc2ljX2RhdGFfaWQYASABKAlSGHN0b3JlVGVybWluYWxCYXNpY0RhdGFJZBIqChFzdG9yZV90ZXJtaW5hbF9pZBgCIAEoCVIPc3RvcmVUZXJtaW5hbElkEiAKDGkxOG5fdGVybV9pZBgDIAEoCVIKaTE4blRlcm1JZBJLCiNzdG9yZV90ZXJtaW5hbF9iYXNpY19kYXRhX2NvZGVfbmFtZRgEIAEoCVIec3RvcmVUZXJtaW5hbEJhc2ljRGF0YUNvZGVOYW1lEkIKHnN0b3JlX3Rlcm1pbmFsX2Jhc2ljX2RhdGFfbmFtZRgFIAEoCVIac3RvcmVUZXJtaW5hbEJhc2ljRGF0YU5hbWUSGwoJaGlkaW5nX3luGAYgASgIUghoaWRpbmdZbhIuChNmaXJzdF9yZWdpc3RyYW50X2lkGAcgASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYCCABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGAkgASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYCiABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYCyABKAlSCXN0YXRlQ29kZQ==');
@$core.Deprecated('Use storeTerminalBasicDataItemDescriptor instead')
const StoreTerminalBasicDataItem$json = const {
  '1': 'StoreTerminalBasicDataItem',
  '2': const [
    const {'1': 'store_terminal_basic_data_item_id', '3': 1, '4': 1, '5': 9, '10': 'storeTerminalBasicDataItemId'},
    const {'1': 'store_terminal_basic_data_id', '3': 2, '4': 1, '5': 9, '10': 'storeTerminalBasicDataId'},
    const {'1': 'i18n_term_id', '3': 3, '4': 1, '5': 9, '10': 'i18nTermId'},
    const {'1': 'store_terminal_basic_data_item_serial_number', '3': 4, '4': 1, '5': 5, '10': 'storeTerminalBasicDataItemSerialNumber'},
    const {'1': 'store_terminal_basic_data_item_code_name', '3': 5, '4': 1, '5': 9, '10': 'storeTerminalBasicDataItemCodeName'},
    const {'1': 'store_terminal_basic_data_item_name', '3': 6, '4': 1, '5': 9, '10': 'storeTerminalBasicDataItemName'},
    const {'1': 'data1', '3': 7, '4': 1, '5': 9, '10': 'data1'},
    const {'1': 'data2', '3': 8, '4': 1, '5': 9, '10': 'data2'},
    const {'1': 'data3', '3': 9, '4': 1, '5': 9, '10': 'data3'},
    const {'1': 'data4', '3': 10, '4': 1, '5': 9, '10': 'data4'},
    const {'1': 'data5', '3': 11, '4': 1, '5': 9, '10': 'data5'},
    const {'1': 'data6', '3': 12, '4': 1, '5': 9, '10': 'data6'},
    const {'1': 'data7', '3': 13, '4': 1, '5': 9, '10': 'data7'},
    const {'1': 'data8', '3': 14, '4': 1, '5': 9, '10': 'data8'},
    const {'1': 'data9', '3': 15, '4': 1, '5': 9, '10': 'data9'},
    const {'1': 'data10', '3': 16, '4': 1, '5': 9, '10': 'data10'},
    const {'1': 'data11', '3': 17, '4': 1, '5': 9, '10': 'data11'},
    const {'1': 'data12', '3': 18, '4': 1, '5': 9, '10': 'data12'},
    const {'1': 'data13', '3': 19, '4': 1, '5': 9, '10': 'data13'},
    const {'1': 'data14', '3': 20, '4': 1, '5': 9, '10': 'data14'},
    const {'1': 'data15', '3': 21, '4': 1, '5': 9, '10': 'data15'},
    const {'1': 'data16', '3': 22, '4': 1, '5': 9, '10': 'data16'},
    const {'1': 'data17', '3': 23, '4': 1, '5': 9, '10': 'data17'},
    const {'1': 'data18', '3': 24, '4': 1, '5': 9, '10': 'data18'},
    const {'1': 'data19', '3': 25, '4': 1, '5': 9, '10': 'data19'},
    const {'1': 'data20', '3': 26, '4': 1, '5': 9, '10': 'data20'},
    const {'1': 'hiding_yn', '3': 27, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 28, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 29, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 30, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 31, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 32, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'server_last_revision_datetime', '3': 33, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `StoreTerminalBasicDataItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeTerminalBasicDataItemDescriptor = $convert.base64Decode('ChpTdG9yZVRlcm1pbmFsQmFzaWNEYXRhSXRlbRJHCiFzdG9yZV90ZXJtaW5hbF9iYXNpY19kYXRhX2l0ZW1faWQYASABKAlSHHN0b3JlVGVybWluYWxCYXNpY0RhdGFJdGVtSWQSPgocc3RvcmVfdGVybWluYWxfYmFzaWNfZGF0YV9pZBgCIAEoCVIYc3RvcmVUZXJtaW5hbEJhc2ljRGF0YUlkEiAKDGkxOG5fdGVybV9pZBgDIAEoCVIKaTE4blRlcm1JZBJcCixzdG9yZV90ZXJtaW5hbF9iYXNpY19kYXRhX2l0ZW1fc2VyaWFsX251bWJlchgEIAEoBVImc3RvcmVUZXJtaW5hbEJhc2ljRGF0YUl0ZW1TZXJpYWxOdW1iZXISVAooc3RvcmVfdGVybWluYWxfYmFzaWNfZGF0YV9pdGVtX2NvZGVfbmFtZRgFIAEoCVIic3RvcmVUZXJtaW5hbEJhc2ljRGF0YUl0ZW1Db2RlTmFtZRJLCiNzdG9yZV90ZXJtaW5hbF9iYXNpY19kYXRhX2l0ZW1fbmFtZRgGIAEoCVIec3RvcmVUZXJtaW5hbEJhc2ljRGF0YUl0ZW1OYW1lEhQKBWRhdGExGAcgASgJUgVkYXRhMRIUCgVkYXRhMhgIIAEoCVIFZGF0YTISFAoFZGF0YTMYCSABKAlSBWRhdGEzEhQKBWRhdGE0GAogASgJUgVkYXRhNBIUCgVkYXRhNRgLIAEoCVIFZGF0YTUSFAoFZGF0YTYYDCABKAlSBWRhdGE2EhQKBWRhdGE3GA0gASgJUgVkYXRhNxIUCgVkYXRhOBgOIAEoCVIFZGF0YTgSFAoFZGF0YTkYDyABKAlSBWRhdGE5EhYKBmRhdGExMBgQIAEoCVIGZGF0YTEwEhYKBmRhdGExMRgRIAEoCVIGZGF0YTExEhYKBmRhdGExMhgSIAEoCVIGZGF0YTEyEhYKBmRhdGExMxgTIAEoCVIGZGF0YTEzEhYKBmRhdGExNBgUIAEoCVIGZGF0YTE0EhYKBmRhdGExNRgVIAEoCVIGZGF0YTE1EhYKBmRhdGExNhgWIAEoCVIGZGF0YTE2EhYKBmRhdGExNxgXIAEoCVIGZGF0YTE3EhYKBmRhdGExOBgYIAEoCVIGZGF0YTE4EhYKBmRhdGExORgZIAEoCVIGZGF0YTE5EhYKBmRhdGEyMBgaIAEoCVIGZGF0YTIwEhsKCWhpZGluZ195bhgbIAEoCFIIaGlkaW5nWW4SLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgcIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGB0gASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgeIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGB8gASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGCAgASgJUglzdGF0ZUNvZGUSQQodc2VydmVyX2xhc3RfcmV2aXNpb25fZGF0ZXRpbWUYISABKAlSGnNlcnZlckxhc3RSZXZpc2lvbkRhdGV0aW1l');
@$core.Deprecated('Use i18NTermDescriptor instead')
const I18NTerm$json = const {
  '1': 'I18NTerm',
  '2': const [
    const {'1': 'i18n_term_id', '3': 1, '4': 1, '5': 9, '10': 'i18nTermId'},
    const {'1': 'user_input', '3': 2, '4': 1, '5': 9, '10': 'userInput'},
    const {'1': 'english', '3': 3, '4': 1, '5': 9, '10': 'english'},
    const {'1': 'korean', '3': 4, '4': 1, '5': 9, '10': 'korean'},
    const {'1': 'japanese', '3': 5, '4': 1, '5': 9, '10': 'japanese'},
    const {'1': 'chinese', '3': 6, '4': 1, '5': 9, '10': 'chinese'},
    const {'1': 'german', '3': 7, '4': 1, '5': 9, '10': 'german'},
    const {'1': 'spanish', '3': 8, '4': 1, '5': 9, '10': 'spanish'},
    const {'1': 'portuguese', '3': 9, '4': 1, '5': 9, '10': 'portuguese'},
    const {'1': 'vietnamese', '3': 10, '4': 1, '5': 9, '10': 'vietnamese'},
    const {'1': 'french', '3': 11, '4': 1, '5': 9, '10': 'french'},
    const {'1': 'russian', '3': 12, '4': 1, '5': 9, '10': 'russian'},
    const {'1': 'arabic', '3': 13, '4': 1, '5': 9, '10': 'arabic'},
    const {'1': 'thai', '3': 14, '4': 1, '5': 9, '10': 'thai'},
    const {'1': 'first_registrant_id', '3': 15, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 16, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 17, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 18, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 19, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'kazakhstan', '3': 20, '4': 1, '5': 9, '10': 'kazakhstan'},
  ],
};

/// Descriptor for `I18NTerm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List i18NTermDescriptor = $convert.base64Decode('CghJMThOVGVybRIgCgxpMThuX3Rlcm1faWQYASABKAlSCmkxOG5UZXJtSWQSHQoKdXNlcl9pbnB1dBgCIAEoCVIJdXNlcklucHV0EhgKB2VuZ2xpc2gYAyABKAlSB2VuZ2xpc2gSFgoGa29yZWFuGAQgASgJUgZrb3JlYW4SGgoIamFwYW5lc2UYBSABKAlSCGphcGFuZXNlEhgKB2NoaW5lc2UYBiABKAlSB2NoaW5lc2USFgoGZ2VybWFuGAcgASgJUgZnZXJtYW4SGAoHc3BhbmlzaBgIIAEoCVIHc3BhbmlzaBIeCgpwb3J0dWd1ZXNlGAkgASgJUgpwb3J0dWd1ZXNlEh4KCnZpZXRuYW1lc2UYCiABKAlSCnZpZXRuYW1lc2USFgoGZnJlbmNoGAsgASgJUgZmcmVuY2gSGAoHcnVzc2lhbhgMIAEoCVIHcnVzc2lhbhIWCgZhcmFiaWMYDSABKAlSBmFyYWJpYxISCgR0aGFpGA4gASgJUgR0aGFpEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYDyABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgQIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYESABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgSIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgTIAEoCVIJc3RhdGVDb2RlEh4KCmthemFraHN0YW4YFCABKAlSCmthemFraHN0YW4=');
@$core.Deprecated('Use employeeGroupDescriptor instead')
const EmployeeGroup$json = const {
  '1': 'EmployeeGroup',
  '2': const [
    const {'1': 'employee_group_id', '3': 1, '4': 1, '5': 9, '10': 'employeeGroupId'},
    const {'1': 'employee_group_name', '3': 2, '4': 1, '5': 9, '10': 'employeeGroupName'},
    const {'1': 'hiding_yn', '3': 3, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 4, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 5, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 6, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 7, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 8, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `EmployeeGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List employeeGroupDescriptor = $convert.base64Decode('Cg1FbXBsb3llZUdyb3VwEioKEWVtcGxveWVlX2dyb3VwX2lkGAEgASgJUg9lbXBsb3llZUdyb3VwSWQSLgoTZW1wbG95ZWVfZ3JvdXBfbmFtZRgCIAEoCVIRZW1wbG95ZWVHcm91cE5hbWUSGwoJaGlkaW5nX3luGAMgASgIUghoaWRpbmdZbhIuChNmaXJzdF9yZWdpc3RyYW50X2lkGAQgASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYBSABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGAYgASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYByABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYCCABKAlSCXN0YXRlQ29kZQ==');
@$core.Deprecated('Use employeeDescriptor instead')
const Employee$json = const {
  '1': 'Employee',
  '2': const [
    const {'1': 'employee_id', '3': 1, '4': 1, '5': 9, '10': 'employeeId'},
    const {'1': 'employee_group_id', '3': 2, '4': 1, '5': 9, '10': 'employeeGroupId'},
    const {'1': 'employee_name', '3': 3, '4': 1, '5': 9, '10': 'employeeName'},
    const {'1': 'tel_number', '3': 4, '4': 1, '5': 9, '10': 'telNumber'},
    const {'1': 'hp_number', '3': 5, '4': 1, '5': 9, '10': 'hpNumber'},
    const {'1': 'primary_address', '3': 6, '4': 1, '5': 9, '10': 'primaryAddress'},
    const {'1': 'detail_address', '3': 7, '4': 1, '5': 9, '10': 'detailAddress'},
    const {'1': 'login_password', '3': 8, '4': 1, '5': 9, '10': 'loginPassword'},
    const {'1': 'employee_description', '3': 9, '4': 1, '5': 9, '10': 'employeeDescription'},
    const {'1': 'hiding_yn', '3': 10, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 11, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 12, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 13, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 14, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 15, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'employee_code', '3': 16, '4': 1, '5': 5, '10': 'employeeCode'},
    const {'1': 'data1', '3': 17, '4': 1, '5': 9, '10': 'data1'},
    const {'1': 'data2', '3': 18, '4': 1, '5': 9, '10': 'data2'},
    const {'1': 'data3', '3': 19, '4': 1, '5': 9, '10': 'data3'},
  ],
};

/// Descriptor for `Employee`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List employeeDescriptor = $convert.base64Decode('CghFbXBsb3llZRIfCgtlbXBsb3llZV9pZBgBIAEoCVIKZW1wbG95ZWVJZBIqChFlbXBsb3llZV9ncm91cF9pZBgCIAEoCVIPZW1wbG95ZWVHcm91cElkEiMKDWVtcGxveWVlX25hbWUYAyABKAlSDGVtcGxveWVlTmFtZRIdCgp0ZWxfbnVtYmVyGAQgASgJUgl0ZWxOdW1iZXISGwoJaHBfbnVtYmVyGAUgASgJUghocE51bWJlchInCg9wcmltYXJ5X2FkZHJlc3MYBiABKAlSDnByaW1hcnlBZGRyZXNzEiUKDmRldGFpbF9hZGRyZXNzGAcgASgJUg1kZXRhaWxBZGRyZXNzEiUKDmxvZ2luX3Bhc3N3b3JkGAggASgJUg1sb2dpblBhc3N3b3JkEjEKFGVtcGxveWVlX2Rlc2NyaXB0aW9uGAkgASgJUhNlbXBsb3llZURlc2NyaXB0aW9uEhsKCWhpZGluZ195bhgKIAEoCFIIaGlkaW5nWW4SLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgLIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGAwgASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgNIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGA4gASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGA8gASgJUglzdGF0ZUNvZGUSIwoNZW1wbG95ZWVfY29kZRgQIAEoBVIMZW1wbG95ZWVDb2RlEhQKBWRhdGExGBEgASgJUgVkYXRhMRIUCgVkYXRhMhgSIAEoCVIFZGF0YTISFAoFZGF0YTMYEyABKAlSBWRhdGEz');
@$core.Deprecated('Use employeeAuthorityDescriptor instead')
const EmployeeAuthority$json = const {
  '1': 'EmployeeAuthority',
  '2': const [
    const {'1': 'employee_authority_id', '3': 1, '4': 1, '5': 9, '10': 'employeeAuthorityId'},
    const {'1': 'employee_id', '3': 2, '4': 1, '5': 9, '10': 'employeeId'},
    const {'1': 'client_authority_group_code', '3': 3, '4': 1, '5': 9, '10': 'clientAuthorityGroupCode'},
    const {'1': 'first_registrant_id', '3': 4, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 5, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 6, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 7, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 8, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `EmployeeAuthority`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List employeeAuthorityDescriptor = $convert.base64Decode('ChFFbXBsb3llZUF1dGhvcml0eRIyChVlbXBsb3llZV9hdXRob3JpdHlfaWQYASABKAlSE2VtcGxveWVlQXV0aG9yaXR5SWQSHwoLZW1wbG95ZWVfaWQYAiABKAlSCmVtcGxveWVlSWQSPQobY2xpZW50X2F1dGhvcml0eV9ncm91cF9jb2RlGAMgASgJUhhjbGllbnRBdXRob3JpdHlHcm91cENvZGUSLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgEIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGAUgASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgGIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGAcgASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGAggASgJUglzdGF0ZUNvZGU=');
@$core.Deprecated('Use tableDetailDescriptor instead')
const TableDetail$json = const {
  '1': 'TableDetail',
  '2': const [
    const {'1': 'table_id', '3': 1, '4': 1, '5': 9, '10': 'tableId'},
    const {'1': 'seat_count', '3': 2, '4': 1, '5': 5, '10': 'seatCount'},
    const {'1': 'smoking_possible_yn', '3': 3, '4': 1, '5': 8, '10': 'smokingPossibleYn'},
    const {'1': 'window_yn', '3': 4, '4': 1, '5': 8, '10': 'windowYn'},
    const {'1': 'booth_yn', '3': 5, '4': 1, '5': 8, '10': 'boothYn'},
    const {'1': 'privacy_protection_yn', '3': 6, '4': 1, '5': 8, '10': 'privacyProtectionYn'},
    const {'1': 'charged_server_id', '3': 7, '4': 1, '5': 9, '10': 'chargedServerId'},
    const {'1': 'first_registrant_id', '3': 8, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 9, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 10, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 11, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 12, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `TableDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tableDetailDescriptor = $convert.base64Decode('CgtUYWJsZURldGFpbBIZCgh0YWJsZV9pZBgBIAEoCVIHdGFibGVJZBIdCgpzZWF0X2NvdW50GAIgASgFUglzZWF0Q291bnQSLgoTc21va2luZ19wb3NzaWJsZV95bhgDIAEoCFIRc21va2luZ1Bvc3NpYmxlWW4SGwoJd2luZG93X3luGAQgASgIUgh3aW5kb3dZbhIZCghib290aF95bhgFIAEoCFIHYm9vdGhZbhIyChVwcml2YWN5X3Byb3RlY3Rpb25feW4YBiABKAhSE3ByaXZhY3lQcm90ZWN0aW9uWW4SKgoRY2hhcmdlZF9zZXJ2ZXJfaWQYByABKAlSD2NoYXJnZWRTZXJ2ZXJJZBIuChNmaXJzdF9yZWdpc3RyYW50X2lkGAggASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYCSABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGAogASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYCyABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYDCABKAlSCXN0YXRlQ29kZQ==');
@$core.Deprecated('Use tableGroupDescriptor instead')
const TableGroup$json = const {
  '1': 'TableGroup',
  '2': const [
    const {'1': 'table_group_id', '3': 1, '4': 1, '5': 9, '10': 'tableGroupId'},
    const {'1': 'table_group_name', '3': 2, '4': 1, '5': 9, '10': 'tableGroupName'},
    const {'1': 'location_x', '3': 3, '4': 1, '5': 5, '10': 'locationX'},
    const {'1': 'location_y', '3': 4, '4': 1, '5': 5, '10': 'locationY'},
    const {'1': 'location_z', '3': 5, '4': 1, '5': 5, '10': 'locationZ'},
    const {'1': 'background_image_name', '3': 6, '4': 1, '5': 9, '10': 'backgroundImageName'},
    const {'1': 'hiding_yn', '3': 7, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 8, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 9, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 10, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 11, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 12, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `TableGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tableGroupDescriptor = $convert.base64Decode('CgpUYWJsZUdyb3VwEiQKDnRhYmxlX2dyb3VwX2lkGAEgASgJUgx0YWJsZUdyb3VwSWQSKAoQdGFibGVfZ3JvdXBfbmFtZRgCIAEoCVIOdGFibGVHcm91cE5hbWUSHQoKbG9jYXRpb25feBgDIAEoBVIJbG9jYXRpb25YEh0KCmxvY2F0aW9uX3kYBCABKAVSCWxvY2F0aW9uWRIdCgpsb2NhdGlvbl96GAUgASgFUglsb2NhdGlvbloSMgoVYmFja2dyb3VuZF9pbWFnZV9uYW1lGAYgASgJUhNiYWNrZ3JvdW5kSW1hZ2VOYW1lEhsKCWhpZGluZ195bhgHIAEoCFIIaGlkaW5nWW4SLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgIIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGAkgASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgKIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGAsgASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGAwgASgJUglzdGF0ZUNvZGU=');
@$core.Deprecated('Use tableDescriptor instead')
const Table$json = const {
  '1': 'Table',
  '2': const [
    const {'1': 'table_id', '3': 1, '4': 1, '5': 9, '10': 'tableId'},
    const {'1': 'server_table_id', '3': 2, '4': 1, '5': 9, '10': 'serverTableId'},
    const {'1': 'table_group_id', '3': 3, '4': 1, '5': 9, '10': 'tableGroupId'},
    const {'1': 'table_name', '3': 4, '4': 1, '5': 9, '10': 'tableName'},
    const {'1': 'location_x', '3': 5, '4': 1, '5': 5, '10': 'locationX'},
    const {'1': 'location_y', '3': 6, '4': 1, '5': 5, '10': 'locationY'},
    const {'1': 'width', '3': 7, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 8, '4': 1, '5': 5, '10': 'height'},
    const {'1': 'table_image_name', '3': 9, '4': 1, '5': 9, '10': 'tableImageName'},
    const {'1': 'hiding_yn', '3': 10, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 11, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 12, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 13, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 14, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 15, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `Table`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tableDescriptor = $convert.base64Decode('CgVUYWJsZRIZCgh0YWJsZV9pZBgBIAEoCVIHdGFibGVJZBImCg9zZXJ2ZXJfdGFibGVfaWQYAiABKAlSDXNlcnZlclRhYmxlSWQSJAoOdGFibGVfZ3JvdXBfaWQYAyABKAlSDHRhYmxlR3JvdXBJZBIdCgp0YWJsZV9uYW1lGAQgASgJUgl0YWJsZU5hbWUSHQoKbG9jYXRpb25feBgFIAEoBVIJbG9jYXRpb25YEh0KCmxvY2F0aW9uX3kYBiABKAVSCWxvY2F0aW9uWRIUCgV3aWR0aBgHIAEoBVIFd2lkdGgSFgoGaGVpZ2h0GAggASgFUgZoZWlnaHQSKAoQdGFibGVfaW1hZ2VfbmFtZRgJIAEoCVIOdGFibGVJbWFnZU5hbWUSGwoJaGlkaW5nX3luGAogASgIUghoaWRpbmdZbhIuChNmaXJzdF9yZWdpc3RyYW50X2lkGAsgASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYDCABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGA0gASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYDiABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYDyABKAlSCXN0YXRlQ29kZQ==');
@$core.Deprecated('Use basicDataDescriptor instead')
const BasicData$json = const {
  '1': 'BasicData',
  '2': const [
    const {'1': 'basic_data_id', '3': 1, '4': 1, '5': 9, '10': 'basicDataId'},
    const {'1': 'basic_data_code_name', '3': 2, '4': 1, '5': 9, '10': 'basicDataCodeName'},
    const {'1': 'basic_data_name', '3': 3, '4': 1, '5': 9, '10': 'basicDataName'},
    const {'1': 'first_registrant_id', '3': 4, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 5, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 6, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 7, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 8, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `BasicData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List basicDataDescriptor = $convert.base64Decode('CglCYXNpY0RhdGESIgoNYmFzaWNfZGF0YV9pZBgBIAEoCVILYmFzaWNEYXRhSWQSLwoUYmFzaWNfZGF0YV9jb2RlX25hbWUYAiABKAlSEWJhc2ljRGF0YUNvZGVOYW1lEiYKD2Jhc2ljX2RhdGFfbmFtZRgDIAEoCVINYmFzaWNEYXRhTmFtZRIuChNmaXJzdF9yZWdpc3RyYW50X2lkGAQgASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYBSABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGAYgASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYByABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYCCABKAlSCXN0YXRlQ29kZQ==');
@$core.Deprecated('Use storeTerminalDescriptor instead')
const StoreTerminal$json = const {
  '1': 'StoreTerminal',
  '2': const [
    const {'1': 'store_terminal_id', '3': 1, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'store_id', '3': 2, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'terminal_id', '3': 3, '4': 1, '5': 9, '10': 'terminalId'},
    const {'1': 'store_terminal_name', '3': 4, '4': 1, '5': 9, '10': 'storeTerminalName'},
    const {'1': 'device_unique_value', '3': 5, '4': 1, '5': 9, '10': 'deviceUniqueValue'},
    const {'1': 'master_terminal_yn', '3': 6, '4': 1, '5': 8, '10': 'masterTerminalYn'},
    const {'1': 'master_terminal_address', '3': 7, '4': 1, '5': 9, '10': 'masterTerminalAddress'},
    const {'1': 'master_terminal_port', '3': 8, '4': 1, '5': 9, '10': 'masterTerminalPort'},
    const {'1': 'terminal_role_section_code', '3': 9, '4': 1, '5': 9, '10': 'terminalRoleSectionCode'},
    const {'1': 'server_connection_yn', '3': 10, '4': 1, '5': 8, '10': 'serverConnectionYn'},
    const {'1': 'language_code', '3': 11, '4': 1, '5': 9, '10': 'languageCode'},
    const {'1': 'currency_code', '3': 12, '4': 1, '5': 9, '10': 'currencyCode'},
    const {'1': 'app_action_type_code', '3': 13, '4': 1, '5': 9, '10': 'appActionTypeCode'},
    const {'1': 'cashier_auto_login_yn', '3': 14, '4': 1, '5': 8, '10': 'cashierAutoLoginYn'},
    const {'1': 'installation_location', '3': 15, '4': 1, '5': 9, '10': 'installationLocation'},
    const {'1': 'store_terminal_description', '3': 16, '4': 1, '5': 9, '10': 'storeTerminalDescription'},
    const {'1': 'data1', '3': 17, '4': 1, '5': 9, '10': 'data1'},
    const {'1': 'data2', '3': 18, '4': 1, '5': 9, '10': 'data2'},
    const {'1': 'data3', '3': 19, '4': 1, '5': 9, '10': 'data3'},
    const {'1': 'first_registrant_id', '3': 20, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 21, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 22, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 23, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 24, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'store_terminal_group_id', '3': 25, '4': 1, '5': 9, '10': 'storeTerminalGroupId'},
    const {'1': 'server_last_revision_datetime', '3': 26, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `StoreTerminal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeTerminalDescriptor = $convert.base64Decode('Cg1TdG9yZVRlcm1pbmFsEioKEXN0b3JlX3Rlcm1pbmFsX2lkGAEgASgJUg9zdG9yZVRlcm1pbmFsSWQSGQoIc3RvcmVfaWQYAiABKAlSB3N0b3JlSWQSHwoLdGVybWluYWxfaWQYAyABKAlSCnRlcm1pbmFsSWQSLgoTc3RvcmVfdGVybWluYWxfbmFtZRgEIAEoCVIRc3RvcmVUZXJtaW5hbE5hbWUSLgoTZGV2aWNlX3VuaXF1ZV92YWx1ZRgFIAEoCVIRZGV2aWNlVW5pcXVlVmFsdWUSLAoSbWFzdGVyX3Rlcm1pbmFsX3luGAYgASgIUhBtYXN0ZXJUZXJtaW5hbFluEjYKF21hc3Rlcl90ZXJtaW5hbF9hZGRyZXNzGAcgASgJUhVtYXN0ZXJUZXJtaW5hbEFkZHJlc3MSMAoUbWFzdGVyX3Rlcm1pbmFsX3BvcnQYCCABKAlSEm1hc3RlclRlcm1pbmFsUG9ydBI7Chp0ZXJtaW5hbF9yb2xlX3NlY3Rpb25fY29kZRgJIAEoCVIXdGVybWluYWxSb2xlU2VjdGlvbkNvZGUSMAoUc2VydmVyX2Nvbm5lY3Rpb25feW4YCiABKAhSEnNlcnZlckNvbm5lY3Rpb25ZbhIjCg1sYW5ndWFnZV9jb2RlGAsgASgJUgxsYW5ndWFnZUNvZGUSIwoNY3VycmVuY3lfY29kZRgMIAEoCVIMY3VycmVuY3lDb2RlEi8KFGFwcF9hY3Rpb25fdHlwZV9jb2RlGA0gASgJUhFhcHBBY3Rpb25UeXBlQ29kZRIxChVjYXNoaWVyX2F1dG9fbG9naW5feW4YDiABKAhSEmNhc2hpZXJBdXRvTG9naW5ZbhIzChVpbnN0YWxsYXRpb25fbG9jYXRpb24YDyABKAlSFGluc3RhbGxhdGlvbkxvY2F0aW9uEjwKGnN0b3JlX3Rlcm1pbmFsX2Rlc2NyaXB0aW9uGBAgASgJUhhzdG9yZVRlcm1pbmFsRGVzY3JpcHRpb24SFAoFZGF0YTEYESABKAlSBWRhdGExEhQKBWRhdGEyGBIgASgJUgVkYXRhMhIUCgVkYXRhMxgTIAEoCVIFZGF0YTMSLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgUIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGBUgASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgWIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGBcgASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGBggASgJUglzdGF0ZUNvZGUSNQoXc3RvcmVfdGVybWluYWxfZ3JvdXBfaWQYGSABKAlSFHN0b3JlVGVybWluYWxHcm91cElkEkEKHXNlcnZlcl9sYXN0X3JldmlzaW9uX2RhdGV0aW1lGBogASgJUhpzZXJ2ZXJMYXN0UmV2aXNpb25EYXRldGltZQ==');
@$core.Deprecated('Use kitchenMemoGroupDescriptor instead')
const KitchenMemoGroup$json = const {
  '1': 'KitchenMemoGroup',
  '2': const [
    const {'1': 'kitchen_memo_group_id', '3': 1, '4': 1, '5': 9, '10': 'kitchenMemoGroupId'},
    const {'1': 'kitchen_memo_group_name', '3': 2, '4': 1, '5': 9, '10': 'kitchenMemoGroupName'},
    const {'1': 'hiding_yn', '3': 3, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 4, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 5, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 6, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 7, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 8, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `KitchenMemoGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kitchenMemoGroupDescriptor = $convert.base64Decode('ChBLaXRjaGVuTWVtb0dyb3VwEjEKFWtpdGNoZW5fbWVtb19ncm91cF9pZBgBIAEoCVISa2l0Y2hlbk1lbW9Hcm91cElkEjUKF2tpdGNoZW5fbWVtb19ncm91cF9uYW1lGAIgASgJUhRraXRjaGVuTWVtb0dyb3VwTmFtZRIbCgloaWRpbmdfeW4YAyABKAhSCGhpZGluZ1luEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYBCABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgFIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYBiABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgHIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgIIAEoCVIJc3RhdGVDb2Rl');
@$core.Deprecated('Use kitchenMemoDescriptor instead')
const KitchenMemo$json = const {
  '1': 'KitchenMemo',
  '2': const [
    const {'1': 'kitchen_memo_group_id', '3': 1, '4': 1, '5': 9, '10': 'kitchenMemoGroupId'},
    const {'1': 'kitchen_memo_id', '3': 2, '4': 1, '5': 9, '10': 'kitchenMemoId'},
    const {'1': 'kitchen_memo_name', '3': 3, '4': 1, '5': 9, '10': 'kitchenMemoName'},
    const {'1': 'kitchen_memo', '3': 4, '4': 1, '5': 9, '10': 'kitchenMemo'},
    const {'1': 'hiding_yn', '3': 5, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 6, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 7, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 8, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 9, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 10, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'kitchen_memo_code', '3': 11, '4': 1, '5': 9, '10': 'kitchenMemoCode'},
  ],
};

/// Descriptor for `KitchenMemo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kitchenMemoDescriptor = $convert.base64Decode('CgtLaXRjaGVuTWVtbxIxChVraXRjaGVuX21lbW9fZ3JvdXBfaWQYASABKAlSEmtpdGNoZW5NZW1vR3JvdXBJZBImCg9raXRjaGVuX21lbW9faWQYAiABKAlSDWtpdGNoZW5NZW1vSWQSKgoRa2l0Y2hlbl9tZW1vX25hbWUYAyABKAlSD2tpdGNoZW5NZW1vTmFtZRIhCgxraXRjaGVuX21lbW8YBCABKAlSC2tpdGNoZW5NZW1vEhsKCWhpZGluZ195bhgFIAEoCFIIaGlkaW5nWW4SLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgGIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGAcgASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgIIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGAkgASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGAogASgJUglzdGF0ZUNvZGUSKgoRa2l0Y2hlbl9tZW1vX2NvZGUYCyABKAlSD2tpdGNoZW5NZW1vQ29kZQ==');
@$core.Deprecated('Use itemGroupDescriptor instead')
const ItemGroup$json = const {
  '1': 'ItemGroup',
  '2': const [
    const {'1': 'item_group_id', '3': 1, '4': 1, '5': 9, '10': 'itemGroupId'},
    const {'1': 'item_group_name', '3': 2, '4': 1, '5': 9, '10': 'itemGroupName'},
    const {'1': 'item_group_type_code', '3': 3, '4': 1, '5': 9, '10': 'itemGroupTypeCode'},
    const {'1': 'hiding_yn', '3': 4, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 5, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 6, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 7, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 8, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 9, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'upper_item_group_id', '3': 10, '4': 1, '5': 9, '10': 'upperItemGroupId'},
    const {'1': 'operation_type_code', '3': 11, '4': 1, '5': 9, '10': 'operationTypeCode'},
    const {'1': 'server_last_revision_datetime', '3': 12, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `ItemGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemGroupDescriptor = $convert.base64Decode('CglJdGVtR3JvdXASIgoNaXRlbV9ncm91cF9pZBgBIAEoCVILaXRlbUdyb3VwSWQSJgoPaXRlbV9ncm91cF9uYW1lGAIgASgJUg1pdGVtR3JvdXBOYW1lEi8KFGl0ZW1fZ3JvdXBfdHlwZV9jb2RlGAMgASgJUhFpdGVtR3JvdXBUeXBlQ29kZRIbCgloaWRpbmdfeW4YBCABKAhSCGhpZGluZ1luEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYBSABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgGIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYByABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgIIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgJIAEoCVIJc3RhdGVDb2RlEi0KE3VwcGVyX2l0ZW1fZ3JvdXBfaWQYCiABKAlSEHVwcGVySXRlbUdyb3VwSWQSLgoTb3BlcmF0aW9uX3R5cGVfY29kZRgLIAEoCVIRb3BlcmF0aW9uVHlwZUNvZGUSQQodc2VydmVyX2xhc3RfcmV2aXNpb25fZGF0ZXRpbWUYDCABKAlSGnNlcnZlckxhc3RSZXZpc2lvbkRhdGV0aW1l');
@$core.Deprecated('Use itemDescriptor instead')
const Item$json = const {
  '1': 'Item',
  '2': const [
    const {'1': 'item_id', '3': 1, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'item_group_id', '3': 2, '4': 1, '5': 9, '10': 'itemGroupId'},
    const {'1': 'item_name', '3': 3, '4': 1, '5': 9, '10': 'itemName'},
    const {'1': 'sale_type_code', '3': 4, '4': 1, '5': 9, '10': 'saleTypeCode'},
    const {'1': 'cost', '3': 5, '4': 1, '5': 1, '10': 'cost'},
    const {'1': 'selling_price', '3': 6, '4': 1, '5': 1, '10': 'sellingPrice'},
    const {'1': 'open_price_yn', '3': 7, '4': 1, '5': 8, '10': 'openPriceYn'},
    const {'1': 'barcode', '3': 8, '4': 1, '5': 9, '10': 'barcode'},
    const {'1': 'apply_tax0_yn', '3': 9, '4': 1, '5': 9, '10': 'applyTax0Yn'},
    const {'1': 'apply_tax1_yn', '3': 10, '4': 1, '5': 9, '10': 'applyTax1Yn'},
    const {'1': 'apply_tax2_yn', '3': 11, '4': 1, '5': 9, '10': 'applyTax2Yn'},
    const {'1': 'apply_discount_yn', '3': 12, '4': 1, '5': 8, '10': 'applyDiscountYn'},
    const {'1': 'hiding_yn', '3': 13, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 14, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 15, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 16, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 17, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 18, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'inventory_quantity', '3': 19, '4': 1, '5': 1, '10': 'inventoryQuantity'},
    const {'1': 'kitchen_printer_output_yn', '3': 20, '4': 1, '5': 8, '10': 'kitchenPrinterOutputYn'},
    const {'1': 'price_type_code', '3': 21, '4': 1, '5': 9, '10': 'priceTypeCode'},
    const {'1': 'option_use_type_code', '3': 22, '4': 1, '5': 9, '10': 'optionUseTypeCode'},
    const {'1': 'recommended_item_yn', '3': 23, '4': 1, '5': 8, '10': 'recommendedItemYn'},
    const {'1': 'packing_possible_yn', '3': 24, '4': 1, '5': 8, '10': 'packingPossibleYn'},
    const {'1': 'online_sale_yn', '3': 25, '4': 1, '5': 8, '10': 'onlineSaleYn'},
    const {'1': 'sold_out_yn', '3': 26, '4': 1, '5': 8, '10': 'soldOutYn'},
    const {'1': 'image_url', '3': 27, '4': 1, '5': 9, '10': 'imageUrl'},
    const {'1': 'operation_type_code', '3': 28, '4': 1, '5': 9, '10': 'operationTypeCode'},
    const {'1': 'item_code', '3': 29, '4': 1, '5': 9, '10': 'itemCode'},
    const {'1': 'server_last_revision_datetime', '3': 30, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
    const {'1': 'linkCode', '3': 31, '4': 1, '5': 9, '10': 'linkCode'},
  ],
};

/// Descriptor for `Item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemDescriptor = $convert.base64Decode('CgRJdGVtEhcKB2l0ZW1faWQYASABKAlSBml0ZW1JZBIiCg1pdGVtX2dyb3VwX2lkGAIgASgJUgtpdGVtR3JvdXBJZBIbCglpdGVtX25hbWUYAyABKAlSCGl0ZW1OYW1lEiQKDnNhbGVfdHlwZV9jb2RlGAQgASgJUgxzYWxlVHlwZUNvZGUSEgoEY29zdBgFIAEoAVIEY29zdBIjCg1zZWxsaW5nX3ByaWNlGAYgASgBUgxzZWxsaW5nUHJpY2USIgoNb3Blbl9wcmljZV95bhgHIAEoCFILb3BlblByaWNlWW4SGAoHYmFyY29kZRgIIAEoCVIHYmFyY29kZRIiCg1hcHBseV90YXgwX3luGAkgASgJUgthcHBseVRheDBZbhIiCg1hcHBseV90YXgxX3luGAogASgJUgthcHBseVRheDFZbhIiCg1hcHBseV90YXgyX3luGAsgASgJUgthcHBseVRheDJZbhIqChFhcHBseV9kaXNjb3VudF95bhgMIAEoCFIPYXBwbHlEaXNjb3VudFluEhsKCWhpZGluZ195bhgNIAEoCFIIaGlkaW5nWW4SLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgOIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGA8gASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgQIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGBEgASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGBIgASgJUglzdGF0ZUNvZGUSLQoSaW52ZW50b3J5X3F1YW50aXR5GBMgASgBUhFpbnZlbnRvcnlRdWFudGl0eRI5ChlraXRjaGVuX3ByaW50ZXJfb3V0cHV0X3luGBQgASgIUhZraXRjaGVuUHJpbnRlck91dHB1dFluEiYKD3ByaWNlX3R5cGVfY29kZRgVIAEoCVINcHJpY2VUeXBlQ29kZRIvChRvcHRpb25fdXNlX3R5cGVfY29kZRgWIAEoCVIRb3B0aW9uVXNlVHlwZUNvZGUSLgoTcmVjb21tZW5kZWRfaXRlbV95bhgXIAEoCFIRcmVjb21tZW5kZWRJdGVtWW4SLgoTcGFja2luZ19wb3NzaWJsZV95bhgYIAEoCFIRcGFja2luZ1Bvc3NpYmxlWW4SJAoOb25saW5lX3NhbGVfeW4YGSABKAhSDG9ubGluZVNhbGVZbhIeCgtzb2xkX291dF95bhgaIAEoCFIJc29sZE91dFluEhsKCWltYWdlX3VybBgbIAEoCVIIaW1hZ2VVcmwSLgoTb3BlcmF0aW9uX3R5cGVfY29kZRgcIAEoCVIRb3BlcmF0aW9uVHlwZUNvZGUSGwoJaXRlbV9jb2RlGB0gASgJUghpdGVtQ29kZRJBCh1zZXJ2ZXJfbGFzdF9yZXZpc2lvbl9kYXRldGltZRgeIAEoCVIac2VydmVyTGFzdFJldmlzaW9uRGF0ZXRpbWUSGgoIbGlua0NvZGUYHyABKAlSCGxpbmtDb2Rl');
@$core.Deprecated('Use optionGroupDescriptor instead')
const OptionGroup$json = const {
  '1': 'OptionGroup',
  '2': const [
    const {'1': 'option_group_id', '3': 1, '4': 1, '5': 9, '10': 'optionGroupId'},
    const {'1': 'option_group_name', '3': 2, '4': 1, '5': 9, '10': 'optionGroupName'},
    const {'1': 'location_x', '3': 3, '4': 1, '5': 5, '10': 'locationX'},
    const {'1': 'location_y', '3': 4, '4': 1, '5': 5, '10': 'locationY'},
    const {'1': 'location_z', '3': 5, '4': 1, '5': 5, '10': 'locationZ'},
    const {'1': 'required_yn', '3': 6, '4': 1, '5': 8, '10': 'requiredYn'},
    const {'1': 'hiding_yn', '3': 7, '4': 1, '5': 8, '10': 'hidingYn'},
    const {'1': 'first_registrant_id', '3': 8, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 9, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 10, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 11, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 12, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `OptionGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionGroupDescriptor = $convert.base64Decode('CgtPcHRpb25Hcm91cBImCg9vcHRpb25fZ3JvdXBfaWQYASABKAlSDW9wdGlvbkdyb3VwSWQSKgoRb3B0aW9uX2dyb3VwX25hbWUYAiABKAlSD29wdGlvbkdyb3VwTmFtZRIdCgpsb2NhdGlvbl94GAMgASgFUglsb2NhdGlvblgSHQoKbG9jYXRpb25feRgEIAEoBVIJbG9jYXRpb25ZEh0KCmxvY2F0aW9uX3oYBSABKAVSCWxvY2F0aW9uWhIfCgtyZXF1aXJlZF95bhgGIAEoCFIKcmVxdWlyZWRZbhIbCgloaWRpbmdfeW4YByABKAhSCGhpZGluZ1luEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYCCABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgJIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYCiABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgLIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgMIAEoCVIJc3RhdGVDb2Rl');
@$core.Deprecated('Use optionEntityDescriptor instead')
const OptionEntity$json = const {
  '1': 'OptionEntity',
  '2': const [
    const {'1': 'option_entity_id', '3': 1, '4': 1, '5': 9, '10': 'optionEntityId'},
    const {'1': 'option_group_id', '3': 2, '4': 1, '5': 9, '10': 'optionGroupId'},
    const {'1': 'item_id', '3': 3, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'option_entity_serial_number', '3': 4, '4': 1, '5': 5, '10': 'optionEntitySerialNumber'},
    const {'1': 'location_x', '3': 5, '4': 1, '5': 5, '10': 'locationX'},
    const {'1': 'location_y', '3': 6, '4': 1, '5': 5, '10': 'locationY'},
    const {'1': 'location_z', '3': 7, '4': 1, '5': 5, '10': 'locationZ'},
    const {'1': 'button_size_type_code', '3': 8, '4': 1, '5': 9, '10': 'buttonSizeTypeCode'},
    const {'1': 'first_registrant_id', '3': 9, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 10, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 11, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 12, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 13, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `OptionEntity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionEntityDescriptor = $convert.base64Decode('CgxPcHRpb25FbnRpdHkSKAoQb3B0aW9uX2VudGl0eV9pZBgBIAEoCVIOb3B0aW9uRW50aXR5SWQSJgoPb3B0aW9uX2dyb3VwX2lkGAIgASgJUg1vcHRpb25Hcm91cElkEhcKB2l0ZW1faWQYAyABKAlSBml0ZW1JZBI9ChtvcHRpb25fZW50aXR5X3NlcmlhbF9udW1iZXIYBCABKAVSGG9wdGlvbkVudGl0eVNlcmlhbE51bWJlchIdCgpsb2NhdGlvbl94GAUgASgFUglsb2NhdGlvblgSHQoKbG9jYXRpb25feRgGIAEoBVIJbG9jYXRpb25ZEh0KCmxvY2F0aW9uX3oYByABKAVSCWxvY2F0aW9uWhIxChVidXR0b25fc2l6ZV90eXBlX2NvZGUYCCABKAlSEmJ1dHRvblNpemVUeXBlQ29kZRIuChNmaXJzdF9yZWdpc3RyYW50X2lkGAkgASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYCiABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGAsgASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYDCABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYDSABKAlSCXN0YXRlQ29kZQ==');
@$core.Deprecated('Use setEntityDescriptor instead')
const SetEntity$json = const {
  '1': 'SetEntity',
  '2': const [
    const {'1': 'set_entity_id', '3': 1, '4': 1, '5': 9, '10': 'setEntityId'},
    const {'1': 'set_item_id', '3': 2, '4': 1, '5': 9, '10': 'setItemId'},
    const {'1': 'entity_item_id', '3': 3, '4': 1, '5': 9, '10': 'entityItemId'},
    const {'1': 'set_entity_serial_number', '3': 4, '4': 1, '5': 9, '10': 'setEntitySerialNumber'},
    const {'1': 'quantity', '3': 5, '4': 1, '5': 1, '10': 'quantity'},
    const {'1': 'first_registrant_id', '3': 6, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 7, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 8, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 9, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 10, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `SetEntity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setEntityDescriptor = $convert.base64Decode('CglTZXRFbnRpdHkSIgoNc2V0X2VudGl0eV9pZBgBIAEoCVILc2V0RW50aXR5SWQSHgoLc2V0X2l0ZW1faWQYAiABKAlSCXNldEl0ZW1JZBIkCg5lbnRpdHlfaXRlbV9pZBgDIAEoCVIMZW50aXR5SXRlbUlkEjcKGHNldF9lbnRpdHlfc2VyaWFsX251bWJlchgEIAEoCVIVc2V0RW50aXR5U2VyaWFsTnVtYmVyEhoKCHF1YW50aXR5GAUgASgBUghxdWFudGl0eRIuChNmaXJzdF9yZWdpc3RyYW50X2lkGAYgASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYByABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGAggASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYCSABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYCiABKAlSCXN0YXRlQ29kZQ==');
@$core.Deprecated('Use itemOptionDescriptor instead')
const ItemOption$json = const {
  '1': 'ItemOption',
  '2': const [
    const {'1': 'item_option_id', '3': 1, '4': 1, '5': 9, '10': 'itemOptionId'},
    const {'1': 'item_id', '3': 2, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'option_group_id', '3': 3, '4': 1, '5': 9, '10': 'optionGroupId'},
    const {'1': 'item_option_serial_number', '3': 4, '4': 1, '5': 5, '10': 'itemOptionSerialNumber'},
    const {'1': 'first_registrant_id', '3': 5, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 6, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 7, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 8, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 9, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `ItemOption`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List itemOptionDescriptor = $convert.base64Decode('CgpJdGVtT3B0aW9uEiQKDml0ZW1fb3B0aW9uX2lkGAEgASgJUgxpdGVtT3B0aW9uSWQSFwoHaXRlbV9pZBgCIAEoCVIGaXRlbUlkEiYKD29wdGlvbl9ncm91cF9pZBgDIAEoCVINb3B0aW9uR3JvdXBJZBI5ChlpdGVtX29wdGlvbl9zZXJpYWxfbnVtYmVyGAQgASgFUhZpdGVtT3B0aW9uU2VyaWFsTnVtYmVyEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYBSABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgGIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYByABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgIIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgJIAEoCVIJc3RhdGVDb2Rl');
@$core.Deprecated('Use menuGroupDescriptor instead')
const MenuGroup$json = const {
  '1': 'MenuGroup',
  '2': const [
    const {'1': 'menu_group_id', '3': 1, '4': 1, '5': 9, '10': 'menuGroupId'},
    const {'1': 'menu_group_name', '3': 2, '4': 1, '5': 9, '10': 'menuGroupName'},
    const {'1': 'location_x', '3': 3, '4': 1, '5': 5, '10': 'locationX'},
    const {'1': 'location_y', '3': 4, '4': 1, '5': 5, '10': 'locationY'},
    const {'1': 'location_z', '3': 5, '4': 1, '5': 5, '10': 'locationZ'},
    const {'1': 'background_image_name', '3': 6, '4': 1, '5': 9, '10': 'backgroundImageName'},
    const {'1': 'background_color', '3': 7, '4': 1, '5': 9, '10': 'backgroundColor'},
    const {'1': 'font_name', '3': 8, '4': 1, '5': 9, '10': 'fontName'},
    const {'1': 'font_size', '3': 9, '4': 1, '5': 1, '10': 'fontSize'},
    const {'1': 'font_style', '3': 10, '4': 1, '5': 9, '10': 'fontStyle'},
    const {'1': 'font_color', '3': 11, '4': 1, '5': 9, '10': 'fontColor'},
    const {'1': 'default_yn', '3': 12, '4': 1, '5': 8, '10': 'defaultYn'},
    const {'1': 'first_registrant_id', '3': 13, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 14, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 15, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 16, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 17, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'online_sale_yn', '3': 18, '4': 1, '5': 8, '10': 'onlineSaleYn'},
    const {'1': 'link_information', '3': 19, '4': 1, '5': 9, '10': 'linkInformation'},
  ],
};

/// Descriptor for `MenuGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List menuGroupDescriptor = $convert.base64Decode('CglNZW51R3JvdXASIgoNbWVudV9ncm91cF9pZBgBIAEoCVILbWVudUdyb3VwSWQSJgoPbWVudV9ncm91cF9uYW1lGAIgASgJUg1tZW51R3JvdXBOYW1lEh0KCmxvY2F0aW9uX3gYAyABKAVSCWxvY2F0aW9uWBIdCgpsb2NhdGlvbl95GAQgASgFUglsb2NhdGlvblkSHQoKbG9jYXRpb25fehgFIAEoBVIJbG9jYXRpb25aEjIKFWJhY2tncm91bmRfaW1hZ2VfbmFtZRgGIAEoCVITYmFja2dyb3VuZEltYWdlTmFtZRIpChBiYWNrZ3JvdW5kX2NvbG9yGAcgASgJUg9iYWNrZ3JvdW5kQ29sb3ISGwoJZm9udF9uYW1lGAggASgJUghmb250TmFtZRIbCglmb250X3NpemUYCSABKAFSCGZvbnRTaXplEh0KCmZvbnRfc3R5bGUYCiABKAlSCWZvbnRTdHlsZRIdCgpmb250X2NvbG9yGAsgASgJUglmb250Q29sb3ISHQoKZGVmYXVsdF95bhgMIAEoCFIJZGVmYXVsdFluEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYDSABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgOIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYDyABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgQIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgRIAEoCVIJc3RhdGVDb2RlEiQKDm9ubGluZV9zYWxlX3luGBIgASgIUgxvbmxpbmVTYWxlWW4SKQoQbGlua19pbmZvcm1hdGlvbhgTIAEoCVIPbGlua0luZm9ybWF0aW9u');
@$core.Deprecated('Use menuGroupUseDescriptor instead')
const MenuGroupUse$json = const {
  '1': 'MenuGroupUse',
  '2': const [
    const {'1': 'menu_group_id', '3': 1, '4': 1, '5': 9, '10': 'menuGroupId'},
    const {'1': 'business_section_code', '3': 2, '4': 1, '5': 9, '10': 'businessSectionCode'},
    const {'1': 'use_yn', '3': 3, '4': 1, '5': 8, '10': 'useYn'},
    const {'1': 'first_registrant_id', '3': 4, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 5, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 6, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 7, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 8, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `MenuGroupUse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List menuGroupUseDescriptor = $convert.base64Decode('CgxNZW51R3JvdXBVc2USIgoNbWVudV9ncm91cF9pZBgBIAEoCVILbWVudUdyb3VwSWQSMgoVYnVzaW5lc3Nfc2VjdGlvbl9jb2RlGAIgASgJUhNidXNpbmVzc1NlY3Rpb25Db2RlEhUKBnVzZV95bhgDIAEoCFIFdXNlWW4SLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgEIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGAUgASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgGIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGAcgASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGAggASgJUglzdGF0ZUNvZGU=');
@$core.Deprecated('Use menuItemDescriptor instead')
const MenuItem$json = const {
  '1': 'MenuItem',
  '2': const [
    const {'1': 'menu_item_id', '3': 1, '4': 1, '5': 9, '10': 'menuItemId'},
    const {'1': 'menu_group_id', '3': 2, '4': 1, '5': 9, '10': 'menuGroupId'},
    const {'1': 'item_id', '3': 3, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'location_x', '3': 4, '4': 1, '5': 5, '10': 'locationX'},
    const {'1': 'location_y', '3': 5, '4': 1, '5': 5, '10': 'locationY'},
    const {'1': 'location_z', '3': 6, '4': 1, '5': 5, '10': 'locationZ'},
    const {'1': 'background_color', '3': 7, '4': 1, '5': 9, '10': 'backgroundColor'},
    const {'1': 'font_color', '3': 8, '4': 1, '5': 9, '10': 'fontColor'},
    const {'1': 'button_size_type_code', '3': 9, '4': 1, '5': 9, '10': 'buttonSizeTypeCode'},
    const {'1': 'first_registrant_id', '3': 10, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 11, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 12, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 13, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 14, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'link_information', '3': 15, '4': 1, '5': 9, '10': 'linkInformation'},
    const {'1': 'server_last_revision_datetime', '3': 16, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `MenuItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List menuItemDescriptor = $convert.base64Decode('CghNZW51SXRlbRIgCgxtZW51X2l0ZW1faWQYASABKAlSCm1lbnVJdGVtSWQSIgoNbWVudV9ncm91cF9pZBgCIAEoCVILbWVudUdyb3VwSWQSFwoHaXRlbV9pZBgDIAEoCVIGaXRlbUlkEh0KCmxvY2F0aW9uX3gYBCABKAVSCWxvY2F0aW9uWBIdCgpsb2NhdGlvbl95GAUgASgFUglsb2NhdGlvblkSHQoKbG9jYXRpb25fehgGIAEoBVIJbG9jYXRpb25aEikKEGJhY2tncm91bmRfY29sb3IYByABKAlSD2JhY2tncm91bmRDb2xvchIdCgpmb250X2NvbG9yGAggASgJUglmb250Q29sb3ISMQoVYnV0dG9uX3NpemVfdHlwZV9jb2RlGAkgASgJUhJidXR0b25TaXplVHlwZUNvZGUSLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgKIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGAsgASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgMIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGA0gASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGA4gASgJUglzdGF0ZUNvZGUSKQoQbGlua19pbmZvcm1hdGlvbhgPIAEoCVIPbGlua0luZm9ybWF0aW9uEkEKHXNlcnZlcl9sYXN0X3JldmlzaW9uX2RhdGV0aW1lGBAgASgJUhpzZXJ2ZXJMYXN0UmV2aXNpb25EYXRldGltZQ==');
@$core.Deprecated('Use storeDescriptor instead')
const Store$json = const {
  '1': 'Store',
  '2': const [
    const {'1': 'store_id', '3': 1, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'agency_id', '3': 2, '4': 1, '5': 9, '10': 'agencyId'},
    const {'1': 'manager_id', '3': 3, '4': 1, '5': 9, '10': 'managerId'},
    const {'1': 'store_name', '3': 4, '4': 1, '5': 9, '10': 'storeName'},
    const {'1': 'zipcode', '3': 5, '4': 1, '5': 9, '10': 'zipcode'},
    const {'1': 'primary_address', '3': 6, '4': 1, '5': 9, '10': 'primaryAddress'},
    const {'1': 'detail_address', '3': 7, '4': 1, '5': 9, '10': 'detailAddress'},
    const {'1': 'tel_number', '3': 8, '4': 1, '5': 9, '10': 'telNumber'},
    const {'1': 'hp_number', '3': 9, '4': 1, '5': 9, '10': 'hpNumber'},
    const {'1': 'fax_number', '3': 10, '4': 1, '5': 9, '10': 'faxNumber'},
    const {'1': 'business_registration_number', '3': 11, '4': 1, '5': 9, '10': 'businessRegistrationNumber'},
    const {'1': 'tax_section_code', '3': 12, '4': 1, '5': 9, '10': 'taxSectionCode'},
    const {'1': 'language_code', '3': 13, '4': 1, '5': 9, '10': 'languageCode'},
    const {'1': 'currency_code', '3': 14, '4': 1, '5': 9, '10': 'currencyCode'},
    const {'1': 'store_state_code', '3': 15, '4': 1, '5': 9, '10': 'storeStateCode'},
    const {'1': 'close_business_time', '3': 16, '4': 1, '5': 9, '10': 'closeBusinessTime'},
    const {'1': 'opening_hours', '3': 17, '4': 1, '5': 9, '10': 'openingHours'},
    const {'1': 'closed_days', '3': 18, '4': 1, '5': 9, '10': 'closedDays'},
    const {'1': 'parking_type_code', '3': 19, '4': 1, '5': 9, '10': 'parkingTypeCode'},
    const {'1': 'business_sectors', '3': 20, '4': 1, '5': 9, '10': 'businessSectors'},
    const {'1': 'main_products', '3': 21, '4': 1, '5': 9, '10': 'mainProducts'},
    const {'1': 'ceo_name', '3': 22, '4': 1, '5': 9, '10': 'ceoName'},
    const {'1': 'owner_name', '3': 23, '4': 1, '5': 9, '10': 'ownerName'},
    const {'1': 'data1', '3': 24, '4': 1, '5': 9, '10': 'data1'},
    const {'1': 'data2', '3': 25, '4': 1, '5': 9, '10': 'data2'},
    const {'1': 'data3', '3': 26, '4': 1, '5': 9, '10': 'data3'},
    const {'1': 'first_registrant_id', '3': 27, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 28, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 29, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 30, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 31, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'link_type_code', '3': 32, '4': 1, '5': 9, '10': 'linkTypeCode'},
    const {'1': 'service_type_code', '3': 33, '4': 1, '5': 9, '10': 'serviceTypeCode'},
    const {'1': 'server_last_revision_datetime', '3': 34, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `Store`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeDescriptor = $convert.base64Decode('CgVTdG9yZRIZCghzdG9yZV9pZBgBIAEoCVIHc3RvcmVJZBIbCglhZ2VuY3lfaWQYAiABKAlSCGFnZW5jeUlkEh0KCm1hbmFnZXJfaWQYAyABKAlSCW1hbmFnZXJJZBIdCgpzdG9yZV9uYW1lGAQgASgJUglzdG9yZU5hbWUSGAoHemlwY29kZRgFIAEoCVIHemlwY29kZRInCg9wcmltYXJ5X2FkZHJlc3MYBiABKAlSDnByaW1hcnlBZGRyZXNzEiUKDmRldGFpbF9hZGRyZXNzGAcgASgJUg1kZXRhaWxBZGRyZXNzEh0KCnRlbF9udW1iZXIYCCABKAlSCXRlbE51bWJlchIbCglocF9udW1iZXIYCSABKAlSCGhwTnVtYmVyEh0KCmZheF9udW1iZXIYCiABKAlSCWZheE51bWJlchJAChxidXNpbmVzc19yZWdpc3RyYXRpb25fbnVtYmVyGAsgASgJUhpidXNpbmVzc1JlZ2lzdHJhdGlvbk51bWJlchIoChB0YXhfc2VjdGlvbl9jb2RlGAwgASgJUg50YXhTZWN0aW9uQ29kZRIjCg1sYW5ndWFnZV9jb2RlGA0gASgJUgxsYW5ndWFnZUNvZGUSIwoNY3VycmVuY3lfY29kZRgOIAEoCVIMY3VycmVuY3lDb2RlEigKEHN0b3JlX3N0YXRlX2NvZGUYDyABKAlSDnN0b3JlU3RhdGVDb2RlEi4KE2Nsb3NlX2J1c2luZXNzX3RpbWUYECABKAlSEWNsb3NlQnVzaW5lc3NUaW1lEiMKDW9wZW5pbmdfaG91cnMYESABKAlSDG9wZW5pbmdIb3VycxIfCgtjbG9zZWRfZGF5cxgSIAEoCVIKY2xvc2VkRGF5cxIqChFwYXJraW5nX3R5cGVfY29kZRgTIAEoCVIPcGFya2luZ1R5cGVDb2RlEikKEGJ1c2luZXNzX3NlY3RvcnMYFCABKAlSD2J1c2luZXNzU2VjdG9ycxIjCg1tYWluX3Byb2R1Y3RzGBUgASgJUgxtYWluUHJvZHVjdHMSGQoIY2VvX25hbWUYFiABKAlSB2Nlb05hbWUSHQoKb3duZXJfbmFtZRgXIAEoCVIJb3duZXJOYW1lEhQKBWRhdGExGBggASgJUgVkYXRhMRIUCgVkYXRhMhgZIAEoCVIFZGF0YTISFAoFZGF0YTMYGiABKAlSBWRhdGEzEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYGyABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgcIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYHSABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgeIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgfIAEoCVIJc3RhdGVDb2RlEiQKDmxpbmtfdHlwZV9jb2RlGCAgASgJUgxsaW5rVHlwZUNvZGUSKgoRc2VydmljZV90eXBlX2NvZGUYISABKAlSD3NlcnZpY2VUeXBlQ29kZRJBCh1zZXJ2ZXJfbGFzdF9yZXZpc2lvbl9kYXRldGltZRgiIAEoCVIac2VydmVyTGFzdFJldmlzaW9uRGF0ZXRpbWU=');
@$core.Deprecated('Use adminUserDescriptor instead')
const AdminUser$json = const {
  '1': 'AdminUser',
  '2': const [
    const {'1': 'admin_user_id', '3': 1, '4': 1, '5': 9, '10': 'adminUserId'},
    const {'1': 'admin_authority_group_id', '3': 2, '4': 1, '5': 9, '10': 'adminAuthorityGroupId'},
    const {'1': 'affiliated_company_id', '3': 3, '4': 1, '5': 9, '10': 'affiliatedCompanyId'},
    const {'1': 'login_id', '3': 4, '4': 1, '5': 9, '10': 'loginId'},
    const {'1': 'login_password', '3': 5, '4': 1, '5': 9, '10': 'loginPassword'},
    const {'1': 'admin_user_name', '3': 6, '4': 1, '5': 9, '10': 'adminUserName'},
    const {'1': 'tel_number', '3': 7, '4': 1, '5': 9, '10': 'telNumber'},
    const {'1': 'hp_number', '3': 8, '4': 1, '5': 9, '10': 'hpNumber'},
    const {'1': 'email_address', '3': 9, '4': 1, '5': 9, '10': 'emailAddress'},
    const {'1': 'primary_address', '3': 10, '4': 1, '5': 9, '10': 'primaryAddress'},
    const {'1': 'detail_address', '3': 11, '4': 1, '5': 9, '10': 'detailAddress'},
    const {'1': 'admin_account_state_code', '3': 12, '4': 1, '5': 9, '10': 'adminAccountStateCode'},
    const {'1': 'admin_user_description', '3': 13, '4': 1, '5': 9, '10': 'adminUserDescription'},
    const {'1': 'first_registrant_id', '3': 14, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 15, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 16, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 17, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 18, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `AdminUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminUserDescriptor = $convert.base64Decode('CglBZG1pblVzZXISIgoNYWRtaW5fdXNlcl9pZBgBIAEoCVILYWRtaW5Vc2VySWQSNwoYYWRtaW5fYXV0aG9yaXR5X2dyb3VwX2lkGAIgASgJUhVhZG1pbkF1dGhvcml0eUdyb3VwSWQSMgoVYWZmaWxpYXRlZF9jb21wYW55X2lkGAMgASgJUhNhZmZpbGlhdGVkQ29tcGFueUlkEhkKCGxvZ2luX2lkGAQgASgJUgdsb2dpbklkEiUKDmxvZ2luX3Bhc3N3b3JkGAUgASgJUg1sb2dpblBhc3N3b3JkEiYKD2FkbWluX3VzZXJfbmFtZRgGIAEoCVINYWRtaW5Vc2VyTmFtZRIdCgp0ZWxfbnVtYmVyGAcgASgJUgl0ZWxOdW1iZXISGwoJaHBfbnVtYmVyGAggASgJUghocE51bWJlchIjCg1lbWFpbF9hZGRyZXNzGAkgASgJUgxlbWFpbEFkZHJlc3MSJwoPcHJpbWFyeV9hZGRyZXNzGAogASgJUg5wcmltYXJ5QWRkcmVzcxIlCg5kZXRhaWxfYWRkcmVzcxgLIAEoCVINZGV0YWlsQWRkcmVzcxI3ChhhZG1pbl9hY2NvdW50X3N0YXRlX2NvZGUYDCABKAlSFWFkbWluQWNjb3VudFN0YXRlQ29kZRI0ChZhZG1pbl91c2VyX2Rlc2NyaXB0aW9uGA0gASgJUhRhZG1pblVzZXJEZXNjcmlwdGlvbhIuChNmaXJzdF9yZWdpc3RyYW50X2lkGA4gASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYDyABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGBAgASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYESABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYEiABKAlSCXN0YXRlQ29kZQ==');
@$core.Deprecated('Use selfMenuGroupDescriptor instead')
const SelfMenuGroup$json = const {
  '1': 'SelfMenuGroup',
  '2': const [
    const {'1': 'self_menu_group_id', '3': 1, '4': 1, '5': 9, '10': 'selfMenuGroupId'},
    const {'1': 'self_menu_group_name', '3': 2, '4': 1, '5': 9, '10': 'selfMenuGroupName'},
    const {'1': 'location_x', '3': 3, '4': 1, '5': 5, '10': 'locationX'},
    const {'1': 'location_y', '3': 4, '4': 1, '5': 5, '10': 'locationY'},
    const {'1': 'location_z', '3': 5, '4': 1, '5': 5, '10': 'locationZ'},
    const {'1': 'background_image_name', '3': 6, '4': 1, '5': 9, '10': 'backgroundImageName'},
    const {'1': 'background_color', '3': 7, '4': 1, '5': 9, '10': 'backgroundColor'},
    const {'1': 'font_name', '3': 8, '4': 1, '5': 9, '10': 'fontName'},
    const {'1': 'font_size', '3': 9, '4': 1, '5': 1, '10': 'fontSize'},
    const {'1': 'font_style', '3': 10, '4': 1, '5': 9, '10': 'fontStyle'},
    const {'1': 'font_color', '3': 11, '4': 1, '5': 9, '10': 'fontColor'},
    const {'1': 'default_yn', '3': 12, '4': 1, '5': 8, '10': 'defaultYn'},
    const {'1': 'first_registrant_id', '3': 13, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 14, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 15, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 16, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 17, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `SelfMenuGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfMenuGroupDescriptor = $convert.base64Decode('Cg1TZWxmTWVudUdyb3VwEisKEnNlbGZfbWVudV9ncm91cF9pZBgBIAEoCVIPc2VsZk1lbnVHcm91cElkEi8KFHNlbGZfbWVudV9ncm91cF9uYW1lGAIgASgJUhFzZWxmTWVudUdyb3VwTmFtZRIdCgpsb2NhdGlvbl94GAMgASgFUglsb2NhdGlvblgSHQoKbG9jYXRpb25feRgEIAEoBVIJbG9jYXRpb25ZEh0KCmxvY2F0aW9uX3oYBSABKAVSCWxvY2F0aW9uWhIyChViYWNrZ3JvdW5kX2ltYWdlX25hbWUYBiABKAlSE2JhY2tncm91bmRJbWFnZU5hbWUSKQoQYmFja2dyb3VuZF9jb2xvchgHIAEoCVIPYmFja2dyb3VuZENvbG9yEhsKCWZvbnRfbmFtZRgIIAEoCVIIZm9udE5hbWUSGwoJZm9udF9zaXplGAkgASgBUghmb250U2l6ZRIdCgpmb250X3N0eWxlGAogASgJUglmb250U3R5bGUSHQoKZm9udF9jb2xvchgLIAEoCVIJZm9udENvbG9yEh0KCmRlZmF1bHRfeW4YDCABKAhSCWRlZmF1bHRZbhIuChNmaXJzdF9yZWdpc3RyYW50X2lkGA0gASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYDiABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGA8gASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYECABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYESABKAlSCXN0YXRlQ29kZQ==');
@$core.Deprecated('Use selfMenuItemDescriptor instead')
const SelfMenuItem$json = const {
  '1': 'SelfMenuItem',
  '2': const [
    const {'1': 'self_menu_item_id', '3': 1, '4': 1, '5': 9, '10': 'selfMenuItemId'},
    const {'1': 'self_menu_group_id', '3': 2, '4': 1, '5': 9, '10': 'selfMenuGroupId'},
    const {'1': 'item_id', '3': 3, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'location_x', '3': 4, '4': 1, '5': 5, '10': 'locationX'},
    const {'1': 'location_y', '3': 5, '4': 1, '5': 5, '10': 'locationY'},
    const {'1': 'location_z', '3': 6, '4': 1, '5': 5, '10': 'locationZ'},
    const {'1': 'background_color', '3': 7, '4': 1, '5': 9, '10': 'backgroundColor'},
    const {'1': 'font_color', '3': 8, '4': 1, '5': 9, '10': 'fontColor'},
    const {'1': 'button_size_type_code', '3': 9, '4': 1, '5': 9, '10': 'buttonSizeTypeCode'},
    const {'1': 'first_registrant_id', '3': 10, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 11, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 12, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 13, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 14, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'server_last_revision_datetime', '3': 15, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `SelfMenuItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfMenuItemDescriptor = $convert.base64Decode('CgxTZWxmTWVudUl0ZW0SKQoRc2VsZl9tZW51X2l0ZW1faWQYASABKAlSDnNlbGZNZW51SXRlbUlkEisKEnNlbGZfbWVudV9ncm91cF9pZBgCIAEoCVIPc2VsZk1lbnVHcm91cElkEhcKB2l0ZW1faWQYAyABKAlSBml0ZW1JZBIdCgpsb2NhdGlvbl94GAQgASgFUglsb2NhdGlvblgSHQoKbG9jYXRpb25feRgFIAEoBVIJbG9jYXRpb25ZEh0KCmxvY2F0aW9uX3oYBiABKAVSCWxvY2F0aW9uWhIpChBiYWNrZ3JvdW5kX2NvbG9yGAcgASgJUg9iYWNrZ3JvdW5kQ29sb3ISHQoKZm9udF9jb2xvchgIIAEoCVIJZm9udENvbG9yEjEKFWJ1dHRvbl9zaXplX3R5cGVfY29kZRgJIAEoCVISYnV0dG9uU2l6ZVR5cGVDb2RlEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYCiABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgLIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYDCABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgNIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgOIAEoCVIJc3RhdGVDb2RlEkEKHXNlcnZlcl9sYXN0X3JldmlzaW9uX2RhdGV0aW1lGA8gASgJUhpzZXJ2ZXJMYXN0UmV2aXNpb25EYXRldGltZQ==');
@$core.Deprecated('Use templateItemDescriptor instead')
const TemplateItem$json = const {
  '1': 'TemplateItem',
  '2': const [
    const {'1': 'template_item_id', '3': 1, '4': 1, '5': 9, '10': 'templateItemId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'template', '3': 3, '4': 1, '5': 9, '10': 'template'},
    const {'1': 'cut', '3': 4, '4': 1, '5': 9, '10': 'cut'},
    const {'1': 'is_list_type', '3': 5, '4': 1, '5': 9, '10': 'isListType'},
    const {'1': 'first_registrant_id', '3': 6, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 7, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 8, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 9, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 10, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'server_last_revision_datetime', '3': 11, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `TemplateItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateItemDescriptor = $convert.base64Decode('CgxUZW1wbGF0ZUl0ZW0SKAoQdGVtcGxhdGVfaXRlbV9pZBgBIAEoCVIOdGVtcGxhdGVJdGVtSWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIaCgh0ZW1wbGF0ZRgDIAEoCVIIdGVtcGxhdGUSEAoDY3V0GAQgASgJUgNjdXQSIAoMaXNfbGlzdF90eXBlGAUgASgJUgppc0xpc3RUeXBlEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYBiABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgHIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYCCABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgJIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgKIAEoCVIJc3RhdGVDb2RlEkEKHXNlcnZlcl9sYXN0X3JldmlzaW9uX2RhdGV0aW1lGAsgASgJUhpzZXJ2ZXJMYXN0UmV2aXNpb25EYXRldGltZQ==');
@$core.Deprecated('Use storePlaceDescriptor instead')
const StorePlace$json = const {
  '1': 'StorePlace',
  '2': const [
    const {'1': 'store_place_id', '3': 1, '4': 1, '5': 9, '10': 'storePlaceId'},
    const {'1': 'store_id', '3': 2, '4': 1, '5': 9, '10': 'storeId'},
    const {'1': 'place_type', '3': 3, '4': 1, '5': 9, '10': 'placeType'},
    const {'1': 'is_default', '3': 4, '4': 1, '5': 9, '10': 'isDefault'},
    const {'1': 'place_name', '3': 5, '4': 1, '5': 9, '10': 'placeName'},
    const {'1': 'place_short_name', '3': 6, '4': 1, '5': 9, '10': 'placeShortName'},
    const {'1': 'place_desc', '3': 7, '4': 1, '5': 9, '10': 'placeDesc'},
    const {'1': 'place_address1', '3': 8, '4': 1, '5': 9, '10': 'placeAddress1'},
    const {'1': 'place_address2', '3': 9, '4': 1, '5': 9, '10': 'placeAddress2'},
    const {'1': 'employee_id', '3': 10, '4': 1, '5': 9, '10': 'employeeId'},
    const {'1': 'place_tel', '3': 11, '4': 1, '5': 9, '10': 'placeTel'},
    const {'1': 'place_timezone', '3': 12, '4': 1, '5': 9, '10': 'placeTimezone'},
    const {'1': 'use_dst', '3': 13, '4': 1, '5': 9, '10': 'useDst'},
    const {'1': 'first_registrant_id', '3': 14, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 15, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 16, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 17, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 18, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'server_last_revision_datetime', '3': 19, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `StorePlace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storePlaceDescriptor = $convert.base64Decode('CgpTdG9yZVBsYWNlEiQKDnN0b3JlX3BsYWNlX2lkGAEgASgJUgxzdG9yZVBsYWNlSWQSGQoIc3RvcmVfaWQYAiABKAlSB3N0b3JlSWQSHQoKcGxhY2VfdHlwZRgDIAEoCVIJcGxhY2VUeXBlEh0KCmlzX2RlZmF1bHQYBCABKAlSCWlzRGVmYXVsdBIdCgpwbGFjZV9uYW1lGAUgASgJUglwbGFjZU5hbWUSKAoQcGxhY2Vfc2hvcnRfbmFtZRgGIAEoCVIOcGxhY2VTaG9ydE5hbWUSHQoKcGxhY2VfZGVzYxgHIAEoCVIJcGxhY2VEZXNjEiUKDnBsYWNlX2FkZHJlc3MxGAggASgJUg1wbGFjZUFkZHJlc3MxEiUKDnBsYWNlX2FkZHJlc3MyGAkgASgJUg1wbGFjZUFkZHJlc3MyEh8KC2VtcGxveWVlX2lkGAogASgJUgplbXBsb3llZUlkEhsKCXBsYWNlX3RlbBgLIAEoCVIIcGxhY2VUZWwSJQoOcGxhY2VfdGltZXpvbmUYDCABKAlSDXBsYWNlVGltZXpvbmUSFwoHdXNlX2RzdBgNIAEoCVIGdXNlRHN0Ei4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYDiABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgPIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYECABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgRIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgSIAEoCVIJc3RhdGVDb2RlEkEKHXNlcnZlcl9sYXN0X3JldmlzaW9uX2RhdGV0aW1lGBMgASgJUhpzZXJ2ZXJMYXN0UmV2aXNpb25EYXRldGltZQ==');
@$core.Deprecated('Use salesHistoryDescriptor instead')
const SalesHistory$json = const {
  '1': 'SalesHistory',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'sale_serial_number', '3': 2, '4': 1, '5': 5, '10': 'saleSerialNumber'},
    const {'1': 'table_id', '3': 3, '4': 1, '5': 9, '10': 'tableId'},
    const {'1': 'order_link', '3': 4, '4': 1, '5': 9, '10': 'orderLink'},
    const {'1': 'business_section_code', '3': 5, '4': 1, '5': 9, '10': 'businessSectionCode'},
    const {'1': 'supply_value', '3': 6, '4': 1, '5': 1, '10': 'supplyValue'},
    const {'1': 'supply_amount', '3': 7, '4': 1, '5': 1, '10': 'supplyAmount'},
    const {'1': 'tax_amount0', '3': 8, '4': 1, '5': 1, '10': 'taxAmount0'},
    const {'1': 'tax_amount1', '3': 9, '4': 1, '5': 1, '10': 'taxAmount1'},
    const {'1': 'tax_amount2', '3': 10, '4': 1, '5': 1, '10': 'taxAmount2'},
    const {'1': 'discount_total_amount', '3': 11, '4': 1, '5': 1, '10': 'discountTotalAmount'},
    const {'1': 'total_amount', '3': 12, '4': 1, '5': 1, '10': 'totalAmount'},
    const {'1': 'tax_free_yn', '3': 13, '4': 1, '5': 8, '10': 'taxFreeYn'},
    const {'1': 'tax_free_reason', '3': 14, '4': 1, '5': 9, '10': 'taxFreeReason'},
    const {'1': 'tip_total_amount', '3': 15, '4': 1, '5': 1, '10': 'tipTotalAmount'},
    const {'1': 'pre_tip_total_amount', '3': 16, '4': 1, '5': 1, '10': 'preTipTotalAmount'},
    const {'1': 'pre_tip_amount', '3': 17, '4': 1, '5': 1, '10': 'preTipAmount'},
    const {'1': 'pre_tip_tax_amount', '3': 18, '4': 1, '5': 1, '10': 'preTipTaxAmount'},
    const {'1': 'payment_tip_total_amount', '3': 19, '4': 1, '5': 1, '10': 'paymentTipTotalAmount'},
    const {'1': 'payment_tip_amount', '3': 20, '4': 1, '5': 1, '10': 'paymentTipAmount'},
    const {'1': 'payment_tip_tax_amount', '3': 21, '4': 1, '5': 1, '10': 'paymentTipTaxAmount'},
    const {'1': 'serving_employee_id', '3': 22, '4': 1, '5': 9, '10': 'servingEmployeeId'},
    const {'1': 'order_employee_id', '3': 23, '4': 1, '5': 9, '10': 'orderEmployeeId'},
    const {'1': 'cancel_link', '3': 24, '4': 1, '5': 9, '10': 'cancelLink'},
    const {'1': 'cancel_reason', '3': 25, '4': 1, '5': 9, '10': 'cancelReason'},
    const {'1': 'cancel_type_code', '3': 26, '4': 1, '5': 9, '10': 'cancelTypeCode'},
    const {'1': 'cancel_employee_id', '3': 27, '4': 1, '5': 9, '10': 'cancelEmployeeId'},
    const {'1': 'close_business_type_code', '3': 28, '4': 1, '5': 9, '10': 'closeBusinessTypeCode'},
    const {'1': 'memo', '3': 29, '4': 1, '5': 9, '10': 'memo'},
    const {'1': 'staff_bank_yn', '3': 30, '4': 1, '5': 8, '10': 'staffBankYn'},
    const {'1': 'first_registrant_id', '3': 31, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 32, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 33, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 34, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 35, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'operation_type_code', '3': 36, '4': 1, '5': 9, '10': 'operationTypeCode'},
    const {'1': 'server_last_revision_datetime', '3': 37, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
    const {'1': 'sales_account_serial_number', '3': 38, '4': 1, '5': 5, '10': 'salesAccountSerialNumber'},
    const {'1': 'item_serial_number', '3': 39, '4': 1, '5': 5, '10': 'itemSerialNumber'},
    const {'1': 'data0', '3': 40, '4': 1, '5': 9, '10': 'data0'},
    const {'1': 'data1', '3': 41, '4': 1, '5': 9, '10': 'data1'},
    const {'1': 'data2', '3': 42, '4': 1, '5': 9, '10': 'data2'},
    const {'1': 'data3', '3': 43, '4': 1, '5': 9, '10': 'data3'},
    const {'1': 'data4', '3': 44, '4': 1, '5': 9, '10': 'data4'},
    const {'1': 'data5', '3': 45, '4': 1, '5': 9, '10': 'data5'},
    const {'1': 'data6', '3': 46, '4': 1, '5': 9, '10': 'data6'},
    const {'1': 'data7', '3': 47, '4': 1, '5': 9, '10': 'data7'},
    const {'1': 'data8', '3': 48, '4': 1, '5': 9, '10': 'data8'},
    const {'1': 'data9', '3': 49, '4': 1, '5': 9, '10': 'data9'},
    const {'1': 'data10', '3': 50, '4': 1, '5': 9, '10': 'data10'},
  ],
};

/// Descriptor for `SalesHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List salesHistoryDescriptor = $convert.base64Decode('CgxTYWxlc0hpc3RvcnkSHwoLY29tbW9uX2RhdGUYASABKAlSCmNvbW1vbkRhdGUSLAoSc2FsZV9zZXJpYWxfbnVtYmVyGAIgASgFUhBzYWxlU2VyaWFsTnVtYmVyEhkKCHRhYmxlX2lkGAMgASgJUgd0YWJsZUlkEh0KCm9yZGVyX2xpbmsYBCABKAlSCW9yZGVyTGluaxIyChVidXNpbmVzc19zZWN0aW9uX2NvZGUYBSABKAlSE2J1c2luZXNzU2VjdGlvbkNvZGUSIQoMc3VwcGx5X3ZhbHVlGAYgASgBUgtzdXBwbHlWYWx1ZRIjCg1zdXBwbHlfYW1vdW50GAcgASgBUgxzdXBwbHlBbW91bnQSHwoLdGF4X2Ftb3VudDAYCCABKAFSCnRheEFtb3VudDASHwoLdGF4X2Ftb3VudDEYCSABKAFSCnRheEFtb3VudDESHwoLdGF4X2Ftb3VudDIYCiABKAFSCnRheEFtb3VudDISMgoVZGlzY291bnRfdG90YWxfYW1vdW50GAsgASgBUhNkaXNjb3VudFRvdGFsQW1vdW50EiEKDHRvdGFsX2Ftb3VudBgMIAEoAVILdG90YWxBbW91bnQSHgoLdGF4X2ZyZWVfeW4YDSABKAhSCXRheEZyZWVZbhImCg90YXhfZnJlZV9yZWFzb24YDiABKAlSDXRheEZyZWVSZWFzb24SKAoQdGlwX3RvdGFsX2Ftb3VudBgPIAEoAVIOdGlwVG90YWxBbW91bnQSLwoUcHJlX3RpcF90b3RhbF9hbW91bnQYECABKAFSEXByZVRpcFRvdGFsQW1vdW50EiQKDnByZV90aXBfYW1vdW50GBEgASgBUgxwcmVUaXBBbW91bnQSKwoScHJlX3RpcF90YXhfYW1vdW50GBIgASgBUg9wcmVUaXBUYXhBbW91bnQSNwoYcGF5bWVudF90aXBfdG90YWxfYW1vdW50GBMgASgBUhVwYXltZW50VGlwVG90YWxBbW91bnQSLAoScGF5bWVudF90aXBfYW1vdW50GBQgASgBUhBwYXltZW50VGlwQW1vdW50EjMKFnBheW1lbnRfdGlwX3RheF9hbW91bnQYFSABKAFSE3BheW1lbnRUaXBUYXhBbW91bnQSLgoTc2VydmluZ19lbXBsb3llZV9pZBgWIAEoCVIRc2VydmluZ0VtcGxveWVlSWQSKgoRb3JkZXJfZW1wbG95ZWVfaWQYFyABKAlSD29yZGVyRW1wbG95ZWVJZBIfCgtjYW5jZWxfbGluaxgYIAEoCVIKY2FuY2VsTGluaxIjCg1jYW5jZWxfcmVhc29uGBkgASgJUgxjYW5jZWxSZWFzb24SKAoQY2FuY2VsX3R5cGVfY29kZRgaIAEoCVIOY2FuY2VsVHlwZUNvZGUSLAoSY2FuY2VsX2VtcGxveWVlX2lkGBsgASgJUhBjYW5jZWxFbXBsb3llZUlkEjcKGGNsb3NlX2J1c2luZXNzX3R5cGVfY29kZRgcIAEoCVIVY2xvc2VCdXNpbmVzc1R5cGVDb2RlEhIKBG1lbW8YHSABKAlSBG1lbW8SIgoNc3RhZmZfYmFua195bhgeIAEoCFILc3RhZmZCYW5rWW4SLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgfIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGCAgASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBghIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGCIgASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGCMgASgJUglzdGF0ZUNvZGUSLgoTb3BlcmF0aW9uX3R5cGVfY29kZRgkIAEoCVIRb3BlcmF0aW9uVHlwZUNvZGUSQQodc2VydmVyX2xhc3RfcmV2aXNpb25fZGF0ZXRpbWUYJSABKAlSGnNlcnZlckxhc3RSZXZpc2lvbkRhdGV0aW1lEj0KG3NhbGVzX2FjY291bnRfc2VyaWFsX251bWJlchgmIAEoBVIYc2FsZXNBY2NvdW50U2VyaWFsTnVtYmVyEiwKEml0ZW1fc2VyaWFsX251bWJlchgnIAEoBVIQaXRlbVNlcmlhbE51bWJlchIUCgVkYXRhMBgoIAEoCVIFZGF0YTASFAoFZGF0YTEYKSABKAlSBWRhdGExEhQKBWRhdGEyGCogASgJUgVkYXRhMhIUCgVkYXRhMxgrIAEoCVIFZGF0YTMSFAoFZGF0YTQYLCABKAlSBWRhdGE0EhQKBWRhdGE1GC0gASgJUgVkYXRhNRIUCgVkYXRhNhguIAEoCVIFZGF0YTYSFAoFZGF0YTcYLyABKAlSBWRhdGE3EhQKBWRhdGE4GDAgASgJUgVkYXRhOBIUCgVkYXRhORgxIAEoCVIFZGF0YTkSFgoGZGF0YTEwGDIgASgJUgZkYXRhMTA=');
@$core.Deprecated('Use salesHistoryItemDescriptor instead')
const SalesHistoryItem$json = const {
  '1': 'SalesHistoryItem',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'sale_serial_number', '3': 2, '4': 1, '5': 5, '10': 'saleSerialNumber'},
    const {'1': 'item_serial_number', '3': 3, '4': 1, '5': 5, '10': 'itemSerialNumber'},
    const {'1': 'item_id', '3': 4, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'quantity', '3': 5, '4': 1, '5': 1, '10': 'quantity'},
    const {'1': 'price', '3': 6, '4': 1, '5': 1, '10': 'price'},
    const {'1': 'supply_value', '3': 7, '4': 1, '5': 1, '10': 'supplyValue'},
    const {'1': 'supply_amount', '3': 8, '4': 1, '5': 1, '10': 'supplyAmount'},
    const {'1': 'tax_amount0', '3': 9, '4': 1, '5': 1, '10': 'taxAmount0'},
    const {'1': 'tax_amount1', '3': 10, '4': 1, '5': 1, '10': 'taxAmount1'},
    const {'1': 'tax_amount2', '3': 11, '4': 1, '5': 1, '10': 'taxAmount2'},
    const {'1': 'discount_section_code', '3': 12, '4': 1, '5': 9, '10': 'discountSectionCode'},
    const {'1': 'discount_type_code', '3': 13, '4': 1, '5': 9, '10': 'discountTypeCode'},
    const {'1': 'discount_amount', '3': 14, '4': 1, '5': 1, '10': 'discountAmount'},
    const {'1': 'order_discount_amount', '3': 15, '4': 1, '5': 1, '10': 'orderDiscountAmount'},
    const {'1': 'cancel_serial_number', '3': 16, '4': 1, '5': 5, '10': 'cancelSerialNumber'},
    const {'1': 'cancel_reason', '3': 17, '4': 1, '5': 9, '10': 'cancelReason'},
    const {'1': 'cancel_employee_id', '3': 18, '4': 1, '5': 9, '10': 'cancelEmployeeId'},
    const {'1': 'menu_payment_serial_number', '3': 19, '4': 1, '5': 5, '10': 'menuPaymentSerialNumber'},
    const {'1': 'first_registrant_id', '3': 20, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 21, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 22, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 23, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 24, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'upper_item_serial_number', '3': 25, '4': 1, '5': 5, '10': 'upperItemSerialNumber'},
    const {'1': 'order_option_code', '3': 26, '4': 1, '5': 9, '10': 'orderOptionCode'},
    const {'1': 'server_last_revision_datetime', '3': 27, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
    const {'1': 'tracking_info', '3': 28, '4': 1, '5': 9, '10': 'trackingInfo'},
  ],
};

/// Descriptor for `SalesHistoryItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List salesHistoryItemDescriptor = $convert.base64Decode('ChBTYWxlc0hpc3RvcnlJdGVtEh8KC2NvbW1vbl9kYXRlGAEgASgJUgpjb21tb25EYXRlEiwKEnNhbGVfc2VyaWFsX251bWJlchgCIAEoBVIQc2FsZVNlcmlhbE51bWJlchIsChJpdGVtX3NlcmlhbF9udW1iZXIYAyABKAVSEGl0ZW1TZXJpYWxOdW1iZXISFwoHaXRlbV9pZBgEIAEoCVIGaXRlbUlkEhoKCHF1YW50aXR5GAUgASgBUghxdWFudGl0eRIUCgVwcmljZRgGIAEoAVIFcHJpY2USIQoMc3VwcGx5X3ZhbHVlGAcgASgBUgtzdXBwbHlWYWx1ZRIjCg1zdXBwbHlfYW1vdW50GAggASgBUgxzdXBwbHlBbW91bnQSHwoLdGF4X2Ftb3VudDAYCSABKAFSCnRheEFtb3VudDASHwoLdGF4X2Ftb3VudDEYCiABKAFSCnRheEFtb3VudDESHwoLdGF4X2Ftb3VudDIYCyABKAFSCnRheEFtb3VudDISMgoVZGlzY291bnRfc2VjdGlvbl9jb2RlGAwgASgJUhNkaXNjb3VudFNlY3Rpb25Db2RlEiwKEmRpc2NvdW50X3R5cGVfY29kZRgNIAEoCVIQZGlzY291bnRUeXBlQ29kZRInCg9kaXNjb3VudF9hbW91bnQYDiABKAFSDmRpc2NvdW50QW1vdW50EjIKFW9yZGVyX2Rpc2NvdW50X2Ftb3VudBgPIAEoAVITb3JkZXJEaXNjb3VudEFtb3VudBIwChRjYW5jZWxfc2VyaWFsX251bWJlchgQIAEoBVISY2FuY2VsU2VyaWFsTnVtYmVyEiMKDWNhbmNlbF9yZWFzb24YESABKAlSDGNhbmNlbFJlYXNvbhIsChJjYW5jZWxfZW1wbG95ZWVfaWQYEiABKAlSEGNhbmNlbEVtcGxveWVlSWQSOwoabWVudV9wYXltZW50X3NlcmlhbF9udW1iZXIYEyABKAVSF21lbnVQYXltZW50U2VyaWFsTnVtYmVyEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYFCABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgVIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYFiABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgXIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgYIAEoCVIJc3RhdGVDb2RlEjcKGHVwcGVyX2l0ZW1fc2VyaWFsX251bWJlchgZIAEoBVIVdXBwZXJJdGVtU2VyaWFsTnVtYmVyEioKEW9yZGVyX29wdGlvbl9jb2RlGBogASgJUg9vcmRlck9wdGlvbkNvZGUSQQodc2VydmVyX2xhc3RfcmV2aXNpb25fZGF0ZXRpbWUYGyABKAlSGnNlcnZlckxhc3RSZXZpc2lvbkRhdGV0aW1lEiMKDXRyYWNraW5nX2luZm8YHCABKAlSDHRyYWNraW5nSW5mbw==');
@$core.Deprecated('Use salesAccountHistoryDescriptor instead')
const SalesAccountHistory$json = const {
  '1': 'SalesAccountHistory',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'sale_serial_number', '3': 2, '4': 1, '5': 5, '10': 'saleSerialNumber'},
    const {'1': 'sales_account_serial_number', '3': 3, '4': 1, '5': 5, '10': 'salesAccountSerialNumber'},
    const {'1': 'cashdraw_section_code', '3': 4, '4': 1, '5': 9, '10': 'cashdrawSectionCode'},
    const {'1': 'payment_section_code', '3': 5, '4': 1, '5': 9, '10': 'paymentSectionCode'},
    const {'1': 'cash_receipt_identify_type_code', '3': 6, '4': 1, '5': 9, '10': 'cashReceiptIdentifyTypeCode'},
    const {'1': 'cash_receipt_identify_number', '3': 7, '4': 1, '5': 9, '10': 'cashReceiptIdentifyNumber'},
    const {'1': 'approval_type_code', '3': 8, '4': 1, '5': 9, '10': 'approvalTypeCode'},
    const {'1': 'cash_receipt_type_code', '3': 9, '4': 1, '5': 9, '10': 'cashReceiptTypeCode'},
    const {'1': 'payment_approval_number', '3': 10, '4': 1, '5': 9, '10': 'paymentApprovalNumber'},
    const {'1': 'approval_date', '3': 11, '4': 1, '5': 9, '10': 'approvalDate'},
    const {'1': 'supply_value', '3': 12, '4': 1, '5': 1, '10': 'supplyValue'},
    const {'1': 'tax_amount', '3': 13, '4': 1, '5': 1, '10': 'taxAmount'},
    const {'1': 'tax_amount1', '3': 14, '4': 1, '5': 1, '10': 'taxAmount1'},
    const {'1': 'tax_amount2', '3': 15, '4': 1, '5': 1, '10': 'taxAmount2'},
    const {'1': 'expiry_date', '3': 16, '4': 1, '5': 9, '10': 'expiryDate'},
    const {'1': 'installment_month', '3': 17, '4': 1, '5': 5, '10': 'installmentMonth'},
    const {'1': 'card_name', '3': 18, '4': 1, '5': 9, '10': 'cardName'},
    const {'1': 'card_company_section_code', '3': 19, '4': 1, '5': 9, '10': 'cardCompanySectionCode'},
    const {'1': 'card_company_name', '3': 20, '4': 1, '5': 9, '10': 'cardCompanyName'},
    const {'1': 'card_company_affiliate_number', '3': 21, '4': 1, '5': 9, '10': 'cardCompanyAffiliateNumber'},
    const {'1': 'card_purchase_company_code', '3': 22, '4': 1, '5': 9, '10': 'cardPurchaseCompanyCode'},
    const {'1': 'card_purchase_company_name', '3': 23, '4': 1, '5': 9, '10': 'cardPurchaseCompanyName'},
    const {'1': 'card_swip_yn', '3': 24, '4': 1, '5': 8, '10': 'cardSwipYn'},
    const {'1': 'pre_tip_total_amount', '3': 25, '4': 1, '5': 1, '10': 'preTipTotalAmount'},
    const {'1': 'pre_tip_amount', '3': 26, '4': 1, '5': 1, '10': 'preTipAmount'},
    const {'1': 'pre_tip_tax_amount', '3': 27, '4': 1, '5': 1, '10': 'preTipTaxAmount'},
    const {'1': 'payment_tip_total_amount', '3': 28, '4': 1, '5': 1, '10': 'paymentTipTotalAmount'},
    const {'1': 'payment_tip_amount', '3': 29, '4': 1, '5': 1, '10': 'paymentTipAmount'},
    const {'1': 'payment_tip_tax_amount', '3': 30, '4': 1, '5': 1, '10': 'paymentTipTaxAmount'},
    const {'1': 'total_amount', '3': 31, '4': 1, '5': 1, '10': 'totalAmount'},
    const {'1': 'cancel_serial_number', '3': 32, '4': 1, '5': 9, '10': 'cancelSerialNumber'},
    const {'1': 'cancel_employee_id', '3': 33, '4': 1, '5': 9, '10': 'cancelEmployeeId'},
    const {'1': 'complete_settlement_yn', '3': 34, '4': 1, '5': 8, '10': 'completeSettlementYn'},
    const {'1': 'receipt_number', '3': 35, '4': 1, '5': 9, '10': 'receiptNumber'},
    const {'1': 'payment_option', '3': 36, '4': 1, '5': 9, '10': 'paymentOption'},
    const {'1': 'menu_discount_amount', '3': 37, '4': 1, '5': 1, '10': 'menuDiscountAmount'},
    const {'1': 'order_discount_amount', '3': 38, '4': 1, '5': 1, '10': 'orderDiscountAmount'},
    const {'1': 'first_registrant_id', '3': 39, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 40, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 41, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 42, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 43, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'approval_date_primary_pattern', '3': 44, '4': 1, '5': 9, '10': 'approvalDatePrimaryPattern'},
    const {'1': 'transaction_type_code', '3': 45, '4': 1, '5': 9, '10': 'transactionTypeCode'},
    const {'1': 'sale_transmit_yn', '3': 46, '4': 1, '5': 8, '10': 'saleTransmitYn'},
    const {'1': 'operation_type_code', '3': 47, '4': 1, '5': 9, '10': 'operationTypeCode'},
    const {'1': 'not_in_sales_yn', '3': 48, '4': 1, '5': 8, '10': 'notInSalesYn'},
    const {'1': 'taken_amount', '3': 49, '4': 1, '5': 1, '10': 'takenAmount'},
    const {'1': 'change_amount', '3': 50, '4': 1, '5': 1, '10': 'changeAmount'},
    const {'1': 'server_last_revision_datetime', '3': 51, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
    const {'1': 'payment_method_code', '3': 52, '4': 1, '5': 9, '10': 'paymentMethodCode'},
    const {'1': 'approval_transaction_no', '3': 53, '4': 1, '5': 9, '10': 'approvalTransactionNo'},
  ],
};

/// Descriptor for `SalesAccountHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List salesAccountHistoryDescriptor = $convert.base64Decode('ChNTYWxlc0FjY291bnRIaXN0b3J5Eh8KC2NvbW1vbl9kYXRlGAEgASgJUgpjb21tb25EYXRlEiwKEnNhbGVfc2VyaWFsX251bWJlchgCIAEoBVIQc2FsZVNlcmlhbE51bWJlchI9ChtzYWxlc19hY2NvdW50X3NlcmlhbF9udW1iZXIYAyABKAVSGHNhbGVzQWNjb3VudFNlcmlhbE51bWJlchIyChVjYXNoZHJhd19zZWN0aW9uX2NvZGUYBCABKAlSE2Nhc2hkcmF3U2VjdGlvbkNvZGUSMAoUcGF5bWVudF9zZWN0aW9uX2NvZGUYBSABKAlSEnBheW1lbnRTZWN0aW9uQ29kZRJECh9jYXNoX3JlY2VpcHRfaWRlbnRpZnlfdHlwZV9jb2RlGAYgASgJUhtjYXNoUmVjZWlwdElkZW50aWZ5VHlwZUNvZGUSPwocY2FzaF9yZWNlaXB0X2lkZW50aWZ5X251bWJlchgHIAEoCVIZY2FzaFJlY2VpcHRJZGVudGlmeU51bWJlchIsChJhcHByb3ZhbF90eXBlX2NvZGUYCCABKAlSEGFwcHJvdmFsVHlwZUNvZGUSMwoWY2FzaF9yZWNlaXB0X3R5cGVfY29kZRgJIAEoCVITY2FzaFJlY2VpcHRUeXBlQ29kZRI2ChdwYXltZW50X2FwcHJvdmFsX251bWJlchgKIAEoCVIVcGF5bWVudEFwcHJvdmFsTnVtYmVyEiMKDWFwcHJvdmFsX2RhdGUYCyABKAlSDGFwcHJvdmFsRGF0ZRIhCgxzdXBwbHlfdmFsdWUYDCABKAFSC3N1cHBseVZhbHVlEh0KCnRheF9hbW91bnQYDSABKAFSCXRheEFtb3VudBIfCgt0YXhfYW1vdW50MRgOIAEoAVIKdGF4QW1vdW50MRIfCgt0YXhfYW1vdW50MhgPIAEoAVIKdGF4QW1vdW50MhIfCgtleHBpcnlfZGF0ZRgQIAEoCVIKZXhwaXJ5RGF0ZRIrChFpbnN0YWxsbWVudF9tb250aBgRIAEoBVIQaW5zdGFsbG1lbnRNb250aBIbCgljYXJkX25hbWUYEiABKAlSCGNhcmROYW1lEjkKGWNhcmRfY29tcGFueV9zZWN0aW9uX2NvZGUYEyABKAlSFmNhcmRDb21wYW55U2VjdGlvbkNvZGUSKgoRY2FyZF9jb21wYW55X25hbWUYFCABKAlSD2NhcmRDb21wYW55TmFtZRJBCh1jYXJkX2NvbXBhbnlfYWZmaWxpYXRlX251bWJlchgVIAEoCVIaY2FyZENvbXBhbnlBZmZpbGlhdGVOdW1iZXISOwoaY2FyZF9wdXJjaGFzZV9jb21wYW55X2NvZGUYFiABKAlSF2NhcmRQdXJjaGFzZUNvbXBhbnlDb2RlEjsKGmNhcmRfcHVyY2hhc2VfY29tcGFueV9uYW1lGBcgASgJUhdjYXJkUHVyY2hhc2VDb21wYW55TmFtZRIgCgxjYXJkX3N3aXBfeW4YGCABKAhSCmNhcmRTd2lwWW4SLwoUcHJlX3RpcF90b3RhbF9hbW91bnQYGSABKAFSEXByZVRpcFRvdGFsQW1vdW50EiQKDnByZV90aXBfYW1vdW50GBogASgBUgxwcmVUaXBBbW91bnQSKwoScHJlX3RpcF90YXhfYW1vdW50GBsgASgBUg9wcmVUaXBUYXhBbW91bnQSNwoYcGF5bWVudF90aXBfdG90YWxfYW1vdW50GBwgASgBUhVwYXltZW50VGlwVG90YWxBbW91bnQSLAoScGF5bWVudF90aXBfYW1vdW50GB0gASgBUhBwYXltZW50VGlwQW1vdW50EjMKFnBheW1lbnRfdGlwX3RheF9hbW91bnQYHiABKAFSE3BheW1lbnRUaXBUYXhBbW91bnQSIQoMdG90YWxfYW1vdW50GB8gASgBUgt0b3RhbEFtb3VudBIwChRjYW5jZWxfc2VyaWFsX251bWJlchggIAEoCVISY2FuY2VsU2VyaWFsTnVtYmVyEiwKEmNhbmNlbF9lbXBsb3llZV9pZBghIAEoCVIQY2FuY2VsRW1wbG95ZWVJZBI0ChZjb21wbGV0ZV9zZXR0bGVtZW50X3luGCIgASgIUhRjb21wbGV0ZVNldHRsZW1lbnRZbhIlCg5yZWNlaXB0X251bWJlchgjIAEoCVINcmVjZWlwdE51bWJlchIlCg5wYXltZW50X29wdGlvbhgkIAEoCVINcGF5bWVudE9wdGlvbhIwChRtZW51X2Rpc2NvdW50X2Ftb3VudBglIAEoAVISbWVudURpc2NvdW50QW1vdW50EjIKFW9yZGVyX2Rpc2NvdW50X2Ftb3VudBgmIAEoAVITb3JkZXJEaXNjb3VudEFtb3VudBIuChNmaXJzdF9yZWdpc3RyYW50X2lkGCcgASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYKCABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGCkgASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYKiABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYKyABKAlSCXN0YXRlQ29kZRJBCh1hcHByb3ZhbF9kYXRlX3ByaW1hcnlfcGF0dGVybhgsIAEoCVIaYXBwcm92YWxEYXRlUHJpbWFyeVBhdHRlcm4SMgoVdHJhbnNhY3Rpb25fdHlwZV9jb2RlGC0gASgJUhN0cmFuc2FjdGlvblR5cGVDb2RlEigKEHNhbGVfdHJhbnNtaXRfeW4YLiABKAhSDnNhbGVUcmFuc21pdFluEi4KE29wZXJhdGlvbl90eXBlX2NvZGUYLyABKAlSEW9wZXJhdGlvblR5cGVDb2RlEiUKD25vdF9pbl9zYWxlc195bhgwIAEoCFIMbm90SW5TYWxlc1luEiEKDHRha2VuX2Ftb3VudBgxIAEoAVILdGFrZW5BbW91bnQSIwoNY2hhbmdlX2Ftb3VudBgyIAEoAVIMY2hhbmdlQW1vdW50EkEKHXNlcnZlcl9sYXN0X3JldmlzaW9uX2RhdGV0aW1lGDMgASgJUhpzZXJ2ZXJMYXN0UmV2aXNpb25EYXRldGltZRIuChNwYXltZW50X21ldGhvZF9jb2RlGDQgASgJUhFwYXltZW50TWV0aG9kQ29kZRI2ChdhcHByb3ZhbF90cmFuc2FjdGlvbl9ubxg1IAEoCVIVYXBwcm92YWxUcmFuc2FjdGlvbk5v');
@$core.Deprecated('Use salesAccountHistoryDetailsDescriptor instead')
const SalesAccountHistoryDetails$json = const {
  '1': 'SalesAccountHistoryDetails',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'sale_serial_number', '3': 2, '4': 1, '5': 5, '10': 'saleSerialNumber'},
    const {'1': 'sales_account_serial_number', '3': 3, '4': 1, '5': 5, '10': 'salesAccountSerialNumber'},
    const {'1': 'data0', '3': 4, '4': 1, '5': 9, '10': 'data0'},
    const {'1': 'data1', '3': 5, '4': 1, '5': 9, '10': 'data1'},
    const {'1': 'data2', '3': 6, '4': 1, '5': 9, '10': 'data2'},
    const {'1': 'data3', '3': 7, '4': 1, '5': 9, '10': 'data3'},
    const {'1': 'data4', '3': 8, '4': 1, '5': 9, '10': 'data4'},
    const {'1': 'data5', '3': 9, '4': 1, '5': 9, '10': 'data5'},
    const {'1': 'data6', '3': 10, '4': 1, '5': 9, '10': 'data6'},
    const {'1': 'data7', '3': 11, '4': 1, '5': 9, '10': 'data7'},
    const {'1': 'data8', '3': 12, '4': 1, '5': 9, '10': 'data8'},
    const {'1': 'data9', '3': 13, '4': 1, '5': 9, '10': 'data9'},
    const {'1': 'first_registrant_id', '3': 14, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 15, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 16, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 17, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 18, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'data10', '3': 19, '4': 1, '5': 9, '10': 'data10'},
    const {'1': 'data11', '3': 20, '4': 1, '5': 9, '10': 'data11'},
    const {'1': 'data12', '3': 21, '4': 1, '5': 9, '10': 'data12'},
    const {'1': 'data13', '3': 22, '4': 1, '5': 9, '10': 'data13'},
    const {'1': 'data14', '3': 23, '4': 1, '5': 9, '10': 'data14'},
    const {'1': 'data15', '3': 24, '4': 1, '5': 9, '10': 'data15'},
    const {'1': 'data16', '3': 25, '4': 1, '5': 9, '10': 'data16'},
    const {'1': 'data17', '3': 26, '4': 1, '5': 9, '10': 'data17'},
    const {'1': 'data18', '3': 27, '4': 1, '5': 9, '10': 'data18'},
    const {'1': 'data19', '3': 28, '4': 1, '5': 9, '10': 'data19'},
    const {'1': 'data20', '3': 29, '4': 1, '5': 9, '10': 'data20'},
    const {'1': 'server_last_revision_datetime', '3': 30, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `SalesAccountHistoryDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List salesAccountHistoryDetailsDescriptor = $convert.base64Decode('ChpTYWxlc0FjY291bnRIaXN0b3J5RGV0YWlscxIfCgtjb21tb25fZGF0ZRgBIAEoCVIKY29tbW9uRGF0ZRIsChJzYWxlX3NlcmlhbF9udW1iZXIYAiABKAVSEHNhbGVTZXJpYWxOdW1iZXISPQobc2FsZXNfYWNjb3VudF9zZXJpYWxfbnVtYmVyGAMgASgFUhhzYWxlc0FjY291bnRTZXJpYWxOdW1iZXISFAoFZGF0YTAYBCABKAlSBWRhdGEwEhQKBWRhdGExGAUgASgJUgVkYXRhMRIUCgVkYXRhMhgGIAEoCVIFZGF0YTISFAoFZGF0YTMYByABKAlSBWRhdGEzEhQKBWRhdGE0GAggASgJUgVkYXRhNBIUCgVkYXRhNRgJIAEoCVIFZGF0YTUSFAoFZGF0YTYYCiABKAlSBWRhdGE2EhQKBWRhdGE3GAsgASgJUgVkYXRhNxIUCgVkYXRhOBgMIAEoCVIFZGF0YTgSFAoFZGF0YTkYDSABKAlSBWRhdGE5Ei4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYDiABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgPIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYECABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgRIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgSIAEoCVIJc3RhdGVDb2RlEhYKBmRhdGExMBgTIAEoCVIGZGF0YTEwEhYKBmRhdGExMRgUIAEoCVIGZGF0YTExEhYKBmRhdGExMhgVIAEoCVIGZGF0YTEyEhYKBmRhdGExMxgWIAEoCVIGZGF0YTEzEhYKBmRhdGExNBgXIAEoCVIGZGF0YTE0EhYKBmRhdGExNRgYIAEoCVIGZGF0YTE1EhYKBmRhdGExNhgZIAEoCVIGZGF0YTE2EhYKBmRhdGExNxgaIAEoCVIGZGF0YTE3EhYKBmRhdGExOBgbIAEoCVIGZGF0YTE4EhYKBmRhdGExORgcIAEoCVIGZGF0YTE5EhYKBmRhdGEyMBgdIAEoCVIGZGF0YTIwEkEKHXNlcnZlcl9sYXN0X3JldmlzaW9uX2RhdGV0aW1lGB4gASgJUhpzZXJ2ZXJMYXN0UmV2aXNpb25EYXRldGltZQ==');
@$core.Deprecated('Use salesAccountHistoryTipDescriptor instead')
const SalesAccountHistoryTip$json = const {
  '1': 'SalesAccountHistoryTip',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'sale_serial_number', '3': 2, '4': 1, '5': 5, '10': 'saleSerialNumber'},
    const {'1': 'sales_account_serial_number', '3': 3, '4': 1, '5': 5, '10': 'salesAccountSerialNumber'},
    const {'1': 'store_terminal_id', '3': 4, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'payment_section_code', '3': 5, '4': 1, '5': 9, '10': 'paymentSectionCode'},
    const {'1': 'approval_type_code', '3': 6, '4': 1, '5': 9, '10': 'approvalTypeCode'},
    const {'1': 'cashdraw_section_code', '3': 7, '4': 1, '5': 9, '10': 'cashdrawSectionCode'},
    const {'1': 'payment_amount', '3': 8, '4': 1, '5': 1, '10': 'paymentAmount'},
    const {'1': 'tax_amount', '3': 9, '4': 1, '5': 1, '10': 'taxAmount'},
    const {'1': 'tip_receipt_employee_id', '3': 10, '4': 1, '5': 9, '10': 'tipReceiptEmployeeId'},
    const {'1': 'first_registrant_id', '3': 11, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 12, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 13, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 14, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 15, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'server_last_revision_datetime', '3': 16, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `SalesAccountHistoryTip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List salesAccountHistoryTipDescriptor = $convert.base64Decode('ChZTYWxlc0FjY291bnRIaXN0b3J5VGlwEh8KC2NvbW1vbl9kYXRlGAEgASgJUgpjb21tb25EYXRlEiwKEnNhbGVfc2VyaWFsX251bWJlchgCIAEoBVIQc2FsZVNlcmlhbE51bWJlchI9ChtzYWxlc19hY2NvdW50X3NlcmlhbF9udW1iZXIYAyABKAVSGHNhbGVzQWNjb3VudFNlcmlhbE51bWJlchIqChFzdG9yZV90ZXJtaW5hbF9pZBgEIAEoCVIPc3RvcmVUZXJtaW5hbElkEjAKFHBheW1lbnRfc2VjdGlvbl9jb2RlGAUgASgJUhJwYXltZW50U2VjdGlvbkNvZGUSLAoSYXBwcm92YWxfdHlwZV9jb2RlGAYgASgJUhBhcHByb3ZhbFR5cGVDb2RlEjIKFWNhc2hkcmF3X3NlY3Rpb25fY29kZRgHIAEoCVITY2FzaGRyYXdTZWN0aW9uQ29kZRIlCg5wYXltZW50X2Ftb3VudBgIIAEoAVINcGF5bWVudEFtb3VudBIdCgp0YXhfYW1vdW50GAkgASgBUgl0YXhBbW91bnQSNQoXdGlwX3JlY2VpcHRfZW1wbG95ZWVfaWQYCiABKAlSFHRpcFJlY2VpcHRFbXBsb3llZUlkEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYCyABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgMIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYDSABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgOIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgPIAEoCVIJc3RhdGVDb2RlEkEKHXNlcnZlcl9sYXN0X3JldmlzaW9uX2RhdGV0aW1lGBAgASgJUhpzZXJ2ZXJMYXN0UmV2aXNpb25EYXRldGltZQ==');
@$core.Deprecated('Use salesHistoryDiscountDescriptor instead')
const SalesHistoryDiscount$json = const {
  '1': 'SalesHistoryDiscount',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'sale_serial_number', '3': 2, '4': 1, '5': 5, '10': 'saleSerialNumber'},
    const {'1': 'discount_serial_number', '3': 3, '4': 1, '5': 5, '10': 'discountSerialNumber'},
    const {'1': 'discount_section_code', '3': 4, '4': 1, '5': 9, '10': 'discountSectionCode'},
    const {'1': 'discount_rate', '3': 5, '4': 1, '5': 1, '10': 'discountRate'},
    const {'1': 'discount_amount', '3': 6, '4': 1, '5': 1, '10': 'discountAmount'},
    const {'1': 'discount_name', '3': 7, '4': 1, '5': 9, '10': 'discountName'},
    const {'1': 'item_id', '3': 8, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'first_registrant_id', '3': 9, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 10, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 11, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 12, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 13, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'cancel_serial_number', '3': 14, '4': 1, '5': 5, '10': 'cancelSerialNumber'},
    const {'1': 'cancel_employee_id', '3': 15, '4': 1, '5': 9, '10': 'cancelEmployeeId'},
    const {'1': 'server_last_revision_datetime', '3': 16, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `SalesHistoryDiscount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List salesHistoryDiscountDescriptor = $convert.base64Decode('ChRTYWxlc0hpc3RvcnlEaXNjb3VudBIfCgtjb21tb25fZGF0ZRgBIAEoCVIKY29tbW9uRGF0ZRIsChJzYWxlX3NlcmlhbF9udW1iZXIYAiABKAVSEHNhbGVTZXJpYWxOdW1iZXISNAoWZGlzY291bnRfc2VyaWFsX251bWJlchgDIAEoBVIUZGlzY291bnRTZXJpYWxOdW1iZXISMgoVZGlzY291bnRfc2VjdGlvbl9jb2RlGAQgASgJUhNkaXNjb3VudFNlY3Rpb25Db2RlEiMKDWRpc2NvdW50X3JhdGUYBSABKAFSDGRpc2NvdW50UmF0ZRInCg9kaXNjb3VudF9hbW91bnQYBiABKAFSDmRpc2NvdW50QW1vdW50EiMKDWRpc2NvdW50X25hbWUYByABKAlSDGRpc2NvdW50TmFtZRIXCgdpdGVtX2lkGAggASgJUgZpdGVtSWQSLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgJIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGAogASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgLIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGAwgASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGA0gASgJUglzdGF0ZUNvZGUSMAoUY2FuY2VsX3NlcmlhbF9udW1iZXIYDiABKAVSEmNhbmNlbFNlcmlhbE51bWJlchIsChJjYW5jZWxfZW1wbG95ZWVfaWQYDyABKAlSEGNhbmNlbEVtcGxveWVlSWQSQQodc2VydmVyX2xhc3RfcmV2aXNpb25fZGF0ZXRpbWUYECABKAlSGnNlcnZlckxhc3RSZXZpc2lvbkRhdGV0aW1l');
@$core.Deprecated('Use cashdrawCashInOutHistoryDescriptor instead')
const CashdrawCashInOutHistory$json = const {
  '1': 'CashdrawCashInOutHistory',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'common_serial_number', '3': 2, '4': 1, '5': 5, '10': 'commonSerialNumber'},
    const {'1': 'account_subject_id', '3': 3, '4': 1, '5': 9, '10': 'accountSubjectId'},
    const {'1': 'cashdraw_section_code', '3': 4, '4': 1, '5': 9, '10': 'cashdrawSectionCode'},
    const {'1': 'in_out_type_code', '3': 5, '4': 1, '5': 9, '10': 'inOutTypeCode'},
    const {'1': 'amount', '3': 6, '4': 1, '5': 1, '10': 'amount'},
    const {'1': 'remark_a', '3': 7, '4': 1, '5': 9, '10': 'remarkA'},
    const {'1': 'remark_b', '3': 8, '4': 1, '5': 9, '10': 'remarkB'},
    const {'1': 'remark_c', '3': 9, '4': 1, '5': 9, '10': 'remarkC'},
    const {'1': 'personal_account_id', '3': 10, '4': 1, '5': 9, '10': 'personalAccountId'},
    const {'1': 'sales_link', '3': 11, '4': 1, '5': 9, '10': 'salesLink'},
    const {'1': 'cashier_bank_link', '3': 12, '4': 1, '5': 9, '10': 'cashierBankLink'},
    const {'1': 'first_registrant_id', '3': 13, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 14, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 15, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 16, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 17, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'in_out_employee_id', '3': 18, '4': 1, '5': 9, '10': 'inOutEmployeeId'},
    const {'1': 'server_last_revision_datetime', '3': 19, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `CashdrawCashInOutHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cashdrawCashInOutHistoryDescriptor = $convert.base64Decode('ChhDYXNoZHJhd0Nhc2hJbk91dEhpc3RvcnkSHwoLY29tbW9uX2RhdGUYASABKAlSCmNvbW1vbkRhdGUSMAoUY29tbW9uX3NlcmlhbF9udW1iZXIYAiABKAVSEmNvbW1vblNlcmlhbE51bWJlchIsChJhY2NvdW50X3N1YmplY3RfaWQYAyABKAlSEGFjY291bnRTdWJqZWN0SWQSMgoVY2FzaGRyYXdfc2VjdGlvbl9jb2RlGAQgASgJUhNjYXNoZHJhd1NlY3Rpb25Db2RlEicKEGluX291dF90eXBlX2NvZGUYBSABKAlSDWluT3V0VHlwZUNvZGUSFgoGYW1vdW50GAYgASgBUgZhbW91bnQSGQoIcmVtYXJrX2EYByABKAlSB3JlbWFya0ESGQoIcmVtYXJrX2IYCCABKAlSB3JlbWFya0ISGQoIcmVtYXJrX2MYCSABKAlSB3JlbWFya0MSLgoTcGVyc29uYWxfYWNjb3VudF9pZBgKIAEoCVIRcGVyc29uYWxBY2NvdW50SWQSHQoKc2FsZXNfbGluaxgLIAEoCVIJc2FsZXNMaW5rEioKEWNhc2hpZXJfYmFua19saW5rGAwgASgJUg9jYXNoaWVyQmFua0xpbmsSLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgNIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGA4gASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgPIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGBAgASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGBEgASgJUglzdGF0ZUNvZGUSKwoSaW5fb3V0X2VtcGxveWVlX2lkGBIgASgJUg9pbk91dEVtcGxveWVlSWQSQQodc2VydmVyX2xhc3RfcmV2aXNpb25fZGF0ZXRpbWUYEyABKAlSGnNlcnZlckxhc3RSZXZpc2lvbkRhdGV0aW1l');
@$core.Deprecated('Use cashierBankHistoryDescriptor instead')
const CashierBankHistory$json = const {
  '1': 'CashierBankHistory',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'common_serial_number', '3': 2, '4': 1, '5': 5, '10': 'commonSerialNumber'},
    const {'1': 'cashdraw_section_code', '3': 3, '4': 1, '5': 9, '10': 'cashdrawSectionCode'},
    const {'1': 'business_open_close_section_code', '3': 4, '4': 1, '5': 9, '10': 'businessOpenCloseSectionCode'},
    const {'1': 'cashier_type_code', '3': 5, '4': 1, '5': 9, '10': 'cashierTypeCode'},
    const {'1': 'business_start_datetime', '3': 6, '4': 1, '5': 9, '10': 'businessStartDatetime'},
    const {'1': 'business_end_datetime', '3': 7, '4': 1, '5': 9, '10': 'businessEndDatetime'},
    const {'1': 'business_change_datetime', '3': 8, '4': 1, '5': 9, '10': 'businessChangeDatetime'},
    const {'1': 'sales_count', '3': 9, '4': 1, '5': 5, '10': 'salesCount'},
    const {'1': 'table_turnover_rate', '3': 10, '4': 1, '5': 1, '10': 'tableTurnoverRate'},
    const {'1': 'employee_id', '3': 11, '4': 1, '5': 9, '10': 'employeeId'},
    const {'1': 'open_business_cash_total_amount', '3': 12, '4': 1, '5': 1, '10': 'openBusinessCashTotalAmount'},
    const {'1': 'close_business_cash_total_amount', '3': 13, '4': 1, '5': 1, '10': 'closeBusinessCashTotalAmount'},
    const {'1': 'business_change_cash_total_amount', '3': 14, '4': 1, '5': 1, '10': 'businessChangeCashTotalAmount'},
    const {'1': 'pos_cash_total_amount', '3': 15, '4': 1, '5': 1, '10': 'posCashTotalAmount'},
    const {'1': 'cash_difference_amount', '3': 16, '4': 1, '5': 1, '10': 'cashDifferenceAmount'},
    const {'1': 'cash_difference_reason', '3': 17, '4': 1, '5': 9, '10': 'cashDifferenceReason'},
    const {'1': 'cash_deposit_total_amount', '3': 18, '4': 1, '5': 1, '10': 'cashDepositTotalAmount'},
    const {'1': 'cash_withdrawal_amount', '3': 19, '4': 1, '5': 1, '10': 'cashWithdrawalAmount'},
    const {'1': 'sales_total_amount', '3': 20, '4': 1, '5': 1, '10': 'salesTotalAmount'},
    const {'1': 'discount_total_amount', '3': 21, '4': 1, '5': 1, '10': 'discountTotalAmount'},
    const {'1': 'tip_total_amount', '3': 22, '4': 1, '5': 1, '10': 'tipTotalAmount'},
    const {'1': 'cancel_serial_number', '3': 23, '4': 1, '5': 5, '10': 'cancelSerialNumber'},
    const {'1': 'shift_serial_number', '3': 24, '4': 1, '5': 9, '10': 'shiftSerialNumber'},
    const {'1': 'first_registrant_id', '3': 25, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 26, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 27, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 28, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 29, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'sales_total_cash_amount', '3': 30, '4': 1, '5': 1, '10': 'salesTotalCashAmount'},
    const {'1': 'server_last_revision_datetime', '3': 31, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
    const {'1': 'batch_id', '3': 32, '4': 1, '5': 5, '10': 'batchId'},
  ],
};

/// Descriptor for `CashierBankHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cashierBankHistoryDescriptor = $convert.base64Decode('ChJDYXNoaWVyQmFua0hpc3RvcnkSHwoLY29tbW9uX2RhdGUYASABKAlSCmNvbW1vbkRhdGUSMAoUY29tbW9uX3NlcmlhbF9udW1iZXIYAiABKAVSEmNvbW1vblNlcmlhbE51bWJlchIyChVjYXNoZHJhd19zZWN0aW9uX2NvZGUYAyABKAlSE2Nhc2hkcmF3U2VjdGlvbkNvZGUSRgogYnVzaW5lc3Nfb3Blbl9jbG9zZV9zZWN0aW9uX2NvZGUYBCABKAlSHGJ1c2luZXNzT3BlbkNsb3NlU2VjdGlvbkNvZGUSKgoRY2FzaGllcl90eXBlX2NvZGUYBSABKAlSD2Nhc2hpZXJUeXBlQ29kZRI2ChdidXNpbmVzc19zdGFydF9kYXRldGltZRgGIAEoCVIVYnVzaW5lc3NTdGFydERhdGV0aW1lEjIKFWJ1c2luZXNzX2VuZF9kYXRldGltZRgHIAEoCVITYnVzaW5lc3NFbmREYXRldGltZRI4ChhidXNpbmVzc19jaGFuZ2VfZGF0ZXRpbWUYCCABKAlSFmJ1c2luZXNzQ2hhbmdlRGF0ZXRpbWUSHwoLc2FsZXNfY291bnQYCSABKAVSCnNhbGVzQ291bnQSLgoTdGFibGVfdHVybm92ZXJfcmF0ZRgKIAEoAVIRdGFibGVUdXJub3ZlclJhdGUSHwoLZW1wbG95ZWVfaWQYCyABKAlSCmVtcGxveWVlSWQSRAofb3Blbl9idXNpbmVzc19jYXNoX3RvdGFsX2Ftb3VudBgMIAEoAVIbb3BlbkJ1c2luZXNzQ2FzaFRvdGFsQW1vdW50EkYKIGNsb3NlX2J1c2luZXNzX2Nhc2hfdG90YWxfYW1vdW50GA0gASgBUhxjbG9zZUJ1c2luZXNzQ2FzaFRvdGFsQW1vdW50EkgKIWJ1c2luZXNzX2NoYW5nZV9jYXNoX3RvdGFsX2Ftb3VudBgOIAEoAVIdYnVzaW5lc3NDaGFuZ2VDYXNoVG90YWxBbW91bnQSMQoVcG9zX2Nhc2hfdG90YWxfYW1vdW50GA8gASgBUhJwb3NDYXNoVG90YWxBbW91bnQSNAoWY2FzaF9kaWZmZXJlbmNlX2Ftb3VudBgQIAEoAVIUY2FzaERpZmZlcmVuY2VBbW91bnQSNAoWY2FzaF9kaWZmZXJlbmNlX3JlYXNvbhgRIAEoCVIUY2FzaERpZmZlcmVuY2VSZWFzb24SOQoZY2FzaF9kZXBvc2l0X3RvdGFsX2Ftb3VudBgSIAEoAVIWY2FzaERlcG9zaXRUb3RhbEFtb3VudBI0ChZjYXNoX3dpdGhkcmF3YWxfYW1vdW50GBMgASgBUhRjYXNoV2l0aGRyYXdhbEFtb3VudBIsChJzYWxlc190b3RhbF9hbW91bnQYFCABKAFSEHNhbGVzVG90YWxBbW91bnQSMgoVZGlzY291bnRfdG90YWxfYW1vdW50GBUgASgBUhNkaXNjb3VudFRvdGFsQW1vdW50EigKEHRpcF90b3RhbF9hbW91bnQYFiABKAFSDnRpcFRvdGFsQW1vdW50EjAKFGNhbmNlbF9zZXJpYWxfbnVtYmVyGBcgASgFUhJjYW5jZWxTZXJpYWxOdW1iZXISLgoTc2hpZnRfc2VyaWFsX251bWJlchgYIAEoCVIRc2hpZnRTZXJpYWxOdW1iZXISLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgZIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGBogASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgbIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGBwgASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGB0gASgJUglzdGF0ZUNvZGUSNQoXc2FsZXNfdG90YWxfY2FzaF9hbW91bnQYHiABKAFSFHNhbGVzVG90YWxDYXNoQW1vdW50EkEKHXNlcnZlcl9sYXN0X3JldmlzaW9uX2RhdGV0aW1lGB8gASgJUhpzZXJ2ZXJMYXN0UmV2aXNpb25EYXRldGltZRIZCghiYXRjaF9pZBggIAEoBVIHYmF0Y2hJZA==');
@$core.Deprecated('Use cashierBankHistoryBillDescriptor instead')
const CashierBankHistoryBill$json = const {
  '1': 'CashierBankHistoryBill',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'common_serial_number', '3': 2, '4': 1, '5': 5, '10': 'commonSerialNumber'},
    const {'1': 'cashdraw_section_code', '3': 3, '4': 1, '5': 9, '10': 'cashdrawSectionCode'},
    const {'1': 'business_open_close_section_code', '3': 4, '4': 1, '5': 9, '10': 'businessOpenCloseSectionCode'},
    const {'1': 'bill_serial_number', '3': 5, '4': 1, '5': 5, '10': 'billSerialNumber'},
    const {'1': 'total_amount', '3': 6, '4': 1, '5': 1, '10': 'totalAmount'},
    const {'1': 'bill0_number', '3': 7, '4': 1, '5': 5, '10': 'bill0Number'},
    const {'1': 'bill1_number', '3': 8, '4': 1, '5': 5, '10': 'bill1Number'},
    const {'1': 'bill2_number', '3': 9, '4': 1, '5': 5, '10': 'bill2Number'},
    const {'1': 'bill3_number', '3': 10, '4': 1, '5': 5, '10': 'bill3Number'},
    const {'1': 'bill4_number', '3': 11, '4': 1, '5': 5, '10': 'bill4Number'},
    const {'1': 'bill5_number', '3': 12, '4': 1, '5': 5, '10': 'bill5Number'},
    const {'1': 'bill6_number', '3': 13, '4': 1, '5': 5, '10': 'bill6Number'},
    const {'1': 'bill7_number', '3': 14, '4': 1, '5': 5, '10': 'bill7Number'},
    const {'1': 'bill8_number', '3': 15, '4': 1, '5': 5, '10': 'bill8Number'},
    const {'1': 'bill9_number', '3': 16, '4': 1, '5': 5, '10': 'bill9Number'},
    const {'1': 'bill10_number', '3': 17, '4': 1, '5': 5, '10': 'bill10Number'},
    const {'1': 'bill11_number', '3': 18, '4': 1, '5': 5, '10': 'bill11Number'},
    const {'1': 'bill12_number', '3': 19, '4': 1, '5': 5, '10': 'bill12Number'},
    const {'1': 'bill13_number', '3': 20, '4': 1, '5': 5, '10': 'bill13Number'},
    const {'1': 'bill14_number', '3': 21, '4': 1, '5': 5, '10': 'bill14Number'},
    const {'1': 'bill15_number', '3': 22, '4': 1, '5': 5, '10': 'bill15Number'},
    const {'1': 'bill16_number', '3': 23, '4': 1, '5': 5, '10': 'bill16Number'},
    const {'1': 'bill17_number', '3': 24, '4': 1, '5': 5, '10': 'bill17Number'},
    const {'1': 'bill18_number', '3': 25, '4': 1, '5': 5, '10': 'bill18Number'},
    const {'1': 'bill19_number', '3': 26, '4': 1, '5': 5, '10': 'bill19Number'},
    const {'1': 'user_input_amount', '3': 27, '4': 1, '5': 1, '10': 'userInputAmount'},
    const {'1': 'cancel_serial_number', '3': 28, '4': 1, '5': 5, '10': 'cancelSerialNumber'},
    const {'1': 'shift_serial_number', '3': 29, '4': 1, '5': 9, '10': 'shiftSerialNumber'},
    const {'1': 'first_registrant_id', '3': 30, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 31, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 32, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 33, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 34, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'server_last_revision_datetime', '3': 35, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `CashierBankHistoryBill`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cashierBankHistoryBillDescriptor = $convert.base64Decode('ChZDYXNoaWVyQmFua0hpc3RvcnlCaWxsEh8KC2NvbW1vbl9kYXRlGAEgASgJUgpjb21tb25EYXRlEjAKFGNvbW1vbl9zZXJpYWxfbnVtYmVyGAIgASgFUhJjb21tb25TZXJpYWxOdW1iZXISMgoVY2FzaGRyYXdfc2VjdGlvbl9jb2RlGAMgASgJUhNjYXNoZHJhd1NlY3Rpb25Db2RlEkYKIGJ1c2luZXNzX29wZW5fY2xvc2Vfc2VjdGlvbl9jb2RlGAQgASgJUhxidXNpbmVzc09wZW5DbG9zZVNlY3Rpb25Db2RlEiwKEmJpbGxfc2VyaWFsX251bWJlchgFIAEoBVIQYmlsbFNlcmlhbE51bWJlchIhCgx0b3RhbF9hbW91bnQYBiABKAFSC3RvdGFsQW1vdW50EiEKDGJpbGwwX251bWJlchgHIAEoBVILYmlsbDBOdW1iZXISIQoMYmlsbDFfbnVtYmVyGAggASgFUgtiaWxsMU51bWJlchIhCgxiaWxsMl9udW1iZXIYCSABKAVSC2JpbGwyTnVtYmVyEiEKDGJpbGwzX251bWJlchgKIAEoBVILYmlsbDNOdW1iZXISIQoMYmlsbDRfbnVtYmVyGAsgASgFUgtiaWxsNE51bWJlchIhCgxiaWxsNV9udW1iZXIYDCABKAVSC2JpbGw1TnVtYmVyEiEKDGJpbGw2X251bWJlchgNIAEoBVILYmlsbDZOdW1iZXISIQoMYmlsbDdfbnVtYmVyGA4gASgFUgtiaWxsN051bWJlchIhCgxiaWxsOF9udW1iZXIYDyABKAVSC2JpbGw4TnVtYmVyEiEKDGJpbGw5X251bWJlchgQIAEoBVILYmlsbDlOdW1iZXISIwoNYmlsbDEwX251bWJlchgRIAEoBVIMYmlsbDEwTnVtYmVyEiMKDWJpbGwxMV9udW1iZXIYEiABKAVSDGJpbGwxMU51bWJlchIjCg1iaWxsMTJfbnVtYmVyGBMgASgFUgxiaWxsMTJOdW1iZXISIwoNYmlsbDEzX251bWJlchgUIAEoBVIMYmlsbDEzTnVtYmVyEiMKDWJpbGwxNF9udW1iZXIYFSABKAVSDGJpbGwxNE51bWJlchIjCg1iaWxsMTVfbnVtYmVyGBYgASgFUgxiaWxsMTVOdW1iZXISIwoNYmlsbDE2X251bWJlchgXIAEoBVIMYmlsbDE2TnVtYmVyEiMKDWJpbGwxN19udW1iZXIYGCABKAVSDGJpbGwxN051bWJlchIjCg1iaWxsMThfbnVtYmVyGBkgASgFUgxiaWxsMThOdW1iZXISIwoNYmlsbDE5X251bWJlchgaIAEoBVIMYmlsbDE5TnVtYmVyEioKEXVzZXJfaW5wdXRfYW1vdW50GBsgASgBUg91c2VySW5wdXRBbW91bnQSMAoUY2FuY2VsX3NlcmlhbF9udW1iZXIYHCABKAVSEmNhbmNlbFNlcmlhbE51bWJlchIuChNzaGlmdF9zZXJpYWxfbnVtYmVyGB0gASgJUhFzaGlmdFNlcmlhbE51bWJlchIuChNmaXJzdF9yZWdpc3RyYW50X2lkGB4gASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYHyABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGCAgASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYISABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYIiABKAlSCXN0YXRlQ29kZRJBCh1zZXJ2ZXJfbGFzdF9yZXZpc2lvbl9kYXRldGltZRgjIAEoCVIac2VydmVyTGFzdFJldmlzaW9uRGF0ZXRpbWU=');
@$core.Deprecated('Use dailyReportHistoryDescriptor instead')
const DailyReportHistory$json = const {
  '1': 'DailyReportHistory',
  '2': const [
    const {'1': 'store_terminal_id', '3': 1, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'common_date', '3': 2, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'common_serial_number', '3': 3, '4': 1, '5': 5, '10': 'commonSerialNumber'},
    const {'1': 'business_datetime', '3': 4, '4': 1, '5': 9, '10': 'businessDatetime'},
    const {'1': 'total_sales_amount', '3': 5, '4': 1, '5': 1, '10': 'totalSalesAmount'},
    const {'1': 'total_sales_count', '3': 6, '4': 1, '5': 5, '10': 'totalSalesCount'},
    const {'1': 'total_supply_value', '3': 7, '4': 1, '5': 1, '10': 'totalSupplyValue'},
    const {'1': 'total_tax_amount', '3': 8, '4': 1, '5': 1, '10': 'totalTaxAmount'},
    const {'1': 'total_tip_amount', '3': 9, '4': 1, '5': 1, '10': 'totalTipAmount'},
    const {'1': 'total_tip_tax_amount', '3': 10, '4': 1, '5': 1, '10': 'totalTipTaxAmount'},
    const {'1': 'discount_total_amount', '3': 11, '4': 1, '5': 1, '10': 'discountTotalAmount'},
    const {'1': 'total_cancel_amount', '3': 12, '4': 1, '5': 1, '10': 'totalCancelAmount'},
    const {'1': 'total_refund_amount', '3': 13, '4': 1, '5': 1, '10': 'totalRefundAmount'},
    const {'1': 'pos_cash_total_amount', '3': 14, '4': 1, '5': 1, '10': 'posCashTotalAmount'},
    const {'1': 'cash_deposit_total_amount', '3': 15, '4': 1, '5': 1, '10': 'cashDepositTotalAmount'},
    const {'1': 'cash_withdrawal_amount', '3': 16, '4': 1, '5': 1, '10': 'cashWithdrawalAmount'},
    const {'1': 'synchronized_yn', '3': 17, '4': 1, '5': 8, '10': 'synchronizedYn'},
    const {'1': 'first_registrant_id', '3': 18, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 19, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 20, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 21, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 22, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'server_last_revision_datetime', '3': 23, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `DailyReportHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dailyReportHistoryDescriptor = $convert.base64Decode('ChJEYWlseVJlcG9ydEhpc3RvcnkSKgoRc3RvcmVfdGVybWluYWxfaWQYASABKAlSD3N0b3JlVGVybWluYWxJZBIfCgtjb21tb25fZGF0ZRgCIAEoCVIKY29tbW9uRGF0ZRIwChRjb21tb25fc2VyaWFsX251bWJlchgDIAEoBVISY29tbW9uU2VyaWFsTnVtYmVyEisKEWJ1c2luZXNzX2RhdGV0aW1lGAQgASgJUhBidXNpbmVzc0RhdGV0aW1lEiwKEnRvdGFsX3NhbGVzX2Ftb3VudBgFIAEoAVIQdG90YWxTYWxlc0Ftb3VudBIqChF0b3RhbF9zYWxlc19jb3VudBgGIAEoBVIPdG90YWxTYWxlc0NvdW50EiwKEnRvdGFsX3N1cHBseV92YWx1ZRgHIAEoAVIQdG90YWxTdXBwbHlWYWx1ZRIoChB0b3RhbF90YXhfYW1vdW50GAggASgBUg50b3RhbFRheEFtb3VudBIoChB0b3RhbF90aXBfYW1vdW50GAkgASgBUg50b3RhbFRpcEFtb3VudBIvChR0b3RhbF90aXBfdGF4X2Ftb3VudBgKIAEoAVIRdG90YWxUaXBUYXhBbW91bnQSMgoVZGlzY291bnRfdG90YWxfYW1vdW50GAsgASgBUhNkaXNjb3VudFRvdGFsQW1vdW50Ei4KE3RvdGFsX2NhbmNlbF9hbW91bnQYDCABKAFSEXRvdGFsQ2FuY2VsQW1vdW50Ei4KE3RvdGFsX3JlZnVuZF9hbW91bnQYDSABKAFSEXRvdGFsUmVmdW5kQW1vdW50EjEKFXBvc19jYXNoX3RvdGFsX2Ftb3VudBgOIAEoAVIScG9zQ2FzaFRvdGFsQW1vdW50EjkKGWNhc2hfZGVwb3NpdF90b3RhbF9hbW91bnQYDyABKAFSFmNhc2hEZXBvc2l0VG90YWxBbW91bnQSNAoWY2FzaF93aXRoZHJhd2FsX2Ftb3VudBgQIAEoAVIUY2FzaFdpdGhkcmF3YWxBbW91bnQSJwoPc3luY2hyb25pemVkX3luGBEgASgIUg5zeW5jaHJvbml6ZWRZbhIuChNmaXJzdF9yZWdpc3RyYW50X2lkGBIgASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYEyABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGBQgASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYFSABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYFiABKAlSCXN0YXRlQ29kZRJBCh1zZXJ2ZXJfbGFzdF9yZXZpc2lvbl9kYXRldGltZRgXIAEoCVIac2VydmVyTGFzdFJldmlzaW9uRGF0ZXRpbWU=');
@$core.Deprecated('Use dailyReportHistoryPaymentsDescriptor instead')
const DailyReportHistoryPayments$json = const {
  '1': 'DailyReportHistoryPayments',
  '2': const [
    const {'1': 'store_terminal_id', '3': 1, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'common_date', '3': 2, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'common_serial_number', '3': 3, '4': 1, '5': 5, '10': 'commonSerialNumber'},
    const {'1': 'payment_section_code', '3': 4, '4': 1, '5': 9, '10': 'paymentSectionCode'},
    const {'1': 'business_datetime', '3': 5, '4': 1, '5': 9, '10': 'businessDatetime'},
    const {'1': 'total_sales_amount', '3': 6, '4': 1, '5': 1, '10': 'totalSalesAmount'},
    const {'1': 'total_sales_count', '3': 7, '4': 1, '5': 5, '10': 'totalSalesCount'},
    const {'1': 'total_supply_value', '3': 8, '4': 1, '5': 1, '10': 'totalSupplyValue'},
    const {'1': 'total_tax_amount', '3': 9, '4': 1, '5': 1, '10': 'totalTaxAmount'},
    const {'1': 'total_tip_amount', '3': 10, '4': 1, '5': 1, '10': 'totalTipAmount'},
    const {'1': 'total_tip_tax_amount', '3': 11, '4': 1, '5': 1, '10': 'totalTipTaxAmount'},
    const {'1': 'discount_total_amount', '3': 12, '4': 1, '5': 1, '10': 'discountTotalAmount'},
    const {'1': 'total_cancel_amount', '3': 13, '4': 1, '5': 1, '10': 'totalCancelAmount'},
    const {'1': 'total_refund_amount', '3': 14, '4': 1, '5': 1, '10': 'totalRefundAmount'},
    const {'1': 'synchronized_yn', '3': 15, '4': 1, '5': 8, '10': 'synchronizedYn'},
    const {'1': 'first_registrant_id', '3': 16, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 17, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 18, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 19, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 20, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'server_last_revision_datetime', '3': 21, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
  ],
};

/// Descriptor for `DailyReportHistoryPayments`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dailyReportHistoryPaymentsDescriptor = $convert.base64Decode('ChpEYWlseVJlcG9ydEhpc3RvcnlQYXltZW50cxIqChFzdG9yZV90ZXJtaW5hbF9pZBgBIAEoCVIPc3RvcmVUZXJtaW5hbElkEh8KC2NvbW1vbl9kYXRlGAIgASgJUgpjb21tb25EYXRlEjAKFGNvbW1vbl9zZXJpYWxfbnVtYmVyGAMgASgFUhJjb21tb25TZXJpYWxOdW1iZXISMAoUcGF5bWVudF9zZWN0aW9uX2NvZGUYBCABKAlSEnBheW1lbnRTZWN0aW9uQ29kZRIrChFidXNpbmVzc19kYXRldGltZRgFIAEoCVIQYnVzaW5lc3NEYXRldGltZRIsChJ0b3RhbF9zYWxlc19hbW91bnQYBiABKAFSEHRvdGFsU2FsZXNBbW91bnQSKgoRdG90YWxfc2FsZXNfY291bnQYByABKAVSD3RvdGFsU2FsZXNDb3VudBIsChJ0b3RhbF9zdXBwbHlfdmFsdWUYCCABKAFSEHRvdGFsU3VwcGx5VmFsdWUSKAoQdG90YWxfdGF4X2Ftb3VudBgJIAEoAVIOdG90YWxUYXhBbW91bnQSKAoQdG90YWxfdGlwX2Ftb3VudBgKIAEoAVIOdG90YWxUaXBBbW91bnQSLwoUdG90YWxfdGlwX3RheF9hbW91bnQYCyABKAFSEXRvdGFsVGlwVGF4QW1vdW50EjIKFWRpc2NvdW50X3RvdGFsX2Ftb3VudBgMIAEoAVITZGlzY291bnRUb3RhbEFtb3VudBIuChN0b3RhbF9jYW5jZWxfYW1vdW50GA0gASgBUhF0b3RhbENhbmNlbEFtb3VudBIuChN0b3RhbF9yZWZ1bmRfYW1vdW50GA4gASgBUhF0b3RhbFJlZnVuZEFtb3VudBInCg9zeW5jaHJvbml6ZWRfeW4YDyABKAhSDnN5bmNocm9uaXplZFluEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYECABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgRIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYEiABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgTIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgUIAEoCVIJc3RhdGVDb2RlEkEKHXNlcnZlcl9sYXN0X3JldmlzaW9uX2RhdGV0aW1lGBUgASgJUhpzZXJ2ZXJMYXN0UmV2aXNpb25EYXRldGltZQ==');
@$core.Deprecated('Use orderHistoryDescriptor instead')
const OrderHistory$json = const {
  '1': 'OrderHistory',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'common_serial_number', '3': 2, '4': 1, '5': 5, '10': 'commonSerialNumber'},
    const {'1': 'table_id', '3': 3, '4': 1, '5': 9, '10': 'tableId'},
    const {'1': 'operation_type_code', '3': 4, '4': 1, '5': 9, '10': 'operationTypeCode'},
    const {'1': 'business_section_code', '3': 5, '4': 1, '5': 9, '10': 'businessSectionCode'},
    const {'1': 'supply_value', '3': 6, '4': 1, '5': 1, '10': 'supplyValue'},
    const {'1': 'supply_amount', '3': 7, '4': 1, '5': 1, '10': 'supplyAmount'},
    const {'1': 'tax_amount0', '3': 8, '4': 1, '5': 1, '10': 'taxAmount0'},
    const {'1': 'tax_amount1', '3': 9, '4': 1, '5': 1, '10': 'taxAmount1'},
    const {'1': 'tax_amount2', '3': 10, '4': 1, '5': 1, '10': 'taxAmount2'},
    const {'1': 'discount_total_amount', '3': 11, '4': 1, '5': 1, '10': 'discountTotalAmount'},
    const {'1': 'order_total_amount', '3': 12, '4': 1, '5': 1, '10': 'orderTotalAmount'},
    const {'1': 'tax_free_yn', '3': 13, '4': 1, '5': 8, '10': 'taxFreeYn'},
    const {'1': 'tax_free_reason', '3': 14, '4': 1, '5': 9, '10': 'taxFreeReason'},
    const {'1': 'pre_tip_total_amount', '3': 15, '4': 1, '5': 1, '10': 'preTipTotalAmount'},
    const {'1': 'pre_tip_amount', '3': 16, '4': 1, '5': 1, '10': 'preTipAmount'},
    const {'1': 'pre_tip_tax_amount', '3': 17, '4': 1, '5': 1, '10': 'preTipTaxAmount'},
    const {'1': 'payment_tip_total_amount', '3': 18, '4': 1, '5': 1, '10': 'paymentTipTotalAmount'},
    const {'1': 'payment_tip_amount', '3': 19, '4': 1, '5': 1, '10': 'paymentTipAmount'},
    const {'1': 'payment_tip_tax_amount', '3': 20, '4': 1, '5': 1, '10': 'paymentTipTaxAmount'},
    const {'1': 'serving_employee_id', '3': 21, '4': 1, '5': 9, '10': 'servingEmployeeId'},
    const {'1': 'order_employee_id', '3': 22, '4': 1, '5': 9, '10': 'orderEmployeeId'},
    const {'1': 'pager_number', '3': 23, '4': 1, '5': 5, '10': 'pagerNumber'},
    const {'1': 'first_registrant_id', '3': 24, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 25, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 26, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 27, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 28, '4': 1, '5': 9, '10': 'stateCode'},
    const {'1': 'server_last_revision_datetime', '3': 29, '4': 1, '5': 9, '10': 'serverLastRevisionDatetime'},
    const {'1': 'payment_initiator_id', '3': 30, '4': 1, '5': 9, '10': 'paymentInitiatorId'},
    const {'1': 'is_finalized', '3': 31, '4': 1, '5': 8, '10': 'isFinalized'},
    const {'1': 'memo', '3': 32, '4': 1, '5': 9, '10': 'memo'},
  ],
};

/// Descriptor for `OrderHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderHistoryDescriptor = $convert.base64Decode('CgxPcmRlckhpc3RvcnkSHwoLY29tbW9uX2RhdGUYASABKAlSCmNvbW1vbkRhdGUSMAoUY29tbW9uX3NlcmlhbF9udW1iZXIYAiABKAVSEmNvbW1vblNlcmlhbE51bWJlchIZCgh0YWJsZV9pZBgDIAEoCVIHdGFibGVJZBIuChNvcGVyYXRpb25fdHlwZV9jb2RlGAQgASgJUhFvcGVyYXRpb25UeXBlQ29kZRIyChVidXNpbmVzc19zZWN0aW9uX2NvZGUYBSABKAlSE2J1c2luZXNzU2VjdGlvbkNvZGUSIQoMc3VwcGx5X3ZhbHVlGAYgASgBUgtzdXBwbHlWYWx1ZRIjCg1zdXBwbHlfYW1vdW50GAcgASgBUgxzdXBwbHlBbW91bnQSHwoLdGF4X2Ftb3VudDAYCCABKAFSCnRheEFtb3VudDASHwoLdGF4X2Ftb3VudDEYCSABKAFSCnRheEFtb3VudDESHwoLdGF4X2Ftb3VudDIYCiABKAFSCnRheEFtb3VudDISMgoVZGlzY291bnRfdG90YWxfYW1vdW50GAsgASgBUhNkaXNjb3VudFRvdGFsQW1vdW50EiwKEm9yZGVyX3RvdGFsX2Ftb3VudBgMIAEoAVIQb3JkZXJUb3RhbEFtb3VudBIeCgt0YXhfZnJlZV95bhgNIAEoCFIJdGF4RnJlZVluEiYKD3RheF9mcmVlX3JlYXNvbhgOIAEoCVINdGF4RnJlZVJlYXNvbhIvChRwcmVfdGlwX3RvdGFsX2Ftb3VudBgPIAEoAVIRcHJlVGlwVG90YWxBbW91bnQSJAoOcHJlX3RpcF9hbW91bnQYECABKAFSDHByZVRpcEFtb3VudBIrChJwcmVfdGlwX3RheF9hbW91bnQYESABKAFSD3ByZVRpcFRheEFtb3VudBI3ChhwYXltZW50X3RpcF90b3RhbF9hbW91bnQYEiABKAFSFXBheW1lbnRUaXBUb3RhbEFtb3VudBIsChJwYXltZW50X3RpcF9hbW91bnQYEyABKAFSEHBheW1lbnRUaXBBbW91bnQSMwoWcGF5bWVudF90aXBfdGF4X2Ftb3VudBgUIAEoAVITcGF5bWVudFRpcFRheEFtb3VudBIuChNzZXJ2aW5nX2VtcGxveWVlX2lkGBUgASgJUhFzZXJ2aW5nRW1wbG95ZWVJZBIqChFvcmRlcl9lbXBsb3llZV9pZBgWIAEoCVIPb3JkZXJFbXBsb3llZUlkEiEKDHBhZ2VyX251bWJlchgXIAEoBVILcGFnZXJOdW1iZXISLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgYIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGBkgASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgaIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGBsgASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGBwgASgJUglzdGF0ZUNvZGUSQQodc2VydmVyX2xhc3RfcmV2aXNpb25fZGF0ZXRpbWUYHSABKAlSGnNlcnZlckxhc3RSZXZpc2lvbkRhdGV0aW1lEjAKFHBheW1lbnRfaW5pdGlhdG9yX2lkGB4gASgJUhJwYXltZW50SW5pdGlhdG9ySWQSIQoMaXNfZmluYWxpemVkGB8gASgIUgtpc0ZpbmFsaXplZBISCgRtZW1vGCAgASgJUgRtZW1v');
@$core.Deprecated('Use orderHistoryItemDescriptor instead')
const OrderHistoryItem$json = const {
  '1': 'OrderHistoryItem',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'common_serial_number', '3': 2, '4': 1, '5': 5, '10': 'commonSerialNumber'},
    const {'1': 'item_serial_number', '3': 3, '4': 1, '5': 5, '10': 'itemSerialNumber'},
    const {'1': 'upper_item_serial_number', '3': 4, '4': 1, '5': 5, '10': 'upperItemSerialNumber'},
    const {'1': 'item_id', '3': 5, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'store_terminal_id', '3': 6, '4': 1, '5': 9, '10': 'storeTerminalId'},
    const {'1': 'quantity', '3': 7, '4': 1, '5': 1, '10': 'quantity'},
    const {'1': 'price', '3': 8, '4': 1, '5': 1, '10': 'price'},
    const {'1': 'supply_value', '3': 9, '4': 1, '5': 1, '10': 'supplyValue'},
    const {'1': 'tax_amount0', '3': 10, '4': 1, '5': 1, '10': 'taxAmount0'},
    const {'1': 'tax_amount1', '3': 11, '4': 1, '5': 1, '10': 'taxAmount1'},
    const {'1': 'tax_amount2', '3': 12, '4': 1, '5': 1, '10': 'taxAmount2'},
    const {'1': 'discount_section_code', '3': 13, '4': 1, '5': 9, '10': 'discountSectionCode'},
    const {'1': 'discount_rate', '3': 14, '4': 1, '5': 1, '10': 'discountRate'},
    const {'1': 'discount_amount', '3': 15, '4': 1, '5': 1, '10': 'discountAmount'},
    const {'1': 'discount_type_code', '3': 16, '4': 1, '5': 9, '10': 'discountTypeCode'},
    const {'1': 'menu_discount_amount', '3': 17, '4': 1, '5': 1, '10': 'menuDiscountAmount'},
    const {'1': 'order_discount_amount', '3': 18, '4': 1, '5': 1, '10': 'orderDiscountAmount'},
    const {'1': 'supply_amount', '3': 19, '4': 1, '5': 1, '10': 'supplyAmount'},
    const {'1': 'order_option_code', '3': 20, '4': 1, '5': 9, '10': 'orderOptionCode'},
    const {'1': 'order_holding_time', '3': 21, '4': 1, '5': 9, '10': 'orderHoldingTime'},
    const {'1': 'cancel_serial_number', '3': 22, '4': 1, '5': 5, '10': 'cancelSerialNumber'},
    const {'1': 'cancel_employee_id', '3': 23, '4': 1, '5': 9, '10': 'cancelEmployeeId'},
    const {'1': 'cancel_reason', '3': 24, '4': 1, '5': 9, '10': 'cancelReason'},
    const {'1': 'menu_payment_yn', '3': 25, '4': 1, '5': 8, '10': 'menuPaymentYn'},
    const {'1': 'menu_payment_serial_number', '3': 26, '4': 1, '5': 5, '10': 'menuPaymentSerialNumber'},
    const {'1': 'first_registrant_id', '3': 27, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 28, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 29, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 30, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 31, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `OrderHistoryItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderHistoryItemDescriptor = $convert.base64Decode('ChBPcmRlckhpc3RvcnlJdGVtEh8KC2NvbW1vbl9kYXRlGAEgASgJUgpjb21tb25EYXRlEjAKFGNvbW1vbl9zZXJpYWxfbnVtYmVyGAIgASgFUhJjb21tb25TZXJpYWxOdW1iZXISLAoSaXRlbV9zZXJpYWxfbnVtYmVyGAMgASgFUhBpdGVtU2VyaWFsTnVtYmVyEjcKGHVwcGVyX2l0ZW1fc2VyaWFsX251bWJlchgEIAEoBVIVdXBwZXJJdGVtU2VyaWFsTnVtYmVyEhcKB2l0ZW1faWQYBSABKAlSBml0ZW1JZBIqChFzdG9yZV90ZXJtaW5hbF9pZBgGIAEoCVIPc3RvcmVUZXJtaW5hbElkEhoKCHF1YW50aXR5GAcgASgBUghxdWFudGl0eRIUCgVwcmljZRgIIAEoAVIFcHJpY2USIQoMc3VwcGx5X3ZhbHVlGAkgASgBUgtzdXBwbHlWYWx1ZRIfCgt0YXhfYW1vdW50MBgKIAEoAVIKdGF4QW1vdW50MBIfCgt0YXhfYW1vdW50MRgLIAEoAVIKdGF4QW1vdW50MRIfCgt0YXhfYW1vdW50MhgMIAEoAVIKdGF4QW1vdW50MhIyChVkaXNjb3VudF9zZWN0aW9uX2NvZGUYDSABKAlSE2Rpc2NvdW50U2VjdGlvbkNvZGUSIwoNZGlzY291bnRfcmF0ZRgOIAEoAVIMZGlzY291bnRSYXRlEicKD2Rpc2NvdW50X2Ftb3VudBgPIAEoAVIOZGlzY291bnRBbW91bnQSLAoSZGlzY291bnRfdHlwZV9jb2RlGBAgASgJUhBkaXNjb3VudFR5cGVDb2RlEjAKFG1lbnVfZGlzY291bnRfYW1vdW50GBEgASgBUhJtZW51RGlzY291bnRBbW91bnQSMgoVb3JkZXJfZGlzY291bnRfYW1vdW50GBIgASgBUhNvcmRlckRpc2NvdW50QW1vdW50EiMKDXN1cHBseV9hbW91bnQYEyABKAFSDHN1cHBseUFtb3VudBIqChFvcmRlcl9vcHRpb25fY29kZRgUIAEoCVIPb3JkZXJPcHRpb25Db2RlEiwKEm9yZGVyX2hvbGRpbmdfdGltZRgVIAEoCVIQb3JkZXJIb2xkaW5nVGltZRIwChRjYW5jZWxfc2VyaWFsX251bWJlchgWIAEoBVISY2FuY2VsU2VyaWFsTnVtYmVyEiwKEmNhbmNlbF9lbXBsb3llZV9pZBgXIAEoCVIQY2FuY2VsRW1wbG95ZWVJZBIjCg1jYW5jZWxfcmVhc29uGBggASgJUgxjYW5jZWxSZWFzb24SJgoPbWVudV9wYXltZW50X3luGBkgASgIUg1tZW51UGF5bWVudFluEjsKGm1lbnVfcGF5bWVudF9zZXJpYWxfbnVtYmVyGBogASgFUhdtZW51UGF5bWVudFNlcmlhbE51bWJlchIuChNmaXJzdF9yZWdpc3RyYW50X2lkGBsgASgJUhFmaXJzdFJlZ2lzdHJhbnRJZBI+ChtmaXJzdF9yZWdpc3RyYXRpb25fZGF0ZXRpbWUYHCABKAlSGWZpcnN0UmVnaXN0cmF0aW9uRGF0ZXRpbWUSJgoPbGFzdF9yZXZpc2VyX2lkGB0gASgJUg1sYXN0UmV2aXNlcklkEjQKFmxhc3RfcmV2aXNpb25fZGF0ZXRpbWUYHiABKAlSFGxhc3RSZXZpc2lvbkRhdGV0aW1lEh0KCnN0YXRlX2NvZGUYHyABKAlSCXN0YXRlQ29kZQ==');
@$core.Deprecated('Use orderHistoryKitchenMemoDescriptor instead')
const OrderHistoryKitchenMemo$json = const {
  '1': 'OrderHistoryKitchenMemo',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'common_serial_number', '3': 2, '4': 1, '5': 5, '10': 'commonSerialNumber'},
    const {'1': 'item_serial_number', '3': 3, '4': 1, '5': 5, '10': 'itemSerialNumber'},
    const {'1': 'kitchen_memo_serial_number', '3': 4, '4': 1, '5': 5, '10': 'kitchenMemoSerialNumber'},
    const {'1': 'kitchen_memo_id', '3': 5, '4': 1, '5': 9, '10': 'kitchenMemoId'},
    const {'1': 'kitchen_memo', '3': 6, '4': 1, '5': 9, '10': 'kitchenMemo'},
    const {'1': 'first_registrant_id', '3': 7, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 8, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 9, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 10, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 11, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `OrderHistoryKitchenMemo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderHistoryKitchenMemoDescriptor = $convert.base64Decode('ChdPcmRlckhpc3RvcnlLaXRjaGVuTWVtbxIfCgtjb21tb25fZGF0ZRgBIAEoCVIKY29tbW9uRGF0ZRIwChRjb21tb25fc2VyaWFsX251bWJlchgCIAEoBVISY29tbW9uU2VyaWFsTnVtYmVyEiwKEml0ZW1fc2VyaWFsX251bWJlchgDIAEoBVIQaXRlbVNlcmlhbE51bWJlchI7ChpraXRjaGVuX21lbW9fc2VyaWFsX251bWJlchgEIAEoBVIXa2l0Y2hlbk1lbW9TZXJpYWxOdW1iZXISJgoPa2l0Y2hlbl9tZW1vX2lkGAUgASgJUg1raXRjaGVuTWVtb0lkEiEKDGtpdGNoZW5fbWVtbxgGIAEoCVILa2l0Y2hlbk1lbW8SLgoTZmlyc3RfcmVnaXN0cmFudF9pZBgHIAEoCVIRZmlyc3RSZWdpc3RyYW50SWQSPgobZmlyc3RfcmVnaXN0cmF0aW9uX2RhdGV0aW1lGAggASgJUhlmaXJzdFJlZ2lzdHJhdGlvbkRhdGV0aW1lEiYKD2xhc3RfcmV2aXNlcl9pZBgJIAEoCVINbGFzdFJldmlzZXJJZBI0ChZsYXN0X3JldmlzaW9uX2RhdGV0aW1lGAogASgJUhRsYXN0UmV2aXNpb25EYXRldGltZRIdCgpzdGF0ZV9jb2RlGAsgASgJUglzdGF0ZUNvZGU=');
@$core.Deprecated('Use orderHistoryDiscountDescriptor instead')
const OrderHistoryDiscount$json = const {
  '1': 'OrderHistoryDiscount',
  '2': const [
    const {'1': 'common_date', '3': 1, '4': 1, '5': 9, '10': 'commonDate'},
    const {'1': 'common_serial_number', '3': 2, '4': 1, '5': 5, '10': 'commonSerialNumber'},
    const {'1': 'discount_serial_number', '3': 3, '4': 1, '5': 5, '10': 'discountSerialNumber'},
    const {'1': 'discount_section_code', '3': 4, '4': 1, '5': 9, '10': 'discountSectionCode'},
    const {'1': 'discount_rate', '3': 5, '4': 1, '5': 1, '10': 'discountRate'},
    const {'1': 'discount_amount', '3': 6, '4': 1, '5': 1, '10': 'discountAmount'},
    const {'1': 'discount_name', '3': 7, '4': 1, '5': 9, '10': 'discountName'},
    const {'1': 'item_id', '3': 8, '4': 1, '5': 9, '10': 'itemId'},
    const {'1': 'first_registrant_id', '3': 9, '4': 1, '5': 9, '10': 'firstRegistrantId'},
    const {'1': 'first_registration_datetime', '3': 10, '4': 1, '5': 9, '10': 'firstRegistrationDatetime'},
    const {'1': 'last_reviser_id', '3': 11, '4': 1, '5': 9, '10': 'lastReviserId'},
    const {'1': 'last_revision_datetime', '3': 12, '4': 1, '5': 9, '10': 'lastRevisionDatetime'},
    const {'1': 'state_code', '3': 13, '4': 1, '5': 9, '10': 'stateCode'},
  ],
};

/// Descriptor for `OrderHistoryDiscount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderHistoryDiscountDescriptor = $convert.base64Decode('ChRPcmRlckhpc3RvcnlEaXNjb3VudBIfCgtjb21tb25fZGF0ZRgBIAEoCVIKY29tbW9uRGF0ZRIwChRjb21tb25fc2VyaWFsX251bWJlchgCIAEoBVISY29tbW9uU2VyaWFsTnVtYmVyEjQKFmRpc2NvdW50X3NlcmlhbF9udW1iZXIYAyABKAVSFGRpc2NvdW50U2VyaWFsTnVtYmVyEjIKFWRpc2NvdW50X3NlY3Rpb25fY29kZRgEIAEoCVITZGlzY291bnRTZWN0aW9uQ29kZRIjCg1kaXNjb3VudF9yYXRlGAUgASgBUgxkaXNjb3VudFJhdGUSJwoPZGlzY291bnRfYW1vdW50GAYgASgBUg5kaXNjb3VudEFtb3VudBIjCg1kaXNjb3VudF9uYW1lGAcgASgJUgxkaXNjb3VudE5hbWUSFwoHaXRlbV9pZBgIIAEoCVIGaXRlbUlkEi4KE2ZpcnN0X3JlZ2lzdHJhbnRfaWQYCSABKAlSEWZpcnN0UmVnaXN0cmFudElkEj4KG2ZpcnN0X3JlZ2lzdHJhdGlvbl9kYXRldGltZRgKIAEoCVIZZmlyc3RSZWdpc3RyYXRpb25EYXRldGltZRImCg9sYXN0X3JldmlzZXJfaWQYCyABKAlSDWxhc3RSZXZpc2VySWQSNAoWbGFzdF9yZXZpc2lvbl9kYXRldGltZRgMIAEoCVIUbGFzdFJldmlzaW9uRGF0ZXRpbWUSHQoKc3RhdGVfY29kZRgNIAEoCVIJc3RhdGVDb2Rl');
