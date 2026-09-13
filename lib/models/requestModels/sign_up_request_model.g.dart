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
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
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
