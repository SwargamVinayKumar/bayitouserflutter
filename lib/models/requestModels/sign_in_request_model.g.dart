// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInRequestModelImpl _$$SignInRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInRequestModelImpl(
      key: json['key'] as String?,
      password: json['password'] as String?,
      version: json['version'] as String?,
      deviceDetails: json['deviceDetails'],
    );

Map<String, dynamic> _$$SignInRequestModelImplToJson(
        _$SignInRequestModelImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'password': instance.password,
      'version': instance.version,
      'deviceDetails': instance.deviceDetails,
    };
