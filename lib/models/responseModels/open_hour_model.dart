import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_hour_model.freezed.dart';
part 'open_hour_model.g.dart';


@freezed
abstract class OpeningHoursResponseModel with _$OpeningHoursResponseModel {
  const factory OpeningHoursResponseModel({
    int? success,
    String? message,
    OpeningHoursDataModel? data,
  }) = _OpeningHoursResponseModel;

  factory OpeningHoursResponseModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$OpeningHoursResponseModelFromJson(json);
}

@freezed
abstract class OpeningHoursDataModel with _$OpeningHoursDataModel {
  const factory OpeningHoursDataModel({
    String? outletId,
    List<DaySlotModel>? daySlots,
  }) = _OpeningHoursDataModel;

  factory OpeningHoursDataModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$OpeningHoursDataModelFromJson(json);
}

@freezed
abstract class DaySlotModel with _$DaySlotModel {
  const factory DaySlotModel({
    String? day,
    bool? status,
    String? startTime,
    String? endTime,
  }) = _DaySlotModel;

  factory DaySlotModel.fromJson(
      Map<String, dynamic> json,
      ) =>
      _$DaySlotModelFromJson(json);
}
