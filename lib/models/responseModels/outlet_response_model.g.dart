// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchOutletsResponseImpl _$$FetchOutletsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchOutletsResponseImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : FetchOutletsDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FetchOutletsResponseImplToJson(
        _$FetchOutletsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchOutletsDataModelImpl _$$FetchOutletsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchOutletsDataModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OutletModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchOutletsDataModelImplToJson(
        _$FetchOutletsDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$FetchOutletDetailsModelImpl _$$FetchOutletDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchOutletDetailsModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OutletModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FetchOutletDetailsModelImplToJson(
        _$FetchOutletDetailsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$OutletModelImpl _$$OutletModelImplFromJson(Map<String, dynamic> json) =>
    _$OutletModelImpl(
      id: json['_id'] as String?,
      outletType: json['outletType'] as String?,
      mobile: json['mobile'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      businessLogo: json['businessLogo'] as String?,
      businessLicence: json['businessLicence'] as String?,
      businessName: json['businessName'] as String?,
      aboutBusiness: json['aboutBusiness'] as String?,
      gstIn: json['gstIn'] as String?,
      fssaiId: json['fssaiId'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OutletModelImplToJson(_$OutletModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'outletType': instance.outletType,
      'mobile': instance.mobile,
      'name': instance.name,
      'email': instance.email,
      'businessLogo': instance.businessLogo,
      'businessLicence': instance.businessLicence,
      'businessName': instance.businessName,
      'aboutBusiness': instance.aboutBusiness,
      'gstIn': instance.gstIn,
      'fssaiId': instance.fssaiId,
      'location': instance.location,
    };
