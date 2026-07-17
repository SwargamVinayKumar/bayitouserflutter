import 'package:freezed_annotation/freezed_annotation.dart';

import '../request_model/auth_request_model.dart';
import 'home_response_model.dart';


part 'pg_response_model.freezed.dart';
part 'pg_response_model.g.dart';

@Freezed()
class FetchPgsResponseModel with _$FetchPgsResponseModel{
  const factory FetchPgsResponseModel({
    int? status,
    String? message,
    List<PgModel>? data
  }) = _FetchPgsResponseModel;

  factory FetchPgsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchPgsResponseModelFromJson(json);
}

@Freezed()
class FetchPgDetailsResponseModel with _$FetchPgDetailsResponseModel{
  const factory FetchPgDetailsResponseModel({
    int? status,
    String? message,
    PgModel? data
  }) = _FetchPgDetailsResponseModel;

  factory FetchPgDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$FetchPgDetailsResponseModelFromJson(json);
}

@Freezed()
class PgModel with _$PgModel{
  const factory PgModel({
    @JsonKey(name: '_id') String? id,
    dynamic hostId,
    String? approvalStatus,
    List<String>? rejectedFields,
    String? reason,
    String? pgImage,
    String? pgLicence,
    String? pgName,
    String? aboutPg,
    String? gstIn,
    String? pgType,
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
    List<FaqModel>? faq,
  }) = _PgModel;

  factory PgModel.fromJson(Map<String, dynamic> json) => _$PgModelFromJson(json);
}