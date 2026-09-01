// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationRequestModel _$PaginationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _PaginationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PaginationRequestModel {
  String? get bookingType => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationRequestModelCopyWith<PaginationRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationRequestModelCopyWith<$Res> {
  factory $PaginationRequestModelCopyWith(PaginationRequestModel value,
          $Res Function(PaginationRequestModel) then) =
      _$PaginationRequestModelCopyWithImpl<$Res, PaginationRequestModel>;
  @useResult
  $Res call({String? bookingType, int? page, String? query, String? type});
}

/// @nodoc
class _$PaginationRequestModelCopyWithImpl<$Res,
        $Val extends PaginationRequestModel>
    implements $PaginationRequestModelCopyWith<$Res> {
  _$PaginationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingType = freezed,
    Object? page = freezed,
    Object? query = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      bookingType: freezed == bookingType
          ? _value.bookingType
          : bookingType // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationRequestModelImplCopyWith<$Res>
    implements $PaginationRequestModelCopyWith<$Res> {
  factory _$$PaginationRequestModelImplCopyWith(
          _$PaginationRequestModelImpl value,
          $Res Function(_$PaginationRequestModelImpl) then) =
      __$$PaginationRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? bookingType, int? page, String? query, String? type});
}

/// @nodoc
class __$$PaginationRequestModelImplCopyWithImpl<$Res>
    extends _$PaginationRequestModelCopyWithImpl<$Res,
        _$PaginationRequestModelImpl>
    implements _$$PaginationRequestModelImplCopyWith<$Res> {
  __$$PaginationRequestModelImplCopyWithImpl(
      _$PaginationRequestModelImpl _value,
      $Res Function(_$PaginationRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingType = freezed,
    Object? page = freezed,
    Object? query = freezed,
    Object? type = freezed,
  }) {
    return _then(_$PaginationRequestModelImpl(
      bookingType: freezed == bookingType
          ? _value.bookingType
          : bookingType // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationRequestModelImpl implements _PaginationRequestModel {
  const _$PaginationRequestModelImpl(
      {this.bookingType, this.page, this.query, this.type});

  factory _$PaginationRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationRequestModelImplFromJson(json);

  @override
  final String? bookingType;
  @override
  final int? page;
  @override
  final String? query;
  @override
  final String? type;

  @override
  String toString() {
    return 'PaginationRequestModel(bookingType: $bookingType, page: $page, query: $query, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationRequestModelImpl &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bookingType, page, query, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationRequestModelImplCopyWith<_$PaginationRequestModelImpl>
      get copyWith => __$$PaginationRequestModelImplCopyWithImpl<
          _$PaginationRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationRequestModelImplToJson(
      this,
    );
  }
}

abstract class _PaginationRequestModel implements PaginationRequestModel {
  const factory _PaginationRequestModel(
      {final String? bookingType,
      final int? page,
      final String? query,
      final String? type}) = _$PaginationRequestModelImpl;

  factory _PaginationRequestModel.fromJson(Map<String, dynamic> json) =
      _$PaginationRequestModelImpl.fromJson;

  @override
  String? get bookingType;
  @override
  int? get page;
  @override
  String? get query;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$PaginationRequestModelImplCopyWith<_$PaginationRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
