///
//  Generated code. Do not modify.
//  source: api/v1/service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'message.pb.dart' as $1;
export 'service.pb.dart';

class BusinessServiceClient extends $grpc.Client {
  static final _$getNonce = $grpc.ClientMethod<$1.Empty, $1.AppVerification>(
      '/api.v1.BusinessService/GetNonce',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AppVerification.fromBuffer(value));
  static final _$verifyApp =
      $grpc.ClientMethod<$1.AppVerification, $1.AppVerification>(
          '/api.v1.BusinessService/VerifyApp',
          ($1.AppVerification value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AppVerification.fromBuffer(value));
  static final _$getLoginDomains = $grpc.ClientMethod<$1.Empty, $1.LoginDomain>(
      '/api.v1.BusinessService/GetLoginDomains',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.LoginDomain.fromBuffer(value));
  static final _$registerApp =
      $grpc.ClientMethod<$1.AppRegistration, $1.AppRegistration>(
          '/api.v1.BusinessService/RegisterApp',
          ($1.AppRegistration value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AppRegistration.fromBuffer(value));
  static final _$getRegistrationForm =
      $grpc.ClientMethod<$1.RegistrationForm, $1.RegistrationForm>(
          '/api.v1.BusinessService/GetRegistrationForm',
          ($1.RegistrationForm value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.RegistrationForm.fromBuffer(value));
  static final _$verifyAdminPassword =
      $grpc.ClientMethod<$1.PasswordVerification, $1.PasswordVerification>(
          '/api.v1.BusinessService/VerifyAdminPassword',
          ($1.PasswordVerification value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PasswordVerification.fromBuffer(value));
  static final _$allTables = $grpc.ClientMethod<$1.LastModified, $1.S3File>(
      '/api.v1.BusinessService/AllTables',
      ($1.LastModified value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.S3File.fromBuffer(value));
  static final _$uploadSettings =
      $grpc.ClientMethod<$1.SettingsData, $1.SettingsData>(
          '/api.v1.BusinessService/UploadSettings',
          ($1.SettingsData value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.SettingsData.fromBuffer(value));
  static final _$uploadSales = $grpc.ClientMethod<$1.SalesData, $1.SalesData>(
      '/api.v1.BusinessService/UploadSales',
      ($1.SalesData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.SalesData.fromBuffer(value));
  static final _$uploadCashierData =
      $grpc.ClientMethod<$1.CashierData, $1.CashierData>(
          '/api.v1.BusinessService/UploadCashierData',
          ($1.CashierData value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.CashierData.fromBuffer(value));
  static final _$uploadReports =
      $grpc.ClientMethod<$1.ReportData, $1.ReportData>(
          '/api.v1.BusinessService/UploadReports',
          ($1.ReportData value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.ReportData.fromBuffer(value));
  static final _$salesAndReportTables = $grpc.ClientMethod<$1.Empty, $1.S3File>(
      '/api.v1.BusinessService/SalesAndReportTables',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.S3File.fromBuffer(value));
  static final _$itemTables = $grpc.ClientMethod<$1.LastModified, $1.ItemData>(
      '/api.v1.BusinessService/ItemTables',
      ($1.LastModified value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ItemData.fromBuffer(value));
  static final _$entranceRegistration = $grpc.ClientMethod<
          $1.EntranceRegistrationData, $1.EntranceRegistrationData>(
      '/api.v1.BusinessService/EntranceRegistration',
      ($1.EntranceRegistrationData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.EntranceRegistrationData.fromBuffer(value));

  BusinessServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.AppVerification> getNonce($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNonce, request, options: options);
  }

  $grpc.ResponseFuture<$1.AppVerification> verifyApp($1.AppVerification request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyApp, request, options: options);
  }

  $grpc.ResponseFuture<$1.LoginDomain> getLoginDomains($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLoginDomains, request, options: options);
  }

  $grpc.ResponseFuture<$1.AppRegistration> registerApp(
      $1.AppRegistration request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerApp, request, options: options);
  }

  $grpc.ResponseFuture<$1.RegistrationForm> getRegistrationForm(
      $1.RegistrationForm request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRegistrationForm, request, options: options);
  }

  $grpc.ResponseFuture<$1.PasswordVerification> verifyAdminPassword(
      $1.PasswordVerification request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyAdminPassword, request, options: options);
  }

  $grpc.ResponseFuture<$1.S3File> allTables($1.LastModified request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$allTables, request, options: options);
  }

  $grpc.ResponseFuture<$1.SettingsData> uploadSettings($1.SettingsData request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadSettings, request, options: options);
  }

  $grpc.ResponseFuture<$1.SalesData> uploadSales($1.SalesData request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadSales, request, options: options);
  }

  $grpc.ResponseFuture<$1.CashierData> uploadCashierData($1.CashierData request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadCashierData, request, options: options);
  }

  $grpc.ResponseFuture<$1.ReportData> uploadReports($1.ReportData request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadReports, request, options: options);
  }

  $grpc.ResponseFuture<$1.S3File> salesAndReportTables($1.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$salesAndReportTables, request, options: options);
  }

  $grpc.ResponseFuture<$1.ItemData> itemTables($1.LastModified request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$itemTables, request, options: options);
  }

  $grpc.ResponseFuture<$1.EntranceRegistrationData> entranceRegistration(
      $1.EntranceRegistrationData request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$entranceRegistration, request, options: options);
  }
}

