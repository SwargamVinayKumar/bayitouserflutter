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
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OutletModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchOutletsResponseImplToJson(
        _$FetchOutletsResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$OutletModelImpl _$$OutletModelImplFromJson(Map<String, dynamic> json) =>
    _$OutletModelImpl(
      id: json['_id'] as String?,
      outletType: json['outletType'] as String?,
      approvalStatus: json['approvalStatus'] as String?,
      reason: json['reason'] as String?,
      profilePic: json['profilePic'] as String?,
      mobile: json['mobile'] as int?,
      otp: json['otp'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      tables: (json['tables'] as List<dynamic>?)
          ?.map((e) => TableModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      blocked: json['blocked'] as bool?,
      version: json['version'] as String?,
      daySlots: (json['daySlots'] as List<dynamic>?)
          ?.map((e) => DaySlot.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      aboutBusiness: json['aboutBusiness'] as String?,
      businessLicence: json['businessLicence'] as String?,
      businessLogo: json['businessLogo'] as String?,
      businessName: json['businessName'] as String?,
      fssaiId: json['fssaiId'] as String?,
      gstIn: json['gstIn'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      deviceDetails: json['deviceDetails'] == null
          ? null
          : DeviceDetails.fromJson(
              json['deviceDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OutletModelImplToJson(_$OutletModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'outletType': instance.outletType,
      'approvalStatus': instance.approvalStatus,
      'reason': instance.reason,
      'profilePic': instance.profilePic,
      'mobile': instance.mobile,
      'otp': instance.otp,
      'name': instance.name,
      'email': instance.email,
      'images': instance.images,
      'tables': instance.tables,
      'blocked': instance.blocked,
      'version': instance.version,
      'daySlots': instance.daySlots,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'aboutBusiness': instance.aboutBusiness,
      'businessLicence': instance.businessLicence,
      'businessLogo': instance.businessLogo,
      'businessName': instance.businessName,
      'fssaiId': instance.fssaiId,
      'gstIn': instance.gstIn,
      'location': instance.location,
      'deviceDetails': instance.deviceDetails,
    };

_$OutletDetailsResponseModelImpl _$$OutletDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OutletDetailsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OutletModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OutletDetailsResponseModelImplToJson(
        _$OutletDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$DaySlotImpl _$$DaySlotImplFromJson(Map<String, dynamic> json) =>
    _$DaySlotImpl(
      day: json['day'] as String?,
      status: json['status'] as bool?,
      startTime: json['startTime'] as int?,
      endTime: json['endTime'] as int?,
      id: json['_id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$DaySlotImplToJson(_$DaySlotImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'status': instance.status,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      '_id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$DeviceDetailsImpl _$$DeviceDetailsImplFromJson(Map<String, dynamic> json) =>
    _$DeviceDetailsImpl(
      source: json['source'] as String?,
      imei: json['imei'] as String?,
      deviceVersion: json['deviceVersion'] as String?,
      deviceId: json['deviceId'] as String?,
    );

Map<String, dynamic> _$$DeviceDetailsImplToJson(_$DeviceDetailsImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'imei': instance.imei,
      'deviceVersion': instance.deviceVersion,
      'deviceId': instance.deviceId,
    };
