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

_$OutletDetailsResponseModelImpl _$$OutletDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OutletDetailsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OutletData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OutletDetailsResponseModelImplToJson(
        _$OutletDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$OutletDataImpl _$$OutletDataImplFromJson(Map<String, dynamic> json) =>
    _$OutletDataImpl(
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
          ?.map((e) => OutletTable.fromJson(e as Map<String, dynamic>))
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
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      deviceDetails: json['deviceDetails'] == null
          ? null
          : DeviceDetails.fromJson(
              json['deviceDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OutletDataImplToJson(_$OutletDataImpl instance) =>
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

_$OutletTableImpl _$$OutletTableImplFromJson(Map<String, dynamic> json) =>
    _$OutletTableImpl(
      id: json['_id'] as String?,
      outletId: json['outletId'] as String?,
      tableNumber: json['tableNumber'] as String?,
      description: json['description'] as String?,
      seatType: json['seatType'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      available: json['available'] as bool?,
      seatCapacity: json['seatCapacity'] as int?,
      seats: (json['seats'] as List<dynamic>?)
          ?.map((e) => Seat.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$OutletTableImplToJson(_$OutletTableImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'outletId': instance.outletId,
      'tableNumber': instance.tableNumber,
      'description': instance.description,
      'seatType': instance.seatType,
      'images': instance.images,
      'available': instance.available,
      'seatCapacity': instance.seatCapacity,
      'seats': instance.seats,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$SeatImpl _$$SeatImplFromJson(Map<String, dynamic> json) => _$SeatImpl(
      seatNumber: json['seatNumber'] as String?,
      seatType: json['seatType'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      available: json['available'] as bool?,
      charges: json['charges'] == null
          ? null
          : Charges.fromJson(json['charges'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$SeatImplToJson(_$SeatImpl instance) =>
    <String, dynamic>{
      'seatNumber': instance.seatNumber,
      'seatType': instance.seatType,
      'images': instance.images,
      'available': instance.available,
      'charges': instance.charges,
      '_id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$ChargesImpl _$$ChargesImplFromJson(Map<String, dynamic> json) =>
    _$ChargesImpl(
      perHour: json['perHour'] as int?,
      id: json['_id'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ChargesImplToJson(_$ChargesImpl instance) =>
    <String, dynamic>{
      'perHour': instance.perHour,
      '_id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
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

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
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

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
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
