import 'package:freezed_annotation/freezed_annotation.dart';

import '../request_model/auth_request_model.dart';
import 'auth_response_model.dart';



part 'home_response_model.freezed.dart';
part 'home_response_model.g.dart';

@Freezed()
class FetchHomesResponseModel with _$FetchHomesResponseModel{
  const factory FetchHomesResponseModel({
    int? status,
    String? message,
    List<HomeModel>? data
  }) = _FetchHomesResponseModel;

  factory FetchHomesResponseModel.fromJson(Map<String, dynamic> json) => _$FetchHomesResponseModelFromJson(json);
}

@Freezed()
class FetchHomeDetailsResponseModel with _$FetchHomeDetailsResponseModel{
  const factory FetchHomeDetailsResponseModel({
    int? status,
    String? message,
    HomeModel? data
  }) = _FetchHomeDetailsResponseModel;

  factory FetchHomeDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchHomeDetailsResponseModelFromJson(json);
}

@Freezed()
class HomeModel with _$HomeModel{
  const factory HomeModel({
    @JsonKey(name: '_id') String? id,
    dynamic hostId,
    dynamic branch,
    UserModel? manager,
    String? approvalStatus,
    List<String>? rejectedFields,
    String? reason,
    String? homeImage,
    String? homeLicence,
    String? homeName,
    String? aboutHome,
    String? gstIn,
    String? homeType,
    List<String>? amenityIds,
    List<AmenitiesModel>? amenities,
    int? amenitiesMore,
    UnitModel? unit,
    List<UnitModel>? units,
    int? unitsMore,
    List<String>? rules,
    List<ImageDataModel>? images,
    LocationModel? location,
    int? monthlyIncome,
    int? totalIncome,
    int? totalVotes,
    dynamic rating,
    List<CategoryRating>? categoryRatings,
    bool? isFavorite,
    String? checkInTime,
    String? checkOutTime,
    List<FaqModel>? faq
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);
}


@Freezed()
class FaqModel with _$FaqModel{
  const factory FaqModel({
    String? question,
    String? answer
  }) = _FaqModel;

  factory FaqModel.fromJson(Map<String, dynamic> json) => _$FaqModelFromJson(json);
}


@Freezed()
class ImageDataModel with _$ImageDataModel{
  const factory ImageDataModel({
    String? imagesType,
    List<String>? images
  }) = _ImageDataModel;

  factory ImageDataModel.fromJson(Map<String, dynamic> json) => _$ImageDataModelFromJson(json);
}

@Freezed()
class FetchAmenitiesResponseModel with _$FetchAmenitiesResponseModel{
  const factory FetchAmenitiesResponseModel({
    int? status,
    String? message,
    List<AmenitiesModel>? data
  }) = _FetchAmenitiesResponseModel;

  factory FetchAmenitiesResponseModel.fromJson(Map<String, dynamic> json) => _$FetchAmenitiesResponseModelFromJson(json);
}

@Freezed()
class FetchRatingAndReviewsResponseModel with _$FetchRatingAndReviewsResponseModel{
  const factory FetchRatingAndReviewsResponseModel({
    int? status,
    String? message,
    List<RatingAndReviewModel>? data
  }) = _FetchRatingAndReviewsResponseModel;

  factory FetchRatingAndReviewsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchRatingAndReviewsResponseModelFromJson(json);
}

@Freezed()
class RatingAndReviewModel with _$RatingAndReviewModel{
  const factory RatingAndReviewModel({
    dynamic userId,
    dynamic homeId,
    dynamic rating,
    String? review
  }) = _RatingAndReviewModel;

  factory RatingAndReviewModel.fromJson(Map<String, dynamic> json) => _$RatingAndReviewModelFromJson(json);
}


@Freezed()
class CategoryRating with _$CategoryRating{
  const factory CategoryRating({
    dynamic rating,
    String? ratedFor
  }) = _CategoryRating;

