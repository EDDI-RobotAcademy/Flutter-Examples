// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kakao_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KakaoPhoto _$KakaoPhotoFromJson(Map<String, dynamic> json) {
  return _KakaoPhoto.fromJson(json);
}

/// @nodoc
mixin _$KakaoPhoto {
  String get image_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KakaoPhotoCopyWith<KakaoPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KakaoPhotoCopyWith<$Res> {
  factory $KakaoPhotoCopyWith(
          KakaoPhoto value, $Res Function(KakaoPhoto) then) =
      _$KakaoPhotoCopyWithImpl<$Res>;
  $Res call({String image_url});
}

/// @nodoc
class _$KakaoPhotoCopyWithImpl<$Res> implements $KakaoPhotoCopyWith<$Res> {
  _$KakaoPhotoCopyWithImpl(this._value, this._then);

  final KakaoPhoto _value;
  // ignore: unused_field
  final $Res Function(KakaoPhoto) _then;

  @override
  $Res call({
    Object? image_url = freezed,
  }) {
    return _then(_value.copyWith(
      image_url: image_url == freezed
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$KakaoPhotoCopyWith<$Res> implements $KakaoPhotoCopyWith<$Res> {
  factory _$KakaoPhotoCopyWith(
          _KakaoPhoto value, $Res Function(_KakaoPhoto) then) =
      __$KakaoPhotoCopyWithImpl<$Res>;
  @override
  $Res call({String image_url});
}

/// @nodoc
class __$KakaoPhotoCopyWithImpl<$Res> extends _$KakaoPhotoCopyWithImpl<$Res>
    implements _$KakaoPhotoCopyWith<$Res> {
  __$KakaoPhotoCopyWithImpl(
      _KakaoPhoto _value, $Res Function(_KakaoPhoto) _then)
      : super(_value, (v) => _then(v as _KakaoPhoto));

  @override
  _KakaoPhoto get _value => super._value as _KakaoPhoto;

  @override
  $Res call({
    Object? image_url = freezed,
  }) {
    return _then(_KakaoPhoto(
      image_url: image_url == freezed
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KakaoPhoto implements _KakaoPhoto {
  _$_KakaoPhoto({required this.image_url});

  factory _$_KakaoPhoto.fromJson(Map<String, dynamic> json) =>
      _$$_KakaoPhotoFromJson(json);

  @override
  final String image_url;

  @override
  String toString() {
    return 'KakaoPhoto(image_url: $image_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KakaoPhoto &&
            const DeepCollectionEquality().equals(other.image_url, image_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image_url));

  @JsonKey(ignore: true)
  @override
  _$KakaoPhotoCopyWith<_KakaoPhoto> get copyWith =>
      __$KakaoPhotoCopyWithImpl<_KakaoPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KakaoPhotoToJson(this);
  }
}

abstract class _KakaoPhoto implements KakaoPhoto {
  factory _KakaoPhoto({required final String image_url}) = _$_KakaoPhoto;

  factory _KakaoPhoto.fromJson(Map<String, dynamic> json) =
      _$_KakaoPhoto.fromJson;

  @override
  String get image_url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$KakaoPhotoCopyWith<_KakaoPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}
