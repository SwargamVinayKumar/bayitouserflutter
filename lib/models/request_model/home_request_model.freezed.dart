// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationHomeRequestModel _$RegistrationHomeRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RegistrationHomeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RegistrationHomeRequestModel {
  String? get homeId => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get homeImage => throw _privateConstructorUsedError;
  String? get homeType => throw _privateConstructorUsedError;
  String? get homeLicence => throw _privateConstructorUsedError;
  String? get homeName => throw _privateConstructorUsedError;
  String? get aboutHome => throw _privateConstructorUsedError;
  List<ImageDataModel>? get images => throw _privateConstructorUsedError;
  List<String>? get amenities => throw _privateConstructorUsedError;
  List<String>? get rules => throw _privateConstructorUsedError;
  List<FaqModel>? get faq => throw _privateConstructorUsedError;
  String? get checkInTime => throw _privateConstructorUsedError;
  String? get checkOutTime => throw _privateConstructorUsedError;
  String? get gstIn => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  List<DocumentDataModel>? get kycDocuments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationHomeRequestModelCopyWith<RegistrationHomeRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationHomeRequestModelCopyWith<$Res> {
  factory $RegistrationHomeRequestModelCopyWith(
          RegistrationHomeRequestModel value,
          $Res Function(RegistrationHomeRequestModel) then) =
      _$RegistrationHomeRequestModelCopyWithImpl<$Res,
          RegistrationHomeRequestModel>;
  @useResult
  $Res call(
      {String? homeId,
      String? mobile,
      String? name,
      String? email,
      String? homeImage,
      String? homeType,
      String? homeLicence,
      String? homeName,
      String? aboutHome,
      List<ImageDataModel>? images,
      List<String>? amenities,
      List<String>? rules,
      List<FaqModel>? faq,
      String? checkInTime,
      String? checkOutTime,
      String? gstIn,
      LocationModel? location,
      List<DocumentDataModel>? kycDocuments});

  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$RegistrationHomeRequestModelCopyWithImpl<$Res,
        $Val extends RegistrationHomeRequestModel>
    implements $RegistrationHomeRequestModelCopyWith<$Res> {
  _$RegistrationHomeRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeId = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? homeImage = freezed,
    Object? homeType = freezed,
    Object? homeLicence = freezed,
    Object? homeName = freezed,
    Object? aboutHome = freezed,
    Object? images = freezed,
    Object? amenities = freezed,
    Object? rules = freezed,
    Object? faq = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? gstIn = freezed,
    Object? location = freezed,
    Object? kycDocuments = freezed,
  }) {
    return _then(_value.copyWith(
      homeId: freezed == homeId
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      homeImage: freezed == homeImage
          ? _value.homeImage
          : homeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      homeType: freezed == homeType
          ? _value.homeType
          : homeType // ignore: cast_nullable_to_non_nullable
              as String?,
      homeLicence: freezed == homeLicence
          ? _value.homeLicence
          : homeLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      homeName: freezed == homeName
          ? _value.homeName
          : homeName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutHome: freezed == aboutHome
          ? _value.aboutHome
          : aboutHome // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDataModel>?,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      faq: freezed == faq
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<FaqModel>?,
      checkInTime: freezed == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOutTime: freezed == checkOutTime
          ? _value.checkOutTime
          : checkOutTime // ignore: cast_nullable_to_non_nullable
              as String?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      kycDocuments: freezed == kycDocuments
          ? _value.kycDocuments
          : kycDocuments // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationHomeRequestModelImplCopyWith<$Res>
    implements $RegistrationHomeRequestModelCopyWith<$Res> {
  factory _$$RegistrationHomeRequestModelImplCopyWith(
          _$RegistrationHomeRequestModelImpl value,
          $Res Function(_$RegistrationHomeRequestModelImpl) then) =
      __$$RegistrationHomeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? homeId,
      String? mobile,
      String? name,
      String? email,
      String? homeImage,
      String? homeType,
      String? homeLicence,
      String? homeName,
      String? aboutHome,
      List<ImageDataModel>? images,
      List<String>? amenities,
      List<String>? rules,
      List<FaqModel>? faq,
      String? checkInTime,
      String? checkOutTime,
      String? gstIn,
      LocationModel? location,
      List<DocumentDataModel>? kycDocuments});

  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$RegistrationHomeRequestModelImplCopyWithImpl<$Res>
    extends _$RegistrationHomeRequestModelCopyWithImpl<$Res,
        _$RegistrationHomeRequestModelImpl>
    implements _$$RegistrationHomeRequestModelImplCopyWith<$Res> {
  __$$RegistrationHomeRequestModelImplCopyWithImpl(
      _$RegistrationHomeRequestModelImpl _value,
      $Res Function(_$RegistrationHomeRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeId = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? homeImage = freezed,
    Object? homeType = freezed,
    Object? homeLicence = freezed,
    Object? homeName = freezed,
    Object? aboutHome = freezed,
    Object? images = freezed,
    Object? amenities = freezed,
    Object? rules = freezed,
    Object? faq = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? gstIn = freezed,
    Object? location = freezed,
    Object? kycDocuments = freezed,
  }) {
    return _then(_$RegistrationHomeRequestModelImpl(
      homeId: freezed == homeId
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      homeImage: freezed == homeImage
          ? _value.homeImage
          : homeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      homeType: freezed == homeType
          ? _value.homeType
          : homeType // ignore: cast_nullable_to_non_nullable
              as String?,
      homeLicence: freezed == homeLicence
          ? _value.homeLicence
          : homeLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      homeName: freezed == homeName
          ? _value.homeName
          : homeName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutHome: freezed == aboutHome
          ? _value.aboutHome
          : aboutHome // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDataModel>?,
      amenities: freezed == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rules: freezed == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      faq: freezed == faq
          ? _value._faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<FaqModel>?,
      checkInTime: freezed == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOutTime: freezed == checkOutTime
          ? _value.checkOutTime
          : checkOutTime // ignore: cast_nullable_to_non_nullable
              as String?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      kycDocuments: freezed == kycDocuments
          ? _value._kycDocuments
          : kycDocuments // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationHomeRequestModelImpl
    implements _RegistrationHomeRequestModel {
  const _$RegistrationHomeRequestModelImpl(
      {this.homeId,
      this.mobile,
      this.name,
      this.email,
      this.homeImage,
      this.homeType,
      this.homeLicence,
      this.homeName,
      this.aboutHome,
      final List<ImageDataModel>? images,
      final List<String>? amenities,
      final List<String>? rules,
      final List<FaqModel>? faq,
      this.checkInTime,
      this.checkOutTime,
      this.gstIn,
      this.location,
      final List<DocumentDataModel>? kycDocuments})
      : _images = images,
        _amenities = amenities,
        _rules = rules,
        _faq = faq,
        _kycDocuments = kycDocuments;

  factory _$RegistrationHomeRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegistrationHomeRequestModelImplFromJson(json);

  @override
  final String? homeId;
  @override
  final String? mobile;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? homeImage;
  @override
  final String? homeType;
  @override
  final String? homeLicence;
  @override
  final String? homeName;
  @override
  final String? aboutHome;
  final List<ImageDataModel>? _images;
  @override
  List<ImageDataModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _amenities;
  @override
  List<String>? get amenities {
    final value = _amenities;
    if (value == null) return null;
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _rules;
  @override
  List<String>? get rules {
    final value = _rules;
    if (value == null) return null;
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FaqModel>? _faq;
  @override
  List<FaqModel>? get faq {
    final value = _faq;
    if (value == null) return null;
    if (_faq is EqualUnmodifiableListView) return _faq;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? checkInTime;
  @override
  final String? checkOutTime;
  @override
  final String? gstIn;
  @override
  final LocationModel? location;
  final List<DocumentDataModel>? _kycDocuments;
  @override
  List<DocumentDataModel>? get kycDocuments {
    final value = _kycDocuments;
    if (value == null) return null;
    if (_kycDocuments is EqualUnmodifiableListView) return _kycDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegistrationHomeRequestModel(homeId: $homeId, mobile: $mobile, name: $name, email: $email, homeImage: $homeImage, homeType: $homeType, homeLicence: $homeLicence, homeName: $homeName, aboutHome: $aboutHome, images: $images, amenities: $amenities, rules: $rules, faq: $faq, checkInTime: $checkInTime, checkOutTime: $checkOutTime, gstIn: $gstIn, location: $location, kycDocuments: $kycDocuments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationHomeRequestModelImpl &&
            (identical(other.homeId, homeId) || other.homeId == homeId) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.homeImage, homeImage) ||
                other.homeImage == homeImage) &&
            (identical(other.homeType, homeType) ||
                other.homeType == homeType) &&
            (identical(other.homeLicence, homeLicence) ||
                other.homeLicence == homeLicence) &&
            (identical(other.homeName, homeName) ||
                other.homeName == homeName) &&
            (identical(other.aboutHome, aboutHome) ||
                other.aboutHome == aboutHome) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            const DeepCollectionEquality().equals(other._faq, _faq) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime) &&
            (identical(other.gstIn, gstIn) || other.gstIn == gstIn) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._kycDocuments, _kycDocuments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      homeId,
      mobile,
      name,
      email,
      homeImage,
      homeType,
      homeLicence,
      homeName,
      aboutHome,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_amenities),
      const DeepCollectionEquality().hash(_rules),
      const DeepCollectionEquality().hash(_faq),
      checkInTime,
      checkOutTime,
      gstIn,
      location,
      const DeepCollectionEquality().hash(_kycDocuments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationHomeRequestModelImplCopyWith<
          _$RegistrationHomeRequestModelImpl>
      get copyWith => __$$RegistrationHomeRequestModelImplCopyWithImpl<
          _$RegistrationHomeRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationHomeRequestModelImplToJson(
      this,
    );
  }
}

abstract class _RegistrationHomeRequestModel
    implements RegistrationHomeRequestModel {
  const factory _RegistrationHomeRequestModel(
          {final String? homeId,
          final String? mobile,
          final String? name,
          final String? email,
          final String? homeImage,
          final String? homeType,
          final String? homeLicence,
          final String? homeName,
          final String? aboutHome,
          final List<ImageDataModel>? images,
          final List<String>? amenities,
          final List<String>? rules,
          final List<FaqModel>? faq,
          final String? checkInTime,
          final String? checkOutTime,
          final String? gstIn,
          final LocationModel? location,
          final List<DocumentDataModel>? kycDocuments}) =
      _$RegistrationHomeRequestModelImpl;

  factory _RegistrationHomeRequestModel.fromJson(Map<String, dynamic> json) =
      _$RegistrationHomeRequestModelImpl.fromJson;

  @override
  String? get homeId;
  @override
  String? get mobile;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get homeImage;
  @override
  String? get homeType;
  @override
  String? get homeLicence;
  @override
  String? get homeName;
  @override
  String? get aboutHome;
  @override
  List<ImageDataModel>? get images;
  @override
  List<String>? get amenities;
  @override
  List<String>? get rules;
  @override
  List<FaqModel>? get faq;
  @override
  String? get checkInTime;
  @override
  String? get checkOutTime;
  @override
  String? get gstIn;
  @override
  LocationModel? get location;
  @override
  List<DocumentDataModel>? get kycDocuments;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationHomeRequestModelImplCopyWith<
          _$RegistrationHomeRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegistrationPgRequestModel _$RegistrationPgRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RegistrationPgRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RegistrationPgRequestModel {
  String? get pgId => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get pgImage => throw _privateConstructorUsedError;
  String? get pgType => throw _privateConstructorUsedError;
  String? get pgLicence => throw _privateConstructorUsedError;
  String? get pgName => throw _privateConstructorUsedError;
  String? get aboutPg => throw _privateConstructorUsedError;
  List<ImageDataModel>? get images => throw _privateConstructorUsedError;
  List<String>? get amenities => throw _privateConstructorUsedError;
  List<String>? get rules => throw _privateConstructorUsedError;
  List<FaqModel>? get faq => throw _privateConstructorUsedError;
  String? get checkInTime => throw _privateConstructorUsedError;
  String? get checkOutTime => throw _privateConstructorUsedError;
  String? get gstIn => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  List<DocumentDataModel>? get kycDocuments =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationPgRequestModelCopyWith<RegistrationPgRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationPgRequestModelCopyWith<$Res> {
  factory $RegistrationPgRequestModelCopyWith(RegistrationPgRequestModel value,
          $Res Function(RegistrationPgRequestModel) then) =
      _$RegistrationPgRequestModelCopyWithImpl<$Res,
          RegistrationPgRequestModel>;
  @useResult
  $Res call(
      {String? pgId,
      String? mobile,
      String? name,
      String? email,
      String? pgImage,
      String? pgType,
      String? pgLicence,
      String? pgName,
      String? aboutPg,
      List<ImageDataModel>? images,
      List<String>? amenities,
      List<String>? rules,
      List<FaqModel>? faq,
      String? checkInTime,
      String? checkOutTime,
      String? gstIn,
      LocationModel? location,
      List<DocumentDataModel>? kycDocuments});

  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$RegistrationPgRequestModelCopyWithImpl<$Res,
        $Val extends RegistrationPgRequestModel>
    implements $RegistrationPgRequestModelCopyWith<$Res> {
  _$RegistrationPgRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pgId = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? pgImage = freezed,
    Object? pgType = freezed,
    Object? pgLicence = freezed,
    Object? pgName = freezed,
    Object? aboutPg = freezed,
    Object? images = freezed,
    Object? amenities = freezed,
    Object? rules = freezed,
    Object? faq = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? gstIn = freezed,
    Object? location = freezed,
    Object? kycDocuments = freezed,
  }) {
    return _then(_value.copyWith(
      pgId: freezed == pgId
          ? _value.pgId
          : pgId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      pgImage: freezed == pgImage
          ? _value.pgImage
          : pgImage // ignore: cast_nullable_to_non_nullable
              as String?,
      pgType: freezed == pgType
          ? _value.pgType
          : pgType // ignore: cast_nullable_to_non_nullable
              as String?,
      pgLicence: freezed == pgLicence
          ? _value.pgLicence
          : pgLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      pgName: freezed == pgName
          ? _value.pgName
          : pgName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutPg: freezed == aboutPg
          ? _value.aboutPg
          : aboutPg // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDataModel>?,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      faq: freezed == faq
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<FaqModel>?,
      checkInTime: freezed == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOutTime: freezed == checkOutTime
          ? _value.checkOutTime
          : checkOutTime // ignore: cast_nullable_to_non_nullable
              as String?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      kycDocuments: freezed == kycDocuments
          ? _value.kycDocuments
          : kycDocuments // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationPgRequestModelImplCopyWith<$Res>
    implements $RegistrationPgRequestModelCopyWith<$Res> {
  factory _$$RegistrationPgRequestModelImplCopyWith(
          _$RegistrationPgRequestModelImpl value,
          $Res Function(_$RegistrationPgRequestModelImpl) then) =
      __$$RegistrationPgRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? pgId,
      String? mobile,
      String? name,
      String? email,
      String? pgImage,
      String? pgType,
      String? pgLicence,
      String? pgName,
      String? aboutPg,
      List<ImageDataModel>? images,
      List<String>? amenities,
      List<String>? rules,
      List<FaqModel>? faq,
      String? checkInTime,
      String? checkOutTime,
      String? gstIn,
      LocationModel? location,
      List<DocumentDataModel>? kycDocuments});

  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$RegistrationPgRequestModelImplCopyWithImpl<$Res>
    extends _$RegistrationPgRequestModelCopyWithImpl<$Res,
        _$RegistrationPgRequestModelImpl>
    implements _$$RegistrationPgRequestModelImplCopyWith<$Res> {
  __$$RegistrationPgRequestModelImplCopyWithImpl(
      _$RegistrationPgRequestModelImpl _value,
      $Res Function(_$RegistrationPgRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pgId = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? pgImage = freezed,
    Object? pgType = freezed,
    Object? pgLicence = freezed,
    Object? pgName = freezed,
    Object? aboutPg = freezed,
    Object? images = freezed,
    Object? amenities = freezed,
    Object? rules = freezed,
    Object? faq = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? gstIn = freezed,
    Object? location = freezed,
    Object? kycDocuments = freezed,
  }) {
    return _then(_$RegistrationPgRequestModelImpl(
      pgId: freezed == pgId
          ? _value.pgId
          : pgId // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      pgImage: freezed == pgImage
          ? _value.pgImage
          : pgImage // ignore: cast_nullable_to_non_nullable
              as String?,
      pgType: freezed == pgType
          ? _value.pgType
          : pgType // ignore: cast_nullable_to_non_nullable
              as String?,
      pgLicence: freezed == pgLicence
          ? _value.pgLicence
          : pgLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      pgName: freezed == pgName
          ? _value.pgName
          : pgName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutPg: freezed == aboutPg
          ? _value.aboutPg
          : aboutPg // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDataModel>?,
      amenities: freezed == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rules: freezed == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      faq: freezed == faq
          ? _value._faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<FaqModel>?,
      checkInTime: freezed == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOutTime: freezed == checkOutTime
          ? _value.checkOutTime
          : checkOutTime // ignore: cast_nullable_to_non_nullable
              as String?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      kycDocuments: freezed == kycDocuments
          ? _value._kycDocuments
          : kycDocuments // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationPgRequestModelImpl implements _RegistrationPgRequestModel {
  const _$RegistrationPgRequestModelImpl(
      {this.pgId,
      this.mobile,
      this.name,
      this.email,
      this.pgImage,
      this.pgType,
      this.pgLicence,
      this.pgName,
      this.aboutPg,
      final List<ImageDataModel>? images,
      final List<String>? amenities,
      final List<String>? rules,
      final List<FaqModel>? faq,
      this.checkInTime,
      this.checkOutTime,
      this.gstIn,
      this.location,
      final List<DocumentDataModel>? kycDocuments})
      : _images = images,
        _amenities = amenities,
        _rules = rules,
        _faq = faq,
        _kycDocuments = kycDocuments;

  factory _$RegistrationPgRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegistrationPgRequestModelImplFromJson(json);

  @override
  final String? pgId;
  @override
  final String? mobile;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? pgImage;
  @override
  final String? pgType;
  @override
  final String? pgLicence;
  @override
  final String? pgName;
  @override
  final String? aboutPg;
  final List<ImageDataModel>? _images;
  @override
  List<ImageDataModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _amenities;
  @override
  List<String>? get amenities {
    final value = _amenities;
    if (value == null) return null;
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _rules;
  @override
  List<String>? get rules {
    final value = _rules;
    if (value == null) return null;
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FaqModel>? _faq;
  @override
  List<FaqModel>? get faq {
    final value = _faq;
    if (value == null) return null;
    if (_faq is EqualUnmodifiableListView) return _faq;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? checkInTime;
  @override
  final String? checkOutTime;
  @override
  final String? gstIn;
  @override
  final LocationModel? location;
  final List<DocumentDataModel>? _kycDocuments;
  @override
  List<DocumentDataModel>? get kycDocuments {
    final value = _kycDocuments;
    if (value == null) return null;
    if (_kycDocuments is EqualUnmodifiableListView) return _kycDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegistrationPgRequestModel(pgId: $pgId, mobile: $mobile, name: $name, email: $email, pgImage: $pgImage, pgType: $pgType, pgLicence: $pgLicence, pgName: $pgName, aboutPg: $aboutPg, images: $images, amenities: $amenities, rules: $rules, faq: $faq, checkInTime: $checkInTime, checkOutTime: $checkOutTime, gstIn: $gstIn, location: $location, kycDocuments: $kycDocuments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationPgRequestModelImpl &&
            (identical(other.pgId, pgId) || other.pgId == pgId) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.pgImage, pgImage) || other.pgImage == pgImage) &&
            (identical(other.pgType, pgType) || other.pgType == pgType) &&
            (identical(other.pgLicence, pgLicence) ||
                other.pgLicence == pgLicence) &&
            (identical(other.pgName, pgName) || other.pgName == pgName) &&
            (identical(other.aboutPg, aboutPg) || other.aboutPg == aboutPg) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            const DeepCollectionEquality().equals(other._faq, _faq) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime) &&
            (identical(other.gstIn, gstIn) || other.gstIn == gstIn) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other._kycDocuments, _kycDocuments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pgId,
      mobile,
      name,
      email,
      pgImage,
      pgType,
      pgLicence,
      pgName,
      aboutPg,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_amenities),
      const DeepCollectionEquality().hash(_rules),
      const DeepCollectionEquality().hash(_faq),
      checkInTime,
      checkOutTime,
      gstIn,
      location,
      const DeepCollectionEquality().hash(_kycDocuments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationPgRequestModelImplCopyWith<_$RegistrationPgRequestModelImpl>
      get copyWith => __$$RegistrationPgRequestModelImplCopyWithImpl<
          _$RegistrationPgRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationPgRequestModelImplToJson(
      this,
    );
  }
}

abstract class _RegistrationPgRequestModel
    implements RegistrationPgRequestModel {
  const factory _RegistrationPgRequestModel(
          {final String? pgId,
          final String? mobile,
          final String? name,
          final String? email,
          final String? pgImage,
          final String? pgType,
          final String? pgLicence,
          final String? pgName,
          final String? aboutPg,
          final List<ImageDataModel>? images,
          final List<String>? amenities,
          final List<String>? rules,
          final List<FaqModel>? faq,
          final String? checkInTime,
          final String? checkOutTime,
          final String? gstIn,
          final LocationModel? location,
          final List<DocumentDataModel>? kycDocuments}) =
      _$RegistrationPgRequestModelImpl;

  factory _RegistrationPgRequestModel.fromJson(Map<String, dynamic> json) =
      _$RegistrationPgRequestModelImpl.fromJson;

  @override
  String? get pgId;
  @override
  String? get mobile;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get pgImage;
  @override
  String? get pgType;
  @override
  String? get pgLicence;
  @override
  String? get pgName;
  @override
  String? get aboutPg;
  @override
  List<ImageDataModel>? get images;
  @override
  List<String>? get amenities;
  @override
  List<String>? get rules;
  @override
  List<FaqModel>? get faq;
  @override
  String? get checkInTime;
  @override
  String? get checkOutTime;
  @override
  String? get gstIn;
  @override
  LocationModel? get location;
  @override
  List<DocumentDataModel>? get kycDocuments;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationPgRequestModelImplCopyWith<_$RegistrationPgRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ListUnitRequestModel _$ListUnitRequestModelFromJson(Map<String, dynamic> json) {
  return _ListUnitRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ListUnitRequestModel {
  String? get unitId => throw _privateConstructorUsedError;
  String? get homeId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get unitNo => throw _privateConstructorUsedError;
  int? get floor => throw _privateConstructorUsedError;
  List<String>? get specialAmenities => throw _privateConstructorUsedError;
  int? get capacityCount => throw _privateConstructorUsedError;
  String? get unitType => throw _privateConstructorUsedError;
  RentModel? get rent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListUnitRequestModelCopyWith<ListUnitRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListUnitRequestModelCopyWith<$Res> {
  factory $ListUnitRequestModelCopyWith(ListUnitRequestModel value,
          $Res Function(ListUnitRequestModel) then) =
      _$ListUnitRequestModelCopyWithImpl<$Res, ListUnitRequestModel>;
  @useResult
  $Res call(
      {String? unitId,
      String? homeId,
      String? image,
      String? unitNo,
      int? floor,
      List<String>? specialAmenities,
      int? capacityCount,
      String? unitType,
      RentModel? rent});

  $RentModelCopyWith<$Res>? get rent;
}

/// @nodoc
class _$ListUnitRequestModelCopyWithImpl<$Res,
        $Val extends ListUnitRequestModel>
    implements $ListUnitRequestModelCopyWith<$Res> {
  _$ListUnitRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = freezed,
    Object? homeId = freezed,
    Object? image = freezed,
    Object? unitNo = freezed,
    Object? floor = freezed,
    Object? specialAmenities = freezed,
    Object? capacityCount = freezed,
    Object? unitType = freezed,
    Object? rent = freezed,
  }) {
    return _then(_value.copyWith(
      unitId: freezed == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String?,
      homeId: freezed == homeId
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      unitNo: freezed == unitNo
          ? _value.unitNo
          : unitNo // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      specialAmenities: freezed == specialAmenities
          ? _value.specialAmenities
          : specialAmenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      capacityCount: freezed == capacityCount
          ? _value.capacityCount
          : capacityCount // ignore: cast_nullable_to_non_nullable
              as int?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String?,
      rent: freezed == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as RentModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RentModelCopyWith<$Res>? get rent {
    if (_value.rent == null) {
      return null;
    }

    return $RentModelCopyWith<$Res>(_value.rent!, (value) {
      return _then(_value.copyWith(rent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListUnitRequestModelImplCopyWith<$Res>
    implements $ListUnitRequestModelCopyWith<$Res> {
  factory _$$ListUnitRequestModelImplCopyWith(_$ListUnitRequestModelImpl value,
          $Res Function(_$ListUnitRequestModelImpl) then) =
      __$$ListUnitRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? unitId,
      String? homeId,
      String? image,
      String? unitNo,
      int? floor,
      List<String>? specialAmenities,
      int? capacityCount,
      String? unitType,
      RentModel? rent});

  @override
  $RentModelCopyWith<$Res>? get rent;
}

/// @nodoc
class __$$ListUnitRequestModelImplCopyWithImpl<$Res>
    extends _$ListUnitRequestModelCopyWithImpl<$Res, _$ListUnitRequestModelImpl>
    implements _$$ListUnitRequestModelImplCopyWith<$Res> {
  __$$ListUnitRequestModelImplCopyWithImpl(_$ListUnitRequestModelImpl _value,
      $Res Function(_$ListUnitRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unitId = freezed,
    Object? homeId = freezed,
    Object? image = freezed,
    Object? unitNo = freezed,
    Object? floor = freezed,
    Object? specialAmenities = freezed,
    Object? capacityCount = freezed,
    Object? unitType = freezed,
    Object? rent = freezed,
  }) {
    return _then(_$ListUnitRequestModelImpl(
      unitId: freezed == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as String?,
      homeId: freezed == homeId
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      unitNo: freezed == unitNo
          ? _value.unitNo
          : unitNo // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      specialAmenities: freezed == specialAmenities
          ? _value._specialAmenities
          : specialAmenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      capacityCount: freezed == capacityCount
          ? _value.capacityCount
          : capacityCount // ignore: cast_nullable_to_non_nullable
              as int?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String?,
      rent: freezed == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as RentModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListUnitRequestModelImpl implements _ListUnitRequestModel {
  const _$ListUnitRequestModelImpl(
      {required this.unitId,
      required this.homeId,
      required this.image,
      required this.unitNo,
      required this.floor,
      required final List<String>? specialAmenities,
      required this.capacityCount,
      required this.unitType,
      required this.rent})
      : _specialAmenities = specialAmenities;

  factory _$ListUnitRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListUnitRequestModelImplFromJson(json);

  @override
  final String? unitId;
  @override
  final String? homeId;
  @override
  final String? image;
  @override
  final String? unitNo;
  @override
  final int? floor;
  final List<String>? _specialAmenities;
  @override
  List<String>? get specialAmenities {
    final value = _specialAmenities;
    if (value == null) return null;
    if (_specialAmenities is EqualUnmodifiableListView)
      return _specialAmenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? capacityCount;
  @override
  final String? unitType;
  @override
  final RentModel? rent;

  @override
  String toString() {
    return 'ListUnitRequestModel(unitId: $unitId, homeId: $homeId, image: $image, unitNo: $unitNo, floor: $floor, specialAmenities: $specialAmenities, capacityCount: $capacityCount, unitType: $unitType, rent: $rent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListUnitRequestModelImpl &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.homeId, homeId) || other.homeId == homeId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.unitNo, unitNo) || other.unitNo == unitNo) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            const DeepCollectionEquality()
                .equals(other._specialAmenities, _specialAmenities) &&
            (identical(other.capacityCount, capacityCount) ||
                other.capacityCount == capacityCount) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.rent, rent) || other.rent == rent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      unitId,
      homeId,
      image,
      unitNo,
      floor,
      const DeepCollectionEquality().hash(_specialAmenities),
      capacityCount,
      unitType,
      rent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListUnitRequestModelImplCopyWith<_$ListUnitRequestModelImpl>
      get copyWith =>
          __$$ListUnitRequestModelImplCopyWithImpl<_$ListUnitRequestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListUnitRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ListUnitRequestModel implements ListUnitRequestModel {
  const factory _ListUnitRequestModel(
      {required final String? unitId,
      required final String? homeId,
      required final String? image,
      required final String? unitNo,
      required final int? floor,
      required final List<String>? specialAmenities,
      required final int? capacityCount,
      required final String? unitType,
      required final RentModel? rent}) = _$ListUnitRequestModelImpl;

  factory _ListUnitRequestModel.fromJson(Map<String, dynamic> json) =
      _$ListUnitRequestModelImpl.fromJson;

  @override
  String? get unitId;
  @override
  String? get homeId;
  @override
  String? get image;
  @override
  String? get unitNo;
  @override
  int? get floor;
  @override
  List<String>? get specialAmenities;
  @override
  int? get capacityCount;
  @override
  String? get unitType;
  @override
  RentModel? get rent;
  @override
  @JsonKey(ignore: true)
  _$$ListUnitRequestModelImplCopyWith<_$ListUnitRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
