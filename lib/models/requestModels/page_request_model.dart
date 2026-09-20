import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_request_model.freezed.dart';
part 'page_request_model.g.dart';

@Freezed()
abstract class PaginationRequestModel with _$PaginationRequestModel{
  const factory PaginationRequestModel({
    String? bookingType,
    int? page,
    int? limit,
    String? query,
    String? type,
    String? outletId,
    String? tableId,
    dynamic longitude,
    dynamic latitude
  }) = _PaginationRequestModel;

  factory PaginationRequestModel.fromJson(Map<String, dynamic> json) => _$PaginationRequestModelFromJson(json);
}