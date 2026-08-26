// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseModelImpl _$$ProfileResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      approvalStatus: json['approvalStatus'] as String?,
      data: json['data'] == null
          ? null
          : ProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileResponseModelImplToJson(
        _$ProfileResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'approvalStatus': instance.approvalStatus,
      'data': instance.data,
    };

_$SignInResponseModelImpl _$$SignInResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SignInResponseDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignInResponseModelImplToJson(
        _$SignInResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$SignInResponseDataModelImpl _$$SignInResponseDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInResponseDataModelImpl(
      token: json['token'] as String?,
      page: json['page'] as String?,
      approvalStatus: json['approvalStatus'] as String?,
      details: json['details'] == null
          ? null
          : ProfileData.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignInResponseDataModelImplToJson(
        _$SignInResponseDataModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'page': instance.page,
      'approvalStatus': instance.approvalStatus,
      'details': instance.details,
    };

_$ProfileDataImpl _$$ProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataImpl(
      id: json['_id'] as String?,
      outletType: json['outletType'] as String?,
      approvalStatus: json['approvalStatus'] as String?,
      reason: json['reason'] as String?,
      mobile: json['mobile'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      charges: json['charges'] == null
          ? null
          : ChargesModel.fromJson(json['charges'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      tables: (json['tables'] as List<dynamic>?)
          ?.map((e) => DesignationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ProfileDataImplToJson(_$ProfileDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'outletType': instance.outletType,
      'approvalStatus': instance.approvalStatus,
      'reason': instance.reason,
      'mobile': instance.mobile,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'charges': instance.charges,
      'location': instance.location,
      'tables': instance.tables,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$LocationModelImpl _$$LocationModelImplFromJson(Map<String, dynamic> json) =>
    _$LocationModelImpl(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      landMark: json['landMark'] as String?,
      pinCode: json['pinCode'] as int?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      coordinates: json['coordinates'] as List<dynamic>?,
      id: json['_id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$LocationModelImplToJson(_$LocationModelImpl instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'state': instance.state,
      'landMark': instance.landMark,
      'pinCode': instance.pinCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'coordinates': instance.coordinates,
      '_id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$ValidateVersionResponseModelImpl _$$ValidateVersionResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateVersionResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ValidateDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ValidateVersionResponseModelImplToJson(
        _$ValidateVersionResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ValidateDataModelImpl _$$ValidateDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidateDataModelImpl(
      validVersion: json['validVersion'] as bool?,
      userBlocked: json['userBlocked'] as bool?,
      page: json['page'] as String?,
      userData: json['userData'] == null
          ? null
          : ProfileData.fromJson(json['userData'] as Map<String, dynamic>),
      banners:
          (json['banners'] as List<dynamic>?)?.map((e) => e as String).toList(),
      outletTypes: (json['outletTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ValidateDataModelImplToJson(
        _$ValidateDataModelImpl instance) =>
    <String, dynamic>{
      'validVersion': instance.validVersion,
      'userBlocked': instance.userBlocked,
      'page': instance.page,
      'userData': instance.userData,
      'banners': instance.banners,
      'outletTypes': instance.outletTypes,
    };

_$DesignationModelImpl _$$DesignationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DesignationModelImpl(
      id: json['_id'] as String?,
      imageUrl: json['imageUrl'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$DesignationModelImplToJson(
        _$DesignationModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'description': instance.description,
    };

_$DesignationResponseModelImpl _$$DesignationResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DesignationResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DesignationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DesignationResponseModelImplToJson(
        _$DesignationResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$ChargesModelImpl _$$ChargesModelImplFromJson(Map<String, dynamic> json) =>
    _$ChargesModelImpl(
      perHour: json['perHour'] as int?,
    );

Map<String, dynamic> _$$ChargesModelImplToJson(_$ChargesModelImpl instance) =>
    <String, dynamic>{
      'perHour': instance.perHour,
    };
