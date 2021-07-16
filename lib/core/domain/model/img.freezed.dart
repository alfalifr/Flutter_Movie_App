// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'img.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImgData _$ImgDataFromJson(Map<String, dynamic> json) {
  return _ImgData.fromJson(json);
}

/// @nodoc
class _$ImgDataTearOff {
  const _$ImgDataTearOff();

  _ImgData call(
      {required String link,
      String? package,
      required bool isLocal,
      num? width,
      num? height}) {
    return _ImgData(
      link: link,
      package: package,
      isLocal: isLocal,
      width: width,
      height: height,
    );
  }

  ImgData fromJson(Map<String, Object> json) {
    return ImgData.fromJson(json);
  }
}

/// @nodoc
const $ImgData = _$ImgDataTearOff();

/// @nodoc
mixin _$ImgData {
  String get link => throw _privateConstructorUsedError;
  String? get package => throw _privateConstructorUsedError;
  bool get isLocal => throw _privateConstructorUsedError;
  num? get width => throw _privateConstructorUsedError;
  num? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImgDataCopyWith<ImgData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImgDataCopyWith<$Res> {
  factory $ImgDataCopyWith(ImgData value, $Res Function(ImgData) then) =
      _$ImgDataCopyWithImpl<$Res>;
  $Res call(
      {String link, String? package, bool isLocal, num? width, num? height});
}

/// @nodoc
class _$ImgDataCopyWithImpl<$Res> implements $ImgDataCopyWith<$Res> {
  _$ImgDataCopyWithImpl(this._value, this._then);

  final ImgData _value;
  // ignore: unused_field
  final $Res Function(ImgData) _then;

  @override
  $Res call({
    Object? link = freezed,
    Object? package = freezed,
    Object? isLocal = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocal: isLocal == freezed
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
abstract class _$ImgDataCopyWith<$Res> implements $ImgDataCopyWith<$Res> {
  factory _$ImgDataCopyWith(_ImgData value, $Res Function(_ImgData) then) =
      __$ImgDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String link, String? package, bool isLocal, num? width, num? height});
}

/// @nodoc
class __$ImgDataCopyWithImpl<$Res> extends _$ImgDataCopyWithImpl<$Res>
    implements _$ImgDataCopyWith<$Res> {
  __$ImgDataCopyWithImpl(_ImgData _value, $Res Function(_ImgData) _then)
      : super(_value, (v) => _then(v as _ImgData));

  @override
  _ImgData get _value => super._value as _ImgData;

  @override
  $Res call({
    Object? link = freezed,
    Object? package = freezed,
    Object? isLocal = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_ImgData(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String?,
      isLocal: isLocal == freezed
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImgData implements _ImgData {
  const _$_ImgData(
      {required this.link,
      this.package,
      required this.isLocal,
      this.width,
      this.height});

  factory _$_ImgData.fromJson(Map<String, dynamic> json) =>
      _$_$_ImgDataFromJson(json);

  @override
  final String link;
  @override
  final String? package;
  @override
  final bool isLocal;
  @override
  final num? width;
  @override
  final num? height;

  @override
  String toString() {
    return 'ImgData(link: $link, package: $package, isLocal: $isLocal, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImgData &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.package, package) ||
                const DeepCollectionEquality()
                    .equals(other.package, package)) &&
            (identical(other.isLocal, isLocal) ||
                const DeepCollectionEquality()
                    .equals(other.isLocal, isLocal)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(package) ^
      const DeepCollectionEquality().hash(isLocal) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(height);

  @JsonKey(ignore: true)
  @override
  _$ImgDataCopyWith<_ImgData> get copyWith =>
      __$ImgDataCopyWithImpl<_ImgData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImgDataToJson(this);
  }
}

abstract class _ImgData implements ImgData {
  const factory _ImgData(
      {required String link,
      String? package,
      required bool isLocal,
      num? width,
      num? height}) = _$_ImgData;

  factory _ImgData.fromJson(Map<String, dynamic> json) = _$_ImgData.fromJson;

  @override
  String get link => throw _privateConstructorUsedError;
  @override
  String? get package => throw _privateConstructorUsedError;
  @override
  bool get isLocal => throw _privateConstructorUsedError;
  @override
  num? get width => throw _privateConstructorUsedError;
  @override
  num? get height => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImgDataCopyWith<_ImgData> get copyWith =>
      throw _privateConstructorUsedError;
}
