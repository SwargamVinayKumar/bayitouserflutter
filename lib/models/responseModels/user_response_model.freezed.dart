// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersListResponseModel _$UsersListResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UsersListResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UsersListResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<UserModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersListResponseModelCopyWith<UsersListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersListResponseModelCopyWith<$Res> {
  factory $UsersListResponseModelCopyWith(UsersListResponseModel value,
          $Res Function(UsersListResponseModel) then) =
      _$UsersListResponseModelCopyWithImpl<$Res, UsersListResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<UserModel>? data});
}

/// @nodoc
class _$UsersListResponseModelCopyWithImpl<$Res,
        $Val extends UsersListResponseModel>
    implements $UsersListResponseModelCopyWith<$Res> {
  _$UsersListResponseModelCopyWithImpl(this._value, this._then);

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
              as List<UserModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsersListResponseModelImplCopyWith<$Res>
    implements $UsersListResponseModelCopyWith<$Res> {
  factory _$$UsersListResponseModelImplCopyWith(
          _$UsersListResponseModelImpl value,
          $Res Function(_$UsersListResponseModelImpl) then) =
      __$$UsersListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<UserModel>? data});
}

/// @nodoc
class __$$UsersListResponseModelImplCopyWithImpl<$Res>
    extends _$UsersListResponseModelCopyWithImpl<$Res,
        _$UsersListResponseModelImpl>
    implements _$$UsersListResponseModelImplCopyWith<$Res> {
  __$$UsersListResponseModelImplCopyWithImpl(
      _$UsersListResponseModelImpl _value,
      $Res Function(_$UsersListResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UsersListResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsersListResponseModelImpl implements _UsersListResponseModel {
  const _$UsersListResponseModelImpl(
      {this.status, this.message, final List<UserModel>? data})
      : _data = data;

  factory _$UsersListResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsersListResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<UserModel>? _data;
  @override
  List<UserModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UsersListResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersListResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsersListResponseModelImplCopyWith<_$UsersListResponseModelImpl>
      get copyWith => __$$UsersListResponseModelImplCopyWithImpl<
          _$UsersListResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsersListResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UsersListResponseModel implements UsersListResponseModel {
  const factory _UsersListResponseModel(
      {final int? status,
      final String? message,
      final List<UserModel>? data}) = _$UsersListResponseModelImpl;

  factory _UsersListResponseModel.fromJson(Map<String, dynamic> json) =
      _$UsersListResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<UserModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$UsersListResponseModelImplCopyWith<_$UsersListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;
  List<DesignationModel>? get designations =>
      throw _privateConstructorUsedError;
  UserLocationModel? get location => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? profilePic,
      List<DesignationModel>? designations,
      UserLocationModel? location,
      String? name,
      String? email});

  $UserLocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profilePic = freezed,
    Object? designations = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      designations: freezed == designations
          ? _value.designations
          : designations // ignore: cast_nullable_to_non_nullable
              as List<DesignationModel>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocationModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $UserLocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? profilePic,
      List<DesignationModel>? designations,
      UserLocationModel? location,
      String? name,
      String? email});

  @override
  $UserLocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profilePic = freezed,
    Object? designations = freezed,
    Object? location = freezed,
    Object? name = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      designations: freezed == designations
          ? _value._designations
          : designations // ignore: cast_nullable_to_non_nullable
              as List<DesignationModel>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserLocationModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: "_id") this.id,
      this.profilePic,
      final List<DesignationModel>? designations,
      this.location,
      this.name,
      this.email})
      : _designations = designations;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? profilePic;
  final List<DesignationModel>? _designations;
  @override
  List<DesignationModel>? get designations {
    final value = _designations;
    if (value == null) return null;
    if (_designations is EqualUnmodifiableListView) return _designations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserLocationModel? location;
  @override
  final String? name;
  @override
  final String? email;

  @override
  String toString() {
    return 'UserModel(id: $id, profilePic: $profilePic, designations: $designations, location: $location, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            const DeepCollectionEquality()
                .equals(other._designations, _designations) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      profilePic,
      const DeepCollectionEquality().hash(_designations),
      location,
      name,
      email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: "_id") final String? id,
      final String? profilePic,
      final List<DesignationModel>? designations,
      final UserLocationModel? location,
      final String? name,
      final String? email}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get profilePic;
  @override
  List<DesignationModel>? get designations;
  @override
  UserLocationModel? get location;
  @override
  String? get name;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DesignationModel _$DesignationModelFromJson(Map<String, dynamic> json) {
  return _DesignationModel.fromJson(json);
}

