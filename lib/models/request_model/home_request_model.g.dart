// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationHomeRequestModelImpl _$$RegistrationHomeRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationHomeRequestModelImpl(
      homeId: json['homeId'] as String?,
      mobile: json['mobile'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      homeImage: json['homeImage'] as String?,
      homeType: json['homeType'] as String?,
      homeLicence: json['homeLicence'] as String?,
      homeName: json['homeName'] as String?,
      aboutHome: json['aboutHome'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rules:
          (json['rules'] as List<dynamic>?)?.map((e) => e as String).toList(),
      faq: (json['faq'] as List<dynamic>?)
          ?.map((e) => FaqModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkInTime: json['checkInTime'] as String?,
      checkOutTime: json['checkOutTime'] as String?,
      gstIn: json['gstIn'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      kycDocuments: (json['kycDocuments'] as List<dynamic>?)
          ?.map((e) => DocumentDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RegistrationHomeRequestModelImplToJson(
        _$RegistrationHomeRequestModelImpl instance) =>
    <String, dynamic>{
      'homeId': instance.homeId,
      'mobile': instance.mobile,
      'name': instance.name,
      'email': instance.email,
      'homeImage': instance.homeImage,
      'homeType': instance.homeType,
      'homeLicence': instance.homeLicence,
      'homeName': instance.homeName,
      'aboutHome': instance.aboutHome,
      'images': instance.images,
      'amenities': instance.amenities,
      'rules': instance.rules,
      'faq': instance.faq,
      'checkInTime': instance.checkInTime,
      'checkOutTime': instance.checkOutTime,
      'gstIn': instance.gstIn,
      'location': instance.location,
      'kycDocuments': instance.kycDocuments,
    };

_$RegistrationPgRequestModelImpl _$$RegistrationPgRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationPgRequestModelImpl(
      pgId: json['pgId'] as String?,
      mobile: json['mobile'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      pgImage: json['pgImage'] as String?,
      pgType: json['pgType'] as String?,
      pgLicence: json['pgLicence'] as String?,
      pgName: json['pgName'] as String?,
      aboutPg: json['aboutPg'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rules:
          (json['rules'] as List<dynamic>?)?.map((e) => e as String).toList(),
      faq: (json['faq'] as List<dynamic>?)
          ?.map((e) => FaqModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      checkInTime: json['checkInTime'] as String?,
      checkOutTime: json['checkOutTime'] as String?,
      gstIn: json['gstIn'] as String?,
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      kycDocuments: (json['kycDocuments'] as List<dynamic>?)
          ?.map((e) => DocumentDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RegistrationPgRequestModelImplToJson(
        _$RegistrationPgRequestModelImpl instance) =>
    <String, dynamic>{
      'pgId': instance.pgId,
      'mobile': instance.mobile,
      'name': instance.name,
      'email': instance.email,
      'pgImage': instance.pgImage,
      'pgType': instance.pgType,
      'pgLicence': instance.pgLicence,
      'pgName': instance.pgName,
      'aboutPg': instance.aboutPg,
      'images': instance.images,
      'amenities': instance.amenities,
      'rules': instance.rules,
      'faq': instance.faq,
      'checkInTime': instance.checkInTime,
      'checkOutTime': instance.checkOutTime,
      'gstIn': instance.gstIn,
      'location': instance.location,
      'kycDocuments': instance.kycDocuments,
    };

_$ListUnitRequestModelImpl _$$ListUnitRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ListUnitRequestModelImpl(
      unitId: json['unitId'] as String?,
      homeId: json['homeId'] as String?,
      image: json['image'] as String?,
      unitNo: json['unitNo'] as String?,
      floor: json['floor'] as int?,
      specialAmenities: (json['specialAmenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      capacityCount: json['capacityCount'] as int?,
      unitType: json['unitType'] as String?,
      rent: json['rent'] == null
          ? null
          : RentModel.fromJson(json['rent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListUnitRequestModelImplToJson(
        _$ListUnitRequestModelImpl instance) =>
    <String, dynamic>{
      'unitId': instance.unitId,
      'homeId': instance.homeId,
      'image': instance.image,
      'unitNo': instance.unitNo,
      'floor': instance.floor,
      'specialAmenities': instance.specialAmenities,
      'capacityCount': instance.capacityCount,
      'unitType': instance.unitType,
      'rent': instance.rent,
    };
