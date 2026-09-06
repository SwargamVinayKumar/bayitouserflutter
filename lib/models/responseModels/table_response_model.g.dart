// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchTablesResponseImpl _$$FetchTablesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchTablesResponseImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : TableData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FetchTablesResponseImplToJson(
        _$FetchTablesResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$TableDataImpl _$$TableDataImplFromJson(Map<String, dynamic> json) =>
    _$TableDataImpl(
      tables: (json['tables'] as List<dynamic>?)
          ?.map((e) => TableModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TableDataImplToJson(_$TableDataImpl instance) =>
    <String, dynamic>{
      'tables': instance.tables,
      'pagination': instance.pagination,
    };

_$TableModelImpl _$$TableModelImplFromJson(Map<String, dynamic> json) =>
    _$TableModelImpl(
      id: json['_id'] as String,
      outletId: json['outletId'] as String?,
      tableNumber: json['tableNumber'] as String?,
      description: json['description'] as String?,
      seatType: json['seatType'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      available: json['available'] as bool?,
      seatCapacity: json['seatCapacity'] as int?,
      seats: (json['seats'] as List<dynamic>?)
          ?.map((e) => SeatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratingCount: json['ratingCount'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      tableCount: json['tableCount'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
      categoryRating: (json['categoryRating'] as List<dynamic>?)
          ?.map((e) => CategoryRating.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TableModelImplToJson(_$TableModelImpl instance) =>
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
      'ratingCount': instance.ratingCount,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'tableCount': instance.tableCount,
      'rating': instance.rating,
      'categoryRating': instance.categoryRating,
    };

_$SeatModelImpl _$$SeatModelImplFromJson(Map<String, dynamic> json) =>
    _$SeatModelImpl(
      id: json['_id'] as String?,
      seatNumber: json['seatNumber'] as String?,
      seatType: json['seatType'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      available: json['available'] as bool?,
      charges: json['charges'] == null
          ? null
          : Charges.fromJson(json['charges'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$SeatModelImplToJson(_$SeatModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'seatNumber': instance.seatNumber,
      'seatType': instance.seatType,
      'images': instance.images,
      'available': instance.available,
      'charges': instance.charges,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$ChargesImpl _$$ChargesImplFromJson(Map<String, dynamic> json) =>
    _$ChargesImpl(
      id: json['_id'] as String?,
      perHour: json['perHour'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$ChargesImplToJson(_$ChargesImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'perHour': instance.perHour,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      total: json['total'] as int?,
      pages: json['pages'] as int?,
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'total': instance.total,
      'pages': instance.pages,
    };

_$FetchAmenitiesResponseModelImpl _$$FetchAmenitiesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchAmenitiesResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AmenitiesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchAmenitiesResponseModelImplToJson(
        _$FetchAmenitiesResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchRatingAndReviewsResponseModelImpl
    _$$FetchRatingAndReviewsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$FetchRatingAndReviewsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  RatingAndReviewModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchRatingAndReviewsResponseModelImplToJson(
        _$FetchRatingAndReviewsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$RatingAndReviewModelImpl _$$RatingAndReviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RatingAndReviewModelImpl(
      userId: json['userId'],
      outletId: json['outletId'],
      tableId: json['tableId'],
      rating: json['rating'],
      review: json['review'] as String?,
    );

Map<String, dynamic> _$$RatingAndReviewModelImplToJson(
        _$RatingAndReviewModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'outletId': instance.outletId,
      'tableId': instance.tableId,
      'rating': instance.rating,
      'review': instance.review,
    };

_$CategoryRatingImpl _$$CategoryRatingImplFromJson(Map<String, dynamic> json) =>
    _$CategoryRatingImpl(
      rating: json['rating'],
      ratedFor: json['ratedFor'] as String?,
    );

Map<String, dynamic> _$$CategoryRatingImplToJson(
        _$CategoryRatingImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'ratedFor': instance.ratedFor,
    };

_$AmenitiesModelImpl _$$AmenitiesModelImplFromJson(Map<String, dynamic> json) =>
    _$AmenitiesModelImpl(
      id: json['_id'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$AmenitiesModelImplToJson(
        _$AmenitiesModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'name': instance.name,
    };