  factory CategoryRating.fromJson(Map<String, dynamic> json) => _$CategoryRatingFromJson(json);
}


@Freezed()
class FetchHomeUnitsResponseModel with _$FetchHomeUnitsResponseModel{
  const factory FetchHomeUnitsResponseModel({
    int? status,
    String? message,
    List<UnitModel>? data,
    List<String>? unitTypes
  }) = _FetchHomeUnitsResponseModel;

  factory FetchHomeUnitsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchHomeUnitsResponseModelFromJson(json);
}

@Freezed()
class AmenitiesModel with _$AmenitiesModel{
  const factory AmenitiesModel({
    @JsonKey(name: '_id') String? id,
    String? image,
    String? name
  }) = _AmenitiesModel;

  factory AmenitiesModel.fromJson(Map<String, dynamic> json) => _$AmenitiesModelFromJson(json);
}

@Freezed()
class UnitModel with _$UnitModel{
  const factory UnitModel({
    @JsonKey(name: '_id') String? id,
    String? hostId,
    String? homeId,
    String? image,
    String? unitNo,
    int? floor,
    List<String>? specialAmenities,
    int? capacityCount,
    int? occupiedCount,
    String? unitType,
    RentModel? rent,
    DateTime? checkInDate,
    DateTime? checkOutDate,
    int? guestCount
  }) = _UnitModel;

  factory UnitModel.fromJson(Map<String, dynamic> json) => _$UnitModelFromJson(json);
}

@Freezed()
class RentModel with _$RentModel{
  const factory RentModel({
    @JsonKey(name: '_id') String? id,
    int? monthly,
    int? daily
  }) = _RentModel;

  factory RentModel.fromJson(Map<String, dynamic> json) => _$RentModelFromJson(json);
}

@Freezed()
class TitleMessageModel with _$TitleMessageModel{
  const factory TitleMessageModel({
    String? image,
    String? message
  }) = _TitleMessageModel;

  factory TitleMessageModel.fromJson(Map<String, dynamic> json) => _$TitleMessageModelFromJson(json);
}

@Freezed()
class FetchHomeStatisticsResponseModel with _$FetchHomeStatisticsResponseModel{
  const factory FetchHomeStatisticsResponseModel({
    int? status,
    String? message,
    List<StatsDataModel>? data
  }) = _FetchHomeStatisticsResponseModel;

  factory FetchHomeStatisticsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchHomeStatisticsResponseModelFromJson(json);
}


@Freezed()
class StatsDataModel with _$StatsDataModel{
  const factory StatsDataModel({
    String? type,
    dynamic amount
  }) = _StatsDataModel;

  factory StatsDataModel.fromJson(Map<String, dynamic> json) => _$StatsDataModelFromJson(json);
}

@Freezed()
class RegisterUnitResponseModel with _$RegisterUnitResponseModel{
  const factory RegisterUnitResponseModel({
    int? status,
    String? message,
    UnitModel? data
  }) = _RegisterUnitResponseModel;

  factory RegisterUnitResponseModel.fromJson(Map<String, dynamic> json) => _$RegisterUnitResponseModelFromJson(json);
}


@Freezed()
class CreateCouponResponseModel with _$CreateCouponResponseModel{
  const factory CreateCouponResponseModel({
    int? status,
    String? message,
    CouponDataModel? data
  }) = _CreateCouponResponseModel;

  factory CreateCouponResponseModel.fromJson(Map<String, dynamic> json) => _$CreateCouponResponseModelFromJson(json);
}

@Freezed()
class FetchCouponsResponseModel with _$FetchCouponsResponseModel{
  const factory FetchCouponsResponseModel({
    int? status,
    String? message,
    List<CouponDataModel>? data
  }) = _FetchCouponsResponseModel;

  factory FetchCouponsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchCouponsResponseModelFromJson(json);
}

@Freezed()
class CouponDataModel with _$CouponDataModel{
  const factory CouponDataModel({
    @JsonKey(name:'_id') String? id,
    String? discountType,
    bool? isActive,
    bool? singleUse,
    String? createdBy,
    DateTime? expiryDate,
    String? code,
    int? orderValue,
    int? discount
  }) = _CouponDataModel;

  factory CouponDataModel.fromJson(Map<String, dynamic> json) => _$CouponDataModelFromJson(json);
}
