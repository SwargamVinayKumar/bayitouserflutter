import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_response_model.freezed.dart';
part 'table_response_model.g.dart';

@freezed
abstract class FetchTablesResponse with _$FetchTablesResponse {
  const factory FetchTablesResponse({
    int? status,
    String? message,
    TableData? data,
  }) = _FetchTablesResponse;

  factory FetchTablesResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchTablesResponseFromJson(json);
}

@freezed
abstract class TableData with _$TableData {
  const factory TableData({
    List<TableModel>? tables,
    Pagination? pagination,
  }) = _TableData;

  factory TableData.fromJson(Map<String, dynamic> json) =>
      _$TableDataFromJson(json);
}

@freezed
abstract class TableModel with _$TableModel {
  const factory TableModel({
    @JsonKey(name: '_id') required String id,
    String? outletId,
    String? tableNumber,
    String? description,
    String? seatType,
    List<String>? images,
    bool? available,
    int? seatCapacity,
    List<SeatModel>? seats,
    int? ratingCount,
    String? createdAt,
    String? updatedAt,
    int? tableCount,
    int? totalVotes,
    double? rating,
    List<CategoryRating>? categoryRating,
    RatingAndReviewModel? topRated
  }) = _TableModel;

  factory TableModel.fromJson(Map<String, dynamic> json) =>
      _$TableModelFromJson(json);
}

@freezed
abstract class SeatModel with _$SeatModel {
  const factory SeatModel({
    @JsonKey(name: '_id') String? id,
    String? seatNumber,
    String? seatType,
    List<String>? images,
    bool? available,
    Charges? charges,
    String? createdAt,
    String? updatedAt,
  }) = _SeatModel;

  factory SeatModel.fromJson(Map<String, dynamic> json) =>
      _$SeatModelFromJson(json);
}

@freezed
abstract class Charges with _$Charges {
  const factory Charges({
    @JsonKey(name: '_id') String? id,
    int? perHour,
    String? createdAt,
    String? updatedAt,
  }) = _Charges;

  factory Charges.fromJson(Map<String, dynamic> json) =>
      _$ChargesFromJson(json);
}

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({
    int? page,
    int? limit,
    int? total,
    int? pages,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
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
    dynamic outletId,
    dynamic tableId,
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
class AmenitiesModel with _$AmenitiesModel{
  const factory AmenitiesModel({
    @JsonKey(name: '_id') String? id,
    String? image,
    String? name
  }) = _AmenitiesModel;

  factory AmenitiesModel.fromJson(Map<String, dynamic> json) => _$AmenitiesModelFromJson(json);
}
