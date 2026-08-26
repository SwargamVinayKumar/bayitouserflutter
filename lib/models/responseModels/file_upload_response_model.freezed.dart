// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_upload_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileUploadResponseModel _$FileUploadResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FileUploadResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FileUploadResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  FileUploadData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileUploadResponseModelCopyWith<FileUploadResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadResponseModelCopyWith<$Res> {
  factory $FileUploadResponseModelCopyWith(FileUploadResponseModel value,
          $Res Function(FileUploadResponseModel) then) =
      _$FileUploadResponseModelCopyWithImpl<$Res, FileUploadResponseModel>;
  @useResult
  $Res call({int? status, String? message, FileUploadData? data});

  $FileUploadDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FileUploadResponseModelCopyWithImpl<$Res,
        $Val extends FileUploadResponseModel>
    implements $FileUploadResponseModelCopyWith<$Res> {
  _$FileUploadResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FileUploadData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FileUploadDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FileUploadDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FileUploadResponseModelImplCopyWith<$Res>
    implements $FileUploadResponseModelCopyWith<$Res> {
  factory _$$FileUploadResponseModelImplCopyWith(
          _$FileUploadResponseModelImpl value,
          $Res Function(_$FileUploadResponseModelImpl) then) =
      __$$FileUploadResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, FileUploadData? data});

  @override
  $FileUploadDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FileUploadResponseModelImplCopyWithImpl<$Res>
    extends _$FileUploadResponseModelCopyWithImpl<$Res,
        _$FileUploadResponseModelImpl>
    implements _$$FileUploadResponseModelImplCopyWith<$Res> {
  __$$FileUploadResponseModelImplCopyWithImpl(
      _$FileUploadResponseModelImpl _value,
      $Res Function(_$FileUploadResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FileUploadResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FileUploadData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileUploadResponseModelImpl implements _FileUploadResponseModel {
  const _$FileUploadResponseModelImpl({this.status, this.message, this.data});

  factory _$FileUploadResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileUploadResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final FileUploadData? data;

  @override
  String toString() {
    return 'FileUploadResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUploadResponseModelImplCopyWith<_$FileUploadResponseModelImpl>
      get copyWith => __$$FileUploadResponseModelImplCopyWithImpl<
          _$FileUploadResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileUploadResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FileUploadResponseModel implements FileUploadResponseModel {
  const factory _FileUploadResponseModel(
      {final int? status,
      final String? message,
      final FileUploadData? data}) = _$FileUploadResponseModelImpl;

  factory _FileUploadResponseModel.fromJson(Map<String, dynamic> json) =
      _$FileUploadResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  FileUploadData? get data;
  @override
  @JsonKey(ignore: true)
  _$$FileUploadResponseModelImplCopyWith<_$FileUploadResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FileUploadData _$FileUploadDataFromJson(Map<String, dynamic> json) {
  return _FileUploadData.fromJson(json);
}

/// @nodoc
mixin _$FileUploadData {
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileUploadDataCopyWith<FileUploadData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploadDataCopyWith<$Res> {
  factory $FileUploadDataCopyWith(
          FileUploadData value, $Res Function(FileUploadData) then) =
      _$FileUploadDataCopyWithImpl<$Res, FileUploadData>;
  @useResult
  $Res call({String? imageUrl});
}

/// @nodoc
class _$FileUploadDataCopyWithImpl<$Res, $Val extends FileUploadData>
    implements $FileUploadDataCopyWith<$Res> {
  _$FileUploadDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileUploadDataImplCopyWith<$Res>
    implements $FileUploadDataCopyWith<$Res> {
  factory _$$FileUploadDataImplCopyWith(_$FileUploadDataImpl value,
          $Res Function(_$FileUploadDataImpl) then) =
      __$$FileUploadDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageUrl});
}

/// @nodoc
class __$$FileUploadDataImplCopyWithImpl<$Res>
    extends _$FileUploadDataCopyWithImpl<$Res, _$FileUploadDataImpl>
    implements _$$FileUploadDataImplCopyWith<$Res> {
  __$$FileUploadDataImplCopyWithImpl(
      _$FileUploadDataImpl _value, $Res Function(_$FileUploadDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_$FileUploadDataImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileUploadDataImpl implements _FileUploadData {
  const _$FileUploadDataImpl({this.imageUrl});

  factory _$FileUploadDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileUploadDataImplFromJson(json);

  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'FileUploadData(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUploadDataImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUploadDataImplCopyWith<_$FileUploadDataImpl> get copyWith =>
      __$$FileUploadDataImplCopyWithImpl<_$FileUploadDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileUploadDataImplToJson(
      this,
    );
  }
}

abstract class _FileUploadData implements FileUploadData {
  const factory _FileUploadData({final String? imageUrl}) =
      _$FileUploadDataImpl;

  factory _FileUploadData.fromJson(Map<String, dynamic> json) =
      _$FileUploadDataImpl.fromJson;

  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$FileUploadDataImplCopyWith<_$FileUploadDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
