// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersListResponseModelImpl _$$UsersListResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UsersListResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UsersListResponseModelImplToJson(
        _$UsersListResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['_id'] as String?,
      profilePic: json['profilePic'] as String?,
      designations: (json['designations'] as List<dynamic>?)
          ?.map((e) => DesignationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: json['location'] == null
          ? null
          : UserLocationModel.fromJson(
              json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'profilePic': instance.profilePic,
      'designations': instance.designations,
      'location': instance.location,
    };

_$DesignationModelImpl _$$DesignationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DesignationModelImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DesignationModelImplToJson(
        _$DesignationModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$UserLocationModelImpl _$$UserLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLocationModelImpl(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
    );

Map<String, dynamic> _$$UserLocationModelImplToJson(
        _$UserLocationModelImpl instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
    };