/// @nodoc
mixin _$DesignationModel {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DesignationModelCopyWith<DesignationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignationModelCopyWith<$Res> {
  factory $DesignationModelCopyWith(
          DesignationModel value, $Res Function(DesignationModel) then) =
      _$DesignationModelCopyWithImpl<$Res, DesignationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? name,
      String? description,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$DesignationModelCopyWithImpl<$Res, $Val extends DesignationModel>
    implements $DesignationModelCopyWith<$Res> {
  _$DesignationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DesignationModelImplCopyWith<$Res>
    implements $DesignationModelCopyWith<$Res> {
  factory _$$DesignationModelImplCopyWith(_$DesignationModelImpl value,
          $Res Function(_$DesignationModelImpl) then) =
      __$$DesignationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? name,
      String? description,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$DesignationModelImplCopyWithImpl<$Res>
    extends _$DesignationModelCopyWithImpl<$Res, _$DesignationModelImpl>
    implements _$$DesignationModelImplCopyWith<$Res> {
  __$$DesignationModelImplCopyWithImpl(_$DesignationModelImpl _value,
      $Res Function(_$DesignationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DesignationModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DesignationModelImpl implements _DesignationModel {
  const _$DesignationModelImpl(
      {@JsonKey(name: "_id") this.id,
      this.name,
      this.description,
      this.createdAt,
      this.updatedAt});

  factory _$DesignationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesignationModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'DesignationModel(id: $id, name: $name, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignationModelImplCopyWith<_$DesignationModelImpl> get copyWith =>
      __$$DesignationModelImplCopyWithImpl<_$DesignationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DesignationModelImplToJson(
      this,
    );
  }
}

abstract class _DesignationModel implements DesignationModel {
  const factory _DesignationModel(
      {@JsonKey(name: "_id") final String? id,
      final String? name,
      final String? description,
      final String? createdAt,
      final String? updatedAt}) = _$DesignationModelImpl;

  factory _DesignationModel.fromJson(Map<String, dynamic> json) =
      _$DesignationModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DesignationModelImplCopyWith<_$DesignationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserLocationModel _$UserLocationModelFromJson(Map<String, dynamic> json) {
  return _UserLocationModel.fromJson(json);
}

/// @nodoc
mixin _$UserLocationModel {
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLocationModelCopyWith<UserLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationModelCopyWith<$Res> {
  factory $UserLocationModelCopyWith(
          UserLocationModel value, $Res Function(UserLocationModel) then) =
      _$UserLocationModelCopyWithImpl<$Res, UserLocationModel>;
  @useResult
  $Res call({String? address1, String? address2});
}

/// @nodoc
class _$UserLocationModelCopyWithImpl<$Res, $Val extends UserLocationModel>
    implements $UserLocationModelCopyWith<$Res> {
  _$UserLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
  }) {
    return _then(_value.copyWith(
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLocationModelImplCopyWith<$Res>
    implements $UserLocationModelCopyWith<$Res> {
  factory _$$UserLocationModelImplCopyWith(_$UserLocationModelImpl value,
          $Res Function(_$UserLocationModelImpl) then) =
      __$$UserLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? address1, String? address2});
}

/// @nodoc
class __$$UserLocationModelImplCopyWithImpl<$Res>
    extends _$UserLocationModelCopyWithImpl<$Res, _$UserLocationModelImpl>
    implements _$$UserLocationModelImplCopyWith<$Res> {
  __$$UserLocationModelImplCopyWithImpl(_$UserLocationModelImpl _value,
      $Res Function(_$UserLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
  }) {
    return _then(_$UserLocationModelImpl(
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLocationModelImpl implements _UserLocationModel {
  const _$UserLocationModelImpl({this.address1, this.address2});

  factory _$UserLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLocationModelImplFromJson(json);

  @override
  final String? address1;
  @override
  final String? address2;

  @override
  String toString() {
    return 'UserLocationModel(address1: $address1, address2: $address2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocationModelImpl &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address1, address2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLocationModelImplCopyWith<_$UserLocationModelImpl> get copyWith =>
      __$$UserLocationModelImplCopyWithImpl<_$UserLocationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLocationModelImplToJson(
      this,
    );
  }
}

abstract class _UserLocationModel implements UserLocationModel {
  const factory _UserLocationModel(
      {final String? address1,
      final String? address2}) = _$UserLocationModelImpl;

  factory _UserLocationModel.fromJson(Map<String, dynamic> json) =
      _$UserLocationModelImpl.fromJson;

  @override
  String? get address1;
  @override
  String? get address2;
  @override
  @JsonKey(ignore: true)
  _$$UserLocationModelImplCopyWith<_$UserLocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
