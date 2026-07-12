// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pg_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchPgsResponseModelImpl _$$FetchPgsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchPgsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PgModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchPgsResponseModelImplToJson(
        _$FetchPgsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchPgDetailsResponseModelImpl _$$FetchPgDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchPgDetailsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PgModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FetchPgDetailsResponseModelImplToJson(
        _$FetchPgDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$PgModelImpl _$$PgModelImplFromJson(Map<String, dynamic> json) =>
    _$PgModelImpl(
      id: json['_id'] as String?,
      hostId: json['hostId'],
      approvalStatus: json['approvalStatus'] as String?,
      rejectedFields: (json['rejectedFields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      reason: json['reason'] as String?,
      pgImage: json['pgImage'] as String?,
      pgLicence: json['pgLicence'] as String?,
      pgName: json['pgName'] as String?,
      aboutPg: json['aboutPg'] as String?,
      gstIn: json['gstIn'] as String?,
      pgType: json['pgType'] as String?,
      amenityIds: (json['amenityIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      amenities: (json['amenities'] as List<dynamic>?)
          ?.map((e) => AmenitiesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      amenitiesMore: json['amenitiesMore'] as int?,
      unit: json['unit'] == null
          ? null
          : UnitModel.fromJson(json['unit'] as Map<String, dynamic>),
      units: (json['units'] as List<dynamic>?)
          ?.map((e) => UnitModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      unitsMore: json['unitsMore'] as int?,
      rules:
          (json['rules'] as List<dynamic>?)?.map((e) => e as String).toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: json['location'] == null
          ? null
          : LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      monthlyIncome: json['monthlyIncome'] as int?,
      totalIncome: json['totalIncome'] as int?,
      totalVotes: json['totalVotes'] as int?,
      rating: json['rating'],
      categoryRatings: (json['categoryRatings'] as List<dynamic>?)
          ?.map((e) => CategoryRating.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavorite: json['isFavorite'] as bool?,
      checkInTime: json['checkInTime'] as String?,
      checkOutTime: json['checkOutTime'] as String?,
      faq: (json['faq'] as List<dynamic>?)
          ?.map((e) => FaqModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PgModelImplToJson(_$PgModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'hostId': instance.hostId,
      'approvalStatus': instance.approvalStatus,
      'rejectedFields': instance.rejectedFields,
      'reason': instance.reason,
      'pgImage': instance.pgImage,
      'pgLicence': instance.pgLicence,
      'pgName': instance.pgName,
      'aboutPg': instance.aboutPg,
      'gstIn': instance.gstIn,
      'pgType': instance.pgType,
      'amenityIds': instance.amenityIds,
      'amenities': instance.amenities,
      'amenitiesMore': instance.amenitiesMore,
      'unit': instance.unit,
      'units': instance.units,
      'unitsMore': instance.unitsMore,
      'rules': instance.rules,
      'images': instance.images,
      'location': instance.location,
      'monthlyIncome': instance.monthlyIncome,
      'totalIncome': instance.totalIncome,
      'totalVotes': instance.totalVotes,
      'rating': instance.rating,
      'categoryRatings': instance.categoryRatings,
      'isFavorite': instance.isFavorite,
      'checkInTime': instance.checkInTime,
      'checkOutTime': instance.checkOutTime,
      'faq': instance.faq,
    };
