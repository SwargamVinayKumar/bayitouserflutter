// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidateVersionRequestModelImpl _$$ValidateVersionRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateVersionRequestModelImpl(
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$ValidateVersionRequestModelImplToJson(
        _$ValidateVersionRequestModelImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
    };

_$RegisterUserRequestModelImpl _$$RegisterUserRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUserRequestModelImpl(
      designations: (json['designations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      charges: json['charges'] == null
          ? null
          : RegisterChargesRequestModel.fromJson(
              json['charges'] as Map<String, dynamic>),
      name: json['name'] as String?,
      dob: json['dob'] as String?,
      gender: json['gender'] as String?,
      location: json['location'] == null
          ? null
          : RegisterLocationRequestModel.fromJson(
              json['location'] as Map<String, dynamic>),
      referralCode: json['referralCode'] as String?,
    );

Map<String, dynamic> _$$RegisterUserRequestModelImplToJson(
        _$RegisterUserRequestModelImpl instance) =>
    <String, dynamic>{
      'designations': instance.designations,
      'charges': instance.charges,
      'name': instance.name,
      'dob': instance.dob,
      'gender': instance.gender,
      'location': instance.location,
      'referralCode': instance.referralCode,
    };

_$RegisterChargesRequestModelImpl _$$RegisterChargesRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterChargesRequestModelImpl(
      perHour: json['perHour'] as int?,
    );

Map<String, dynamic> _$$RegisterChargesRequestModelImplToJson(
        _$RegisterChargesRequestModelImpl instance) =>
    <String, dynamic>{
      'perHour': instance.perHour,
    };

_$RegisterLocationRequestModelImpl _$$RegisterLocationRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterLocationRequestModelImpl(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      landMark: json['landMark'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      pinCode: json['pinCode'] as int?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RegisterLocationRequestModelImplToJson(
        _$RegisterLocationRequestModelImpl instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'landMark': instance.landMark,
      'city': instance.city,
      'state': instance.state,
      'pinCode': instance.pinCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
