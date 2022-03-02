// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_get_registration_info_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleSyncGetRegistrationInfoRes _$SimpleSyncGetRegistrationInfoResFromJson(
        Map json) =>
    SimpleSyncGetRegistrationInfoRes(
      serviceTerms: json['serviceTerms'] as String,
      softwareTerms: json['softwareTerms'] as String,
      personalInfoAgreement: json['personalInfoAgreement'] as String,
      marketingInfoAgreement: json['marketingInfoAgreement'] as String,
      storeTerminals: (json['storeTerminals'] as List<dynamic>)
          .map((e) =>
              StoreTerminal.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$SimpleSyncGetRegistrationInfoResToJson(
        SimpleSyncGetRegistrationInfoRes instance) =>
    <String, dynamic>{
      'storeTerminals': instance.storeTerminals,
      'softwareTerms': instance.softwareTerms,
      'serviceTerms': instance.serviceTerms,
      'personalInfoAgreement': instance.personalInfoAgreement,
      'marketingInfoAgreement': instance.marketingInfoAgreement,
    };