abstract class BusinessServiceBase extends $grpc.Service {
  $core.String get $name => 'api.v1.BusinessService';

  BusinessServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.AppVerification>(
        'GetNonce',
        getNonce_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.AppVerification value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AppVerification, $1.AppVerification>(
        'VerifyApp',
        verifyApp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AppVerification.fromBuffer(value),
        ($1.AppVerification value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.LoginDomain>(
        'GetLoginDomains',
        getLoginDomains_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.LoginDomain value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AppRegistration, $1.AppRegistration>(
        'RegisterApp',
        registerApp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AppRegistration.fromBuffer(value),
        ($1.AppRegistration value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RegistrationForm, $1.RegistrationForm>(
        'GetRegistrationForm',
        getRegistrationForm_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RegistrationForm.fromBuffer(value),
        ($1.RegistrationForm value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.PasswordVerification, $1.PasswordVerification>(
            'VerifyAdminPassword',
            verifyAdminPassword_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.PasswordVerification.fromBuffer(value),
            ($1.PasswordVerification value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LastModified, $1.S3File>(
        'AllTables',
        allTables_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LastModified.fromBuffer(value),
        ($1.S3File value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SettingsData, $1.SettingsData>(
        'UploadSettings',
        uploadSettings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SettingsData.fromBuffer(value),
        ($1.SettingsData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SalesData, $1.SalesData>(
        'UploadSales',
        uploadSales_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SalesData.fromBuffer(value),
        ($1.SalesData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CashierData, $1.CashierData>(
        'UploadCashierData',
        uploadCashierData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CashierData.fromBuffer(value),
        ($1.CashierData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ReportData, $1.ReportData>(
        'UploadReports',
        uploadReports_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ReportData.fromBuffer(value),
        ($1.ReportData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.S3File>(
        'SalesAndReportTables',
        salesAndReportTables_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.S3File value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LastModified, $1.ItemData>(
        'ItemTables',
        itemTables_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LastModified.fromBuffer(value),
        ($1.ItemData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EntranceRegistrationData,
            $1.EntranceRegistrationData>(
        'EntranceRegistration',
        entranceRegistration_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.EntranceRegistrationData.fromBuffer(value),
        ($1.EntranceRegistrationData value) => value.writeToBuffer()));
  }

  $async.Future<$1.AppVerification> getNonce_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getNonce(call, await request);
  }

  $async.Future<$1.AppVerification> verifyApp_Pre(
      $grpc.ServiceCall call, $async.Future<$1.AppVerification> request) async {
    return verifyApp(call, await request);
  }

  $async.Future<$1.LoginDomain> getLoginDomains_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return getLoginDomains(call, await request);
  }

  $async.Future<$1.AppRegistration> registerApp_Pre(
      $grpc.ServiceCall call, $async.Future<$1.AppRegistration> request) async {
    return registerApp(call, await request);
  }

  $async.Future<$1.RegistrationForm> getRegistrationForm_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.RegistrationForm> request) async {
    return getRegistrationForm(call, await request);
  }

  $async.Future<$1.PasswordVerification> verifyAdminPassword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.PasswordVerification> request) async {
    return verifyAdminPassword(call, await request);
  }

  $async.Future<$1.S3File> allTables_Pre(
      $grpc.ServiceCall call, $async.Future<$1.LastModified> request) async {
    return allTables(call, await request);
  }

  $async.Future<$1.SettingsData> uploadSettings_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SettingsData> request) async {
    return uploadSettings(call, await request);
  }

  $async.Future<$1.SalesData> uploadSales_Pre(
      $grpc.ServiceCall call, $async.Future<$1.SalesData> request) async {
    return uploadSales(call, await request);
  }

  $async.Future<$1.CashierData> uploadCashierData_Pre(
      $grpc.ServiceCall call, $async.Future<$1.CashierData> request) async {
    return uploadCashierData(call, await request);
  }

  $async.Future<$1.ReportData> uploadReports_Pre(
      $grpc.ServiceCall call, $async.Future<$1.ReportData> request) async {
    return uploadReports(call, await request);
  }

  $async.Future<$1.S3File> salesAndReportTables_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return salesAndReportTables(call, await request);
  }

  $async.Future<$1.ItemData> itemTables_Pre(
      $grpc.ServiceCall call, $async.Future<$1.LastModified> request) async {
    return itemTables(call, await request);
  }

  $async.Future<$1.EntranceRegistrationData> entranceRegistration_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.EntranceRegistrationData> request) async {
    return entranceRegistration(call, await request);
  }

  $async.Future<$1.AppVerification> getNonce(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.AppVerification> verifyApp(
      $grpc.ServiceCall call, $1.AppVerification request);
  $async.Future<$1.LoginDomain> getLoginDomains(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.AppRegistration> registerApp(
      $grpc.ServiceCall call, $1.AppRegistration request);
  $async.Future<$1.RegistrationForm> getRegistrationForm(
      $grpc.ServiceCall call, $1.RegistrationForm request);
  $async.Future<$1.PasswordVerification> verifyAdminPassword(
      $grpc.ServiceCall call, $1.PasswordVerification request);
  $async.Future<$1.S3File> allTables(
      $grpc.ServiceCall call, $1.LastModified request);
  $async.Future<$1.SettingsData> uploadSettings(
      $grpc.ServiceCall call, $1.SettingsData request);
  $async.Future<$1.SalesData> uploadSales(
      $grpc.ServiceCall call, $1.SalesData request);
  $async.Future<$1.CashierData> uploadCashierData(
      $grpc.ServiceCall call, $1.CashierData request);
  $async.Future<$1.ReportData> uploadReports(
      $grpc.ServiceCall call, $1.ReportData request);
  $async.Future<$1.S3File> salesAndReportTables(
      $grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.ItemData> itemTables(
      $grpc.ServiceCall call, $1.LastModified request);
  $async.Future<$1.EntranceRegistrationData> entranceRegistration(
      $grpc.ServiceCall call, $1.EntranceRegistrationData request);
}

class ItemsServiceClient extends $grpc.Client {
  static final _$insertItemGroupCloud =
      $grpc.ClientMethod<$1.ItemGroup, $1.ItemGroup>(
          '/api.v1.ItemsService/InsertItemGroupCloud',
          ($1.ItemGroup value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.ItemGroup.fromBuffer(value));
  static final _$insertItemCloud = $grpc.ClientMethod<$1.Item, $1.Item>(
      '/api.v1.ItemsService/InsertItemCloud',
      ($1.Item value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Item.fromBuffer(value));

  ItemsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$1.ItemGroup> insertItemGroupCloud(
      $async.Stream<$1.ItemGroup> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$insertItemGroupCloud, request,
        options: options);
  }

  $grpc.ResponseStream<$1.Item> insertItemCloud($async.Stream<$1.Item> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$insertItemCloud, request, options: options);
  }
}

abstract class ItemsServiceBase extends $grpc.Service {
  $core.String get $name => 'api.v1.ItemsService';

  ItemsServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ItemGroup, $1.ItemGroup>(
        'InsertItemGroupCloud',
        insertItemGroupCloud,
        true,
        true,
        ($core.List<$core.int> value) => $1.ItemGroup.fromBuffer(value),
        ($1.ItemGroup value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Item, $1.Item>(
        'InsertItemCloud',
        insertItemCloud,
        true,
        true,
        ($core.List<$core.int> value) => $1.Item.fromBuffer(value),
        ($1.Item value) => value.writeToBuffer()));
  }

  $async.Stream<$1.ItemGroup> insertItemGroupCloud(
      $grpc.ServiceCall call, $async.Stream<$1.ItemGroup> request);
  $async.Stream<$1.Item> insertItemCloud(
      $grpc.ServiceCall call, $async.Stream<$1.Item> request);
}

class LogServiceClient extends $grpc.Client {
  static final _$uploadLogCloud =
      $grpc.ClientMethod<$1.LogMessage, $1.LogMessage>(
          '/api.v1.LogService/UploadLogCloud',
          ($1.LogMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.LogMessage.fromBuffer(value));
  static final _$uploadApprovalMasterCloud =
      $grpc.ClientMethod<$1.PaymentApprovalMaster, $1.PaymentApprovalMaster>(
          '/api.v1.LogService/UploadApprovalMasterCloud',
          ($1.PaymentApprovalMaster value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PaymentApprovalMaster.fromBuffer(value));
  static final _$uploadApprovalSrLogCloud =
      $grpc.ClientMethod<$1.PaymentApprovalSrLog, $1.PaymentApprovalSrLog>(
          '/api.v1.LogService/UploadApprovalSrLogCloud',
          ($1.PaymentApprovalSrLog value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PaymentApprovalSrLog.fromBuffer(value));

  LogServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$1.LogMessage> uploadLogCloud(
      $async.Stream<$1.LogMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$uploadLogCloud, request, options: options);
  }

  $grpc.ResponseStream<$1.PaymentApprovalMaster> uploadApprovalMasterCloud(
      $async.Stream<$1.PaymentApprovalMaster> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$uploadApprovalMasterCloud, request,
        options: options);
  }

  $grpc.ResponseStream<$1.PaymentApprovalSrLog> uploadApprovalSrLogCloud(
      $async.Stream<$1.PaymentApprovalSrLog> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$uploadApprovalSrLogCloud, request,
        options: options);
  }
}

abstract class LogServiceBase extends $grpc.Service {
  $core.String get $name => 'api.v1.LogService';

  LogServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.LogMessage, $1.LogMessage>(
        'UploadLogCloud',
        uploadLogCloud,
        true,
        true,
        ($core.List<$core.int> value) => $1.LogMessage.fromBuffer(value),
        ($1.LogMessage value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.PaymentApprovalMaster, $1.PaymentApprovalMaster>(
            'UploadApprovalMasterCloud',
            uploadApprovalMasterCloud,
            true,
            true,
            ($core.List<$core.int> value) =>
                $1.PaymentApprovalMaster.fromBuffer(value),
            ($1.PaymentApprovalMaster value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.PaymentApprovalSrLog, $1.PaymentApprovalSrLog>(
            'UploadApprovalSrLogCloud',
            uploadApprovalSrLogCloud,
            true,
            true,
            ($core.List<$core.int> value) =>
                $1.PaymentApprovalSrLog.fromBuffer(value),
            ($1.PaymentApprovalSrLog value) => value.writeToBuffer()));
  }

  $async.Stream<$1.LogMessage> uploadLogCloud(
      $grpc.ServiceCall call, $async.Stream<$1.LogMessage> request);
  $async.Stream<$1.PaymentApprovalMaster> uploadApprovalMasterCloud(
      $grpc.ServiceCall call, $async.Stream<$1.PaymentApprovalMaster> request);
  $async.Stream<$1.PaymentApprovalSrLog> uploadApprovalSrLogCloud(
      $grpc.ServiceCall call, $async.Stream<$1.PaymentApprovalSrLog> request);
}

class LicenseServiceClient extends $grpc.Client {
  static final _$issueLicense =
      $grpc.ClientMethod<$1.IssueLicenseRequest, $1.IssueLicenseResponse>(
          '/api.v1.LicenseService/IssueLicense',
          ($1.IssueLicenseRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.IssueLicenseResponse.fromBuffer(value));
  static final _$requestPermission = $grpc.ClientMethod<
          $1.RequestPermissionRequest, $1.RequestPermissionResponse>(
      '/api.v1.LicenseService/RequestPermission',
      ($1.RequestPermissionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.RequestPermissionResponse.fromBuffer(value));
  static final _$confirmPermission = $grpc.ClientMethod<
          $1.ConfirmPermissionRequest, $1.ConfirmPermissionResponse>(
      '/api.v1.LicenseService/ConfirmPermission',
      ($1.ConfirmPermissionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ConfirmPermissionResponse.fromBuffer(value));
  static final _$verifyLicense =
      $grpc.ClientMethod<$1.VerifyLicenseRequest, $1.VerifyLicenseResponse>(
          '/api.v1.LicenseService/VerifyLicense',
          ($1.VerifyLicenseRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.VerifyLicenseResponse.fromBuffer(value));
  static final _$getLicenseList =
      $grpc.ClientMethod<$1.GetLicenseListRequest, $1.GetLicenseListResponse>(
          '/api.v1.LicenseService/GetLicenseList',
          ($1.GetLicenseListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetLicenseListResponse.fromBuffer(value));
  static final _$getLicenseDetail = $grpc.ClientMethod<
          $1.GetLicenseDetailRequest, $1.GetLicenseDetailResponse>(
      '/api.v1.LicenseService/GetLicenseDetail',
      ($1.GetLicenseDetailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.GetLicenseDetailResponse.fromBuffer(value));
  static final _$updateLicenseInfo = $grpc.ClientMethod<
          $1.UpdateLicenseInfoRequest, $1.UpdateLicenseInfoResponse>(
      '/api.v1.LicenseService/UpdateLicenseInfo',
      ($1.UpdateLicenseInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.UpdateLicenseInfoResponse.fromBuffer(value));

  LicenseServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.IssueLicenseResponse> issueLicense(
      $1.IssueLicenseRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$issueLicense, request, options: options);
  }

  $grpc.ResponseFuture<$1.RequestPermissionResponse> requestPermission(
      $1.RequestPermissionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestPermission, request, options: options);
  }

  $grpc.ResponseFuture<$1.ConfirmPermissionResponse> confirmPermission(
      $1.ConfirmPermissionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$confirmPermission, request, options: options);
  }

  $grpc.ResponseFuture<$1.VerifyLicenseResponse> verifyLicense(
      $1.VerifyLicenseRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyLicense, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetLicenseListResponse> getLicenseList(
      $1.GetLicenseListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLicenseList, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetLicenseDetailResponse> getLicenseDetail(
      $1.GetLicenseDetailRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLicenseDetail, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateLicenseInfoResponse> updateLicenseInfo(
      $1.UpdateLicenseInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateLicenseInfo, request, options: options);
  }
}

abstract class LicenseServiceBase extends $grpc.Service {
  $core.String get $name => 'api.v1.LicenseService';

  LicenseServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.IssueLicenseRequest, $1.IssueLicenseResponse>(
            'IssueLicense',
            issueLicense_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.IssueLicenseRequest.fromBuffer(value),
            ($1.IssueLicenseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RequestPermissionRequest,
            $1.RequestPermissionResponse>(
        'RequestPermission',
        requestPermission_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.RequestPermissionRequest.fromBuffer(value),
        ($1.RequestPermissionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ConfirmPermissionRequest,
            $1.ConfirmPermissionResponse>(
        'ConfirmPermission',
        confirmPermission_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ConfirmPermissionRequest.fromBuffer(value),
        ($1.ConfirmPermissionResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.VerifyLicenseRequest, $1.VerifyLicenseResponse>(
            'VerifyLicense',
            verifyLicense_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.VerifyLicenseRequest.fromBuffer(value),
            ($1.VerifyLicenseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetLicenseListRequest,
            $1.GetLicenseListResponse>(
        'GetLicenseList',
        getLicenseList_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetLicenseListRequest.fromBuffer(value),
        ($1.GetLicenseListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetLicenseDetailRequest,
            $1.GetLicenseDetailResponse>(
        'GetLicenseDetail',
        getLicenseDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetLicenseDetailRequest.fromBuffer(value),
        ($1.GetLicenseDetailResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateLicenseInfoRequest,
            $1.UpdateLicenseInfoResponse>(
        'UpdateLicenseInfo',
        updateLicenseInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdateLicenseInfoRequest.fromBuffer(value),
        ($1.UpdateLicenseInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.IssueLicenseResponse> issueLicense_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.IssueLicenseRequest> request) async {
    return issueLicense(call, await request);
  }

  $async.Future<$1.RequestPermissionResponse> requestPermission_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.RequestPermissionRequest> request) async {
    return requestPermission(call, await request);
  }

  $async.Future<$1.ConfirmPermissionResponse> confirmPermission_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ConfirmPermissionRequest> request) async {
    return confirmPermission(call, await request);
  }

  $async.Future<$1.VerifyLicenseResponse> verifyLicense_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.VerifyLicenseRequest> request) async {
    return verifyLicense(call, await request);
  }

  $async.Future<$1.GetLicenseListResponse> getLicenseList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetLicenseListRequest> request) async {
    return getLicenseList(call, await request);
  }

  $async.Future<$1.GetLicenseDetailResponse> getLicenseDetail_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.GetLicenseDetailRequest> request) async {
    return getLicenseDetail(call, await request);
  }

  $async.Future<$1.UpdateLicenseInfoResponse> updateLicenseInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.UpdateLicenseInfoRequest> request) async {
    return updateLicenseInfo(call, await request);
  }

  $async.Future<$1.IssueLicenseResponse> issueLicense(
      $grpc.ServiceCall call, $1.IssueLicenseRequest request);
  $async.Future<$1.RequestPermissionResponse> requestPermission(
      $grpc.ServiceCall call, $1.RequestPermissionRequest request);
  $async.Future<$1.ConfirmPermissionResponse> confirmPermission(
      $grpc.ServiceCall call, $1.ConfirmPermissionRequest request);
  $async.Future<$1.VerifyLicenseResponse> verifyLicense(
      $grpc.ServiceCall call, $1.VerifyLicenseRequest request);
  $async.Future<$1.GetLicenseListResponse> getLicenseList(
      $grpc.ServiceCall call, $1.GetLicenseListRequest request);
  $async.Future<$1.GetLicenseDetailResponse> getLicenseDetail(
      $grpc.ServiceCall call, $1.GetLicenseDetailRequest request);
  $async.Future<$1.UpdateLicenseInfoResponse> updateLicenseInfo(
      $grpc.ServiceCall call, $1.UpdateLicenseInfoRequest request);
}

class OrderServiceClient extends $grpc.Client {
  static final _$holdTableLock = $grpc.ClientMethod<$1.TableLock, $1.TableLock>(
      '/api.v1.OrderService/HoldTableLock',
      ($1.TableLock value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.TableLock.fromBuffer(value));
  static final _$releaseTableLock =
      $grpc.ClientMethod<$1.TableLock, $1.TableLock>(
          '/api.v1.OrderService/ReleaseTableLock',
          ($1.TableLock value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.TableLock.fromBuffer(value));
  static final _$putOrder = $grpc.ClientMethod<$1.OrderData, $1.OrderData>(
      '/api.v1.OrderService/PutOrder',
      ($1.OrderData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.OrderData.fromBuffer(value));
  static final _$deleteOrder = $grpc.ClientMethod<$1.OrderData, $1.OrderData>(
      '/api.v1.OrderService/DeleteOrder',
      ($1.OrderData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.OrderData.fromBuffer(value));
  static final _$getOrders = $grpc.ClientMethod<$1.OrderData, $1.OrderData>(
      '/api.v1.OrderService/GetOrders',
      ($1.OrderData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.OrderData.fromBuffer(value));
  static final _$listenOrder = $grpc.ClientMethod<$1.OrderData, $1.OrderData>(
      '/api.v1.OrderService/ListenOrder',
      ($1.OrderData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.OrderData.fromBuffer(value));

  OrderServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.TableLock> holdTableLock($1.TableLock request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$holdTableLock, request, options: options);
  }

  $grpc.ResponseFuture<$1.TableLock> releaseTableLock($1.TableLock request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$releaseTableLock, request, options: options);
  }

  $grpc.ResponseFuture<$1.OrderData> putOrder($1.OrderData request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$putOrder, request, options: options);
  }

  $grpc.ResponseFuture<$1.OrderData> deleteOrder($1.OrderData request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteOrder, request, options: options);
  }

  $grpc.ResponseFuture<$1.OrderData> getOrders($1.OrderData request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOrders, request, options: options);
  }

  $grpc.ResponseStream<$1.OrderData> listenOrder(
      $async.Stream<$1.OrderData> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$listenOrder, request, options: options);
  }
}

abstract class OrderServiceBase extends $grpc.Service {
  $core.String get $name => 'api.v1.OrderService';

  OrderServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.TableLock, $1.TableLock>(
        'HoldTableLock',
        holdTableLock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.TableLock.fromBuffer(value),
        ($1.TableLock value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.TableLock, $1.TableLock>(
        'ReleaseTableLock',
        releaseTableLock_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.TableLock.fromBuffer(value),
        ($1.TableLock value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.OrderData, $1.OrderData>(
        'PutOrder',
        putOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.OrderData.fromBuffer(value),
        ($1.OrderData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.OrderData, $1.OrderData>(
        'DeleteOrder',
        deleteOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.OrderData.fromBuffer(value),
        ($1.OrderData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.OrderData, $1.OrderData>(
        'GetOrders',
        getOrders_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.OrderData.fromBuffer(value),
        ($1.OrderData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.OrderData, $1.OrderData>(
        'ListenOrder',
        listenOrder,
        true,
        true,
        ($core.List<$core.int> value) => $1.OrderData.fromBuffer(value),
        ($1.OrderData value) => value.writeToBuffer()));
  }

  $async.Future<$1.TableLock> holdTableLock_Pre(
      $grpc.ServiceCall call, $async.Future<$1.TableLock> request) async {
    return holdTableLock(call, await request);
  }

  $async.Future<$1.TableLock> releaseTableLock_Pre(
      $grpc.ServiceCall call, $async.Future<$1.TableLock> request) async {
    return releaseTableLock(call, await request);
  }

  $async.Future<$1.OrderData> putOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$1.OrderData> request) async {
    return putOrder(call, await request);
  }

  $async.Future<$1.OrderData> deleteOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$1.OrderData> request) async {
    return deleteOrder(call, await request);
  }

  $async.Future<$1.OrderData> getOrders_Pre(
      $grpc.ServiceCall call, $async.Future<$1.OrderData> request) async {
    return getOrders(call, await request);
  }

  $async.Future<$1.TableLock> holdTableLock(
      $grpc.ServiceCall call, $1.TableLock request);
  $async.Future<$1.TableLock> releaseTableLock(
      $grpc.ServiceCall call, $1.TableLock request);
  $async.Future<$1.OrderData> putOrder(
      $grpc.ServiceCall call, $1.OrderData request);
  $async.Future<$1.OrderData> deleteOrder(
      $grpc.ServiceCall call, $1.OrderData request);
  $async.Future<$1.OrderData> getOrders(
      $grpc.ServiceCall call, $1.OrderData request);
  $async.Stream<$1.OrderData> listenOrder(
      $grpc.ServiceCall call, $async.Stream<$1.OrderData> request);
}

class InventoryServiceClient extends $grpc.Client {
  static final _$balanceItems =
      $grpc.ClientMethod<$1.BalanceItemRequest, $1.BalanceItemResponse>(
          '/api.v1.InventoryService/BalanceItems',
          ($1.BalanceItemRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.BalanceItemResponse.fromBuffer(value));
  static final _$listAcceptanceItems = $grpc.ClientMethod<
          $1.ListAcceptanceItemsRequest, $1.ListAcceptanceItemsResponse>(
      '/api.v1.InventoryService/ListAcceptanceItems',
      ($1.ListAcceptanceItemsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ListAcceptanceItemsResponse.fromBuffer(value));
  static final _$addAcceptanceItem = $grpc.ClientMethod<
          $1.AddAcceptanceItemRequest, $1.AddAcceptanceItemResponse>(
      '/api.v1.InventoryService/AddAcceptanceItem',
      ($1.AddAcceptanceItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.AddAcceptanceItemResponse.fromBuffer(value));
  static final _$updateAcceptanceItem = $grpc.ClientMethod<
          $1.UpdateAcceptanceItemRequest, $1.UpdateAcceptanceItemResponse>(
      '/api.v1.InventoryService/UpdateAcceptanceItem',
      ($1.UpdateAcceptanceItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.UpdateAcceptanceItemResponse.fromBuffer(value));
  static final _$deleteAcceptanceItem = $grpc.ClientMethod<
          $1.DeleteAcceptanceItemRequest, $1.DeleteAcceptanceItemResponse>(
      '/api.v1.InventoryService/DeleteAcceptanceItem',
      ($1.DeleteAcceptanceItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.DeleteAcceptanceItemResponse.fromBuffer(value));
  static final _$detailAcceptanceItem = $grpc.ClientMethod<
          $1.DetailAcceptanceItemRequest, $1.DetailAcceptanceItemResponse>(
      '/api.v1.InventoryService/DetailAcceptanceItem',
      ($1.DetailAcceptanceItemRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.DetailAcceptanceItemResponse.fromBuffer(value));
  static final _$listSupplier =
      $grpc.ClientMethod<$1.ListSupplierRequest, $1.ListSupplierResponse>(
          '/api.v1.InventoryService/ListSupplier',
          ($1.ListSupplierRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListSupplierResponse.fromBuffer(value));
  static final _$addSupplier =
      $grpc.ClientMethod<$1.AddSupplierRequest, $1.AddSupplierResponse>(
          '/api.v1.InventoryService/AddSupplier',
          ($1.AddSupplierRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AddSupplierResponse.fromBuffer(value));
  static final _$updateSupplier =
      $grpc.ClientMethod<$1.UpdateSupplierRequest, $1.UpdateSupplierResponse>(
          '/api.v1.InventoryService/UpdateSupplier',
          ($1.UpdateSupplierRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UpdateSupplierResponse.fromBuffer(value));
  static final _$deleteSupplier =
      $grpc.ClientMethod<$1.DeleteSupplierRequest, $1.DeleteSupplierResponse>(
          '/api.v1.InventoryService/DeleteSupplier',
          ($1.DeleteSupplierRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteSupplierResponse.fromBuffer(value));
  static final _$listRevisionItems = $grpc.ClientMethod<
          $1.ListRevisionItemsRequest, $1.ListRevisionItemsResponse>(
      '/api.v1.InventoryService/ListRevisionItems',
      ($1.ListRevisionItemsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ListRevisionItemsResponse.fromBuffer(value));
  static final _$addRevisionItems = $grpc.ClientMethod<
          $1.AddRevisionItemsRequest, $1.AddRevisionItemsResponse>(
      '/api.v1.InventoryService/AddRevisionItems',
      ($1.AddRevisionItemsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.AddRevisionItemsResponse.fromBuffer(value));
  static final _$detailRevisionItems = $grpc.ClientMethod<
          $1.DetailRevisionItemsRequest, $1.DetailRevisionItemsResponse>(
      '/api.v1.InventoryService/DetailRevisionItems',
      ($1.DetailRevisionItemsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.DetailRevisionItemsResponse.fromBuffer(value));

  InventoryServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.BalanceItemResponse> balanceItems(
      $1.BalanceItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$balanceItems, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListAcceptanceItemsResponse> listAcceptanceItems(
      $1.ListAcceptanceItemsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAcceptanceItems, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddAcceptanceItemResponse> addAcceptanceItem(
      $1.AddAcceptanceItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addAcceptanceItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateAcceptanceItemResponse> updateAcceptanceItem(
      $1.UpdateAcceptanceItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAcceptanceItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteAcceptanceItemResponse> deleteAcceptanceItem(
      $1.DeleteAcceptanceItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAcceptanceItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.DetailAcceptanceItemResponse> detailAcceptanceItem(
      $1.DetailAcceptanceItemRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$detailAcceptanceItem, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListSupplierResponse> listSupplier(
      $1.ListSupplierRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSupplier, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddSupplierResponse> addSupplier(
      $1.AddSupplierRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSupplier, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateSupplierResponse> updateSupplier(
      $1.UpdateSupplierRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSupplier, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteSupplierResponse> deleteSupplier(
      $1.DeleteSupplierRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSupplier, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListRevisionItemsResponse> listRevisionItems(
      $1.ListRevisionItemsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRevisionItems, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddRevisionItemsResponse> addRevisionItems(
      $1.AddRevisionItemsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRevisionItems, request, options: options);
  }

  $grpc.ResponseFuture<$1.DetailRevisionItemsResponse> detailRevisionItems(
      $1.DetailRevisionItemsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$detailRevisionItems, request, options: options);
  }
}

abstract class InventoryServiceBase extends $grpc.Service {
  $core.String get $name => 'api.v1.InventoryService';

  InventoryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.BalanceItemRequest, $1.BalanceItemResponse>(
            'BalanceItems',
            balanceItems_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.BalanceItemRequest.fromBuffer(value),
            ($1.BalanceItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListAcceptanceItemsRequest,
            $1.ListAcceptanceItemsResponse>(
        'ListAcceptanceItems',
        listAcceptanceItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListAcceptanceItemsRequest.fromBuffer(value),
        ($1.ListAcceptanceItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddAcceptanceItemRequest,
            $1.AddAcceptanceItemResponse>(
        'AddAcceptanceItem',
        addAcceptanceItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AddAcceptanceItemRequest.fromBuffer(value),
        ($1.AddAcceptanceItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateAcceptanceItemRequest,
            $1.UpdateAcceptanceItemResponse>(
        'UpdateAcceptanceItem',
        updateAcceptanceItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdateAcceptanceItemRequest.fromBuffer(value),
        ($1.UpdateAcceptanceItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteAcceptanceItemRequest,
            $1.DeleteAcceptanceItemResponse>(
        'DeleteAcceptanceItem',
        deleteAcceptanceItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DeleteAcceptanceItemRequest.fromBuffer(value),
        ($1.DeleteAcceptanceItemResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DetailAcceptanceItemRequest,
            $1.DetailAcceptanceItemResponse>(
        'DetailAcceptanceItem',
        detailAcceptanceItem_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DetailAcceptanceItemRequest.fromBuffer(value),
        ($1.DetailAcceptanceItemResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.ListSupplierRequest, $1.ListSupplierResponse>(
            'ListSupplier',
            listSupplier_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.ListSupplierRequest.fromBuffer(value),
            ($1.ListSupplierResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.AddSupplierRequest, $1.AddSupplierResponse>(
            'AddSupplier',
            addSupplier_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.AddSupplierRequest.fromBuffer(value),
            ($1.AddSupplierResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateSupplierRequest,
            $1.UpdateSupplierResponse>(
        'UpdateSupplier',
        updateSupplier_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdateSupplierRequest.fromBuffer(value),
        ($1.UpdateSupplierResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteSupplierRequest,
            $1.DeleteSupplierResponse>(
        'DeleteSupplier',
        deleteSupplier_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DeleteSupplierRequest.fromBuffer(value),
        ($1.DeleteSupplierResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListRevisionItemsRequest,
            $1.ListRevisionItemsResponse>(
        'ListRevisionItems',
        listRevisionItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListRevisionItemsRequest.fromBuffer(value),
        ($1.ListRevisionItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddRevisionItemsRequest,
            $1.AddRevisionItemsResponse>(
        'AddRevisionItems',
        addRevisionItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.AddRevisionItemsRequest.fromBuffer(value),
        ($1.AddRevisionItemsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DetailRevisionItemsRequest,
            $1.DetailRevisionItemsResponse>(
        'DetailRevisionItems',
        detailRevisionItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DetailRevisionItemsRequest.fromBuffer(value),
        ($1.DetailRevisionItemsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.BalanceItemResponse> balanceItems_Pre($grpc.ServiceCall call,
      $async.Future<$1.BalanceItemRequest> request) async {
    return balanceItems(call, await request);
  }

  $async.Future<$1.ListAcceptanceItemsResponse> listAcceptanceItems_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ListAcceptanceItemsRequest> request) async {
    return listAcceptanceItems(call, await request);
  }

  $async.Future<$1.AddAcceptanceItemResponse> addAcceptanceItem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AddAcceptanceItemRequest> request) async {
    return addAcceptanceItem(call, await request);
  }

  $async.Future<$1.UpdateAcceptanceItemResponse> updateAcceptanceItem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.UpdateAcceptanceItemRequest> request) async {
    return updateAcceptanceItem(call, await request);
  }

  $async.Future<$1.DeleteAcceptanceItemResponse> deleteAcceptanceItem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DeleteAcceptanceItemRequest> request) async {
    return deleteAcceptanceItem(call, await request);
  }

  $async.Future<$1.DetailAcceptanceItemResponse> detailAcceptanceItem_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DetailAcceptanceItemRequest> request) async {
    return detailAcceptanceItem(call, await request);
  }

  $async.Future<$1.ListSupplierResponse> listSupplier_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ListSupplierRequest> request) async {
    return listSupplier(call, await request);
  }

  $async.Future<$1.AddSupplierResponse> addSupplier_Pre($grpc.ServiceCall call,
      $async.Future<$1.AddSupplierRequest> request) async {
    return addSupplier(call, await request);
  }

  $async.Future<$1.UpdateSupplierResponse> updateSupplier_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.UpdateSupplierRequest> request) async {
    return updateSupplier(call, await request);
  }

  $async.Future<$1.DeleteSupplierResponse> deleteSupplier_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DeleteSupplierRequest> request) async {
    return deleteSupplier(call, await request);
  }

  $async.Future<$1.ListRevisionItemsResponse> listRevisionItems_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ListRevisionItemsRequest> request) async {
    return listRevisionItems(call, await request);
  }

  $async.Future<$1.AddRevisionItemsResponse> addRevisionItems_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AddRevisionItemsRequest> request) async {
    return addRevisionItems(call, await request);
  }

  $async.Future<$1.DetailRevisionItemsResponse> detailRevisionItems_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.DetailRevisionItemsRequest> request) async {
    return detailRevisionItems(call, await request);
  }

  $async.Future<$1.BalanceItemResponse> balanceItems(
      $grpc.ServiceCall call, $1.BalanceItemRequest request);
  $async.Future<$1.ListAcceptanceItemsResponse> listAcceptanceItems(
      $grpc.ServiceCall call, $1.ListAcceptanceItemsRequest request);
  $async.Future<$1.AddAcceptanceItemResponse> addAcceptanceItem(
      $grpc.ServiceCall call, $1.AddAcceptanceItemRequest request);
  $async.Future<$1.UpdateAcceptanceItemResponse> updateAcceptanceItem(
      $grpc.ServiceCall call, $1.UpdateAcceptanceItemRequest request);
  $async.Future<$1.DeleteAcceptanceItemResponse> deleteAcceptanceItem(
      $grpc.ServiceCall call, $1.DeleteAcceptanceItemRequest request);
  $async.Future<$1.DetailAcceptanceItemResponse> detailAcceptanceItem(
      $grpc.ServiceCall call, $1.DetailAcceptanceItemRequest request);
  $async.Future<$1.ListSupplierResponse> listSupplier(
      $grpc.ServiceCall call, $1.ListSupplierRequest request);
  $async.Future<$1.AddSupplierResponse> addSupplier(
      $grpc.ServiceCall call, $1.AddSupplierRequest request);
  $async.Future<$1.UpdateSupplierResponse> updateSupplier(
      $grpc.ServiceCall call, $1.UpdateSupplierRequest request);
  $async.Future<$1.DeleteSupplierResponse> deleteSupplier(
      $grpc.ServiceCall call, $1.DeleteSupplierRequest request);
  $async.Future<$1.ListRevisionItemsResponse> listRevisionItems(
      $grpc.ServiceCall call, $1.ListRevisionItemsRequest request);
  $async.Future<$1.AddRevisionItemsResponse> addRevisionItems(
      $grpc.ServiceCall call, $1.AddRevisionItemsRequest request);
  $async.Future<$1.DetailRevisionItemsResponse> detailRevisionItems(
      $grpc.ServiceCall call, $1.DetailRevisionItemsRequest request);
}
