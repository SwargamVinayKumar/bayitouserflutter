import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_response_model.freezed.dart';
part 'table_response_model.g.dart';


@Freezed()
class TableModel with _$TableModel {
  const factory TableModel({
    int? id,
    String? seatName,
    String? type
  }) = _TableModel;

  factory TableModel.fromJson(Map<String, dynamic> json) => _$TableModelFromJson(json);
}