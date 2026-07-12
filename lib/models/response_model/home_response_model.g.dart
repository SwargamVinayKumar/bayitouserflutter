// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FetchHomesResponseModelImpl _$$FetchHomesResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchHomesResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => HomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchHomesResponseModelImplToJson(
        _$FetchHomesResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchHomeDetailsResponseModelImpl
    _$$FetchHomeDetailsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$FetchHomeDetailsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : HomeModel.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$FetchHomeDetailsResponseModelImplToJson(
        _$FetchHomeDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      id: json['_id'] as String?,
      hostId: json['hostId'],
      branch: json['branch'],
      manager: json['manager'] == null
          ? null
          : UserModel.fromJson(json['manager'] as Map<String, dynamic>),
      approvalStatus: json['approvalStatus'] as String?,
      rejectedFields: (json['rejectedFields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      reason: json['reason'] as String?,
      homeImage: json['homeImage'] as String?,
      homeLicence: json['homeLicence'] as String?,
      homeName: json['homeName'] as String?,
      aboutHome: json['aboutHome'] as String?,
      gstIn: json['gstIn'] as String?,
      homeType: json['homeType'] as String?,
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

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'hostId': instance.hostId,
      'branch': instance.branch,
      'manager': instance.manager,
      'approvalStatus': instance.approvalStatus,
      'rejectedFields': instance.rejectedFields,
      'reason': instance.reason,
      'homeImage': instance.homeImage,
      'homeLicence': instance.homeLicence,
      'homeName': instance.homeName,
      'aboutHome': instance.aboutHome,
      'gstIn': instance.gstIn,
      'homeType': instance.homeType,
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

_$FaqModelImpl _$$FaqModelImplFromJson(Map<String, dynamic> json) =>
    _$FaqModelImpl(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$FaqModelImplToJson(_$FaqModelImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
    };

_$ImageDataModelImpl _$$ImageDataModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageDataModelImpl(
      imagesType: json['imagesType'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ImageDataModelImplToJson(
        _$ImageDataModelImpl instance) =>
    <String, dynamic>{
      'imagesType': instance.imagesType,
      'images': instance.images,
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
      homeId: json['homeId'],
      rating: json['rating'],
      review: json['review'] as String?,
    );

Map<String, dynamic> _$$RatingAndReviewModelImplToJson(
        _$RatingAndReviewModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'homeId': instance.homeId,
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

_$FetchHomeUnitsResponseModelImpl _$$FetchHomeUnitsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchHomeUnitsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UnitModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      unitTypes: (json['unitTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$FetchHomeUnitsResponseModelImplToJson(
        _$FetchHomeUnitsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'unitTypes': instance.unitTypes,
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

_$UnitModelImpl _$$UnitModelImplFromJson(Map<String, dynamic> json) =>
    _$UnitModelImpl(
      id: json['_id'] as String?,
      hostId: json['hostId'] as String?,
      homeId: json['homeId'] as String?,
      image: json['image'] as String?,
      unitNo: json['unitNo'] as String?,
      floor: json['floor'] as int?,
      specialAmenities: (json['specialAmenities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      capacityCount: json['capacityCount'] as int?,
      occupiedCount: json['occupiedCount'] as int?,
      unitType: json['unitType'] as String?,
      rent: json['rent'] == null
          ? null
          : RentModel.fromJson(json['rent'] as Map<String, dynamic>),
      checkInDate: json['checkInDate'] == null
          ? null
          : DateTime.parse(json['checkInDate'] as String),
      checkOutDate: json['checkOutDate'] == null
          ? null
          : DateTime.parse(json['checkOutDate'] as String),
      guestCount: json['guestCount'] as int?,
    );

Map<String, dynamic> _$$UnitModelImplToJson(_$UnitModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'hostId': instance.hostId,
      'homeId': instance.homeId,
      'image': instance.image,
      'unitNo': instance.unitNo,
      'floor': instance.floor,
      'specialAmenities': instance.specialAmenities,
      'capacityCount': instance.capacityCount,
      'occupiedCount': instance.occupiedCount,
      'unitType': instance.unitType,
      'rent': instance.rent,
      'checkInDate': instance.checkInDate?.toIso8601String(),
      'checkOutDate': instance.checkOutDate?.toIso8601String(),
      'guestCount': instance.guestCount,
    };

_$RentModelImpl _$$RentModelImplFromJson(Map<String, dynamic> json) =>
    _$RentModelImpl(
      id: json['_id'] as String?,
      monthly: json['monthly'] as int?,
      daily: json['daily'] as int?,
    );

Map<String, dynamic> _$$RentModelImplToJson(_$RentModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'monthly': instance.monthly,
      'daily': instance.daily,
    };

_$TitleMessageModelImpl _$$TitleMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TitleMessageModelImpl(
      image: json['image'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$TitleMessageModelImplToJson(
        _$TitleMessageModelImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'message': instance.message,
    };

_$FetchHomeStatisticsResponseModelImpl
    _$$FetchHomeStatisticsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$FetchHomeStatisticsResponseModelImpl(
          status: json['status'] as int?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => StatsDataModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$FetchHomeStatisticsResponseModelImplToJson(
        _$FetchHomeStatisticsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$StatsDataModelImpl _$$StatsDataModelImplFromJson(Map<String, dynamic> json) =>
    _$StatsDataModelImpl(
      type: json['type'] as String?,
      amount: json['amount'],
    );

Map<String, dynamic> _$$StatsDataModelImplToJson(
        _$StatsDataModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'amount': instance.amount,
    };

_$RegisterUnitResponseModelImpl _$$RegisterUnitResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterUnitResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UnitModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegisterUnitResponseModelImplToJson(
        _$RegisterUnitResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$CreateCouponResponseModelImpl _$$CreateCouponResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCouponResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CouponDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateCouponResponseModelImplToJson(
        _$CreateCouponResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$FetchCouponsResponseModelImpl _$$FetchCouponsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FetchCouponsResponseModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CouponDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FetchCouponsResponseModelImplToJson(
        _$FetchCouponsResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$CouponDataModelImpl _$$CouponDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CouponDataModelImpl(
      id: json['_id'] as String?,
      discountType: json['discountType'] as String?,
      isActive: json['isActive'] as bool?,
      singleUse: json['singleUse'] as bool?,
      createdBy: json['createdBy'] as String?,
      expiryDate: json['expiryDate'] == null
          ? null
          : DateTime.parse(json['expiryDate'] as String),
      code: json['code'] as String?,
      orderValue: json['orderValue'] as int?,
      discount: json['discount'] as int?,
    );

Map<String, dynamic> _$$CouponDataModelImplToJson(
        _$CouponDataModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'discountType': instance.discountType,
      'isActive': instance.isActive,
      'singleUse': instance.singleUse,
      'createdBy': instance.createdBy,
      'expiryDate': instance.expiryDate?.toIso8601String(),
      'code': instance.code,
      'orderValue': instance.orderValue,
      'discount': instance.discount,
    };
