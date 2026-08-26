// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestModelImpl _$$SignUpRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpRequestModelImpl(
      mobile: json['mobile'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
      profilePic: json['profilePic'] as String?,
      otp: json['otp'] as int?,
      designations: (json['designations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      businessLicence: json['businessLicence'] == null
          ? null
          : ChargesModel.fromJson(
              json['businessLicence'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LocationRequestModel.fromJson(
              json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignUpRequestModelImplToJson(
        _$SignUpRequestModelImpl instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'profilePic': instance.profilePic,
      'otp': instance.otp,
      'designations': instance.designations,
      'businessLicence': instance.businessLicence,
      'location': instance.location,
    };

_$LocationRequestModelImpl _$$LocationRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationRequestModelImpl(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      landMark: json['landMark'] as String?,
      pinCode: json['pinCode'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$LocationRequestModelImplToJson(
        _$LocationRequestModelImpl instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'landMark': instance.landMark,
      'pinCode': instance.pinCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
