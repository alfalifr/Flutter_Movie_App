// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ARGBColorTearOff {
  const _$ARGBColorTearOff();

  _ARGBColor call(
      {required int a, required int r, required int g, required int b}) {
    return _ARGBColor(
      a: a,
      r: r,
      g: g,
      b: b,
    );
  }
}

/// @nodoc
const $ARGBColor = _$ARGBColorTearOff();

/// @nodoc
mixin _$ARGBColor {
  int get a => throw _privateConstructorUsedError;
  int get r => throw _privateConstructorUsedError;
  int get g => throw _privateConstructorUsedError;
  int get b => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ARGBColorCopyWith<ARGBColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ARGBColorCopyWith<$Res> {
  factory $ARGBColorCopyWith(ARGBColor value, $Res Function(ARGBColor) then) =
      _$ARGBColorCopyWithImpl<$Res>;
  $Res call({int a, int r, int g, int b});
}

/// @nodoc
class _$ARGBColorCopyWithImpl<$Res> implements $ARGBColorCopyWith<$Res> {
  _$ARGBColorCopyWithImpl(this._value, this._then);

  final ARGBColor _value;
  // ignore: unused_field
  final $Res Function(ARGBColor) _then;

  @override
  $Res call({
    Object? a = freezed,
    Object? r = freezed,
    Object? g = freezed,
    Object? b = freezed,
  }) {
    return _then(_value.copyWith(
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as int,
      g: g == freezed
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as int,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ARGBColorCopyWith<$Res> implements $ARGBColorCopyWith<$Res> {
  factory _$ARGBColorCopyWith(
          _ARGBColor value, $Res Function(_ARGBColor) then) =
      __$ARGBColorCopyWithImpl<$Res>;
  @override
  $Res call({int a, int r, int g, int b});
}

/// @nodoc
class __$ARGBColorCopyWithImpl<$Res> extends _$ARGBColorCopyWithImpl<$Res>
    implements _$ARGBColorCopyWith<$Res> {
  __$ARGBColorCopyWithImpl(_ARGBColor _value, $Res Function(_ARGBColor) _then)
      : super(_value, (v) => _then(v as _ARGBColor));

  @override
  _ARGBColor get _value => super._value as _ARGBColor;

  @override
  $Res call({
    Object? a = freezed,
    Object? r = freezed,
    Object? g = freezed,
    Object? b = freezed,
  }) {
    return _then(_ARGBColor(
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as int,
      g: g == freezed
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as int,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ARGBColor implements _ARGBColor {
  const _$_ARGBColor(
      {required this.a, required this.r, required this.g, required this.b});

  @override
  final int a;
  @override
  final int r;
  @override
  final int g;
  @override
  final int b;

  @override
  String toString() {
    return 'ARGBColor(a: $a, r: $r, g: $g, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ARGBColor &&
            (identical(other.a, a) ||
                const DeepCollectionEquality().equals(other.a, a)) &&
            (identical(other.r, r) ||
                const DeepCollectionEquality().equals(other.r, r)) &&
            (identical(other.g, g) ||
                const DeepCollectionEquality().equals(other.g, g)) &&
            (identical(other.b, b) ||
                const DeepCollectionEquality().equals(other.b, b)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(a) ^
      const DeepCollectionEquality().hash(r) ^
      const DeepCollectionEquality().hash(g) ^
      const DeepCollectionEquality().hash(b);

  @JsonKey(ignore: true)
  @override
  _$ARGBColorCopyWith<_ARGBColor> get copyWith =>
      __$ARGBColorCopyWithImpl<_ARGBColor>(this, _$identity);
}

abstract class _ARGBColor implements ARGBColor {
  const factory _ARGBColor(
      {required int a,
      required int r,
      required int g,
      required int b}) = _$_ARGBColor;

  @override
  int get a => throw _privateConstructorUsedError;
  @override
  int get r => throw _privateConstructorUsedError;
  @override
  int get g => throw _privateConstructorUsedError;
  @override
  int get b => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ARGBColorCopyWith<_ARGBColor> get copyWith =>
      throw _privateConstructorUsedError;
}
