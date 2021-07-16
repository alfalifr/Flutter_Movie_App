// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_credits_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieCreditsResponse _$MovieCreditsResponseFromJson(Map<String, dynamic> json) {
  return _MovieCreditsResponse.fromJson(json);
}

/// @nodoc
class _$MovieCreditsResponseTearOff {
  const _$MovieCreditsResponseTearOff();

  _MovieCreditsResponse call(
      {@JsonKey(name: "id") required String movie_id,
      required List<MovieCastResponse> cast}) {
    return _MovieCreditsResponse(
      movie_id: movie_id,
      cast: cast,
    );
  }

  MovieCreditsResponse fromJson(Map<String, Object> json) {
    return MovieCreditsResponse.fromJson(json);
  }
}

/// @nodoc
const $MovieCreditsResponse = _$MovieCreditsResponseTearOff();

/// @nodoc
mixin _$MovieCreditsResponse {
  @JsonKey(name: "id")
  String get movie_id => throw _privateConstructorUsedError;
  List<MovieCastResponse> get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCreditsResponseCopyWith<MovieCreditsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCreditsResponseCopyWith<$Res> {
  factory $MovieCreditsResponseCopyWith(MovieCreditsResponse value,
          $Res Function(MovieCreditsResponse) then) =
      _$MovieCreditsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String movie_id, List<MovieCastResponse> cast});
}

/// @nodoc
class _$MovieCreditsResponseCopyWithImpl<$Res>
    implements $MovieCreditsResponseCopyWith<$Res> {
  _$MovieCreditsResponseCopyWithImpl(this._value, this._then);

  final MovieCreditsResponse _value;
  // ignore: unused_field
  final $Res Function(MovieCreditsResponse) _then;

  @override
  $Res call({
    Object? movie_id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_value.copyWith(
      movie_id: movie_id == freezed
          ? _value.movie_id
          : movie_id // ignore: cast_nullable_to_non_nullable
              as String,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<MovieCastResponse>,
    ));
  }
}

/// @nodoc
abstract class _$MovieCreditsResponseCopyWith<$Res>
    implements $MovieCreditsResponseCopyWith<$Res> {
  factory _$MovieCreditsResponseCopyWith(_MovieCreditsResponse value,
          $Res Function(_MovieCreditsResponse) then) =
      __$MovieCreditsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String movie_id, List<MovieCastResponse> cast});
}

/// @nodoc
class __$MovieCreditsResponseCopyWithImpl<$Res>
    extends _$MovieCreditsResponseCopyWithImpl<$Res>
    implements _$MovieCreditsResponseCopyWith<$Res> {
  __$MovieCreditsResponseCopyWithImpl(
      _MovieCreditsResponse _value, $Res Function(_MovieCreditsResponse) _then)
      : super(_value, (v) => _then(v as _MovieCreditsResponse));

  @override
  _MovieCreditsResponse get _value => super._value as _MovieCreditsResponse;

  @override
  $Res call({
    Object? movie_id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_MovieCreditsResponse(
      movie_id: movie_id == freezed
          ? _value.movie_id
          : movie_id // ignore: cast_nullable_to_non_nullable
              as String,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<MovieCastResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieCreditsResponse implements _MovieCreditsResponse {
  const _$_MovieCreditsResponse(
      {@JsonKey(name: "id") required this.movie_id, required this.cast});

  factory _$_MovieCreditsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieCreditsResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final String movie_id;
  @override
  final List<MovieCastResponse> cast;

  @override
  String toString() {
    return 'MovieCreditsResponse(movie_id: $movie_id, cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieCreditsResponse &&
            (identical(other.movie_id, movie_id) ||
                const DeepCollectionEquality()
                    .equals(other.movie_id, movie_id)) &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(movie_id) ^
      const DeepCollectionEquality().hash(cast);

  @JsonKey(ignore: true)
  @override
  _$MovieCreditsResponseCopyWith<_MovieCreditsResponse> get copyWith =>
      __$MovieCreditsResponseCopyWithImpl<_MovieCreditsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieCreditsResponseToJson(this);
  }
}

abstract class _MovieCreditsResponse implements MovieCreditsResponse {
  const factory _MovieCreditsResponse(
      {@JsonKey(name: "id") required String movie_id,
      required List<MovieCastResponse> cast}) = _$_MovieCreditsResponse;

  factory _MovieCreditsResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieCreditsResponse.fromJson;

  @override
  @JsonKey(name: "id")
  String get movie_id => throw _privateConstructorUsedError;
  @override
  List<MovieCastResponse> get cast => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieCreditsResponseCopyWith<_MovieCreditsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieCastResponse _$MovieCastResponseFromJson(Map<String, dynamic> json) {
  return _MovieCastResponse.fromJson(json);
}

/// @nodoc
class _$MovieCastResponseTearOff {
  const _$MovieCastResponseTearOff();

  _MovieCastResponse call(
      {required int id,
      required int gender,
      required String name,
      required String profile_path,
      required String character,
      required num popularity}) {
    return _MovieCastResponse(
      id: id,
      gender: gender,
      name: name,
      profile_path: profile_path,
      character: character,
      popularity: popularity,
    );
  }

  MovieCastResponse fromJson(Map<String, Object> json) {
    return MovieCastResponse.fromJson(json);
  }
}

/// @nodoc
const $MovieCastResponse = _$MovieCastResponseTearOff();

/// @nodoc
mixin _$MovieCastResponse {
  int get id => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profile_path => throw _privateConstructorUsedError;
  String get character => throw _privateConstructorUsedError;
  num get popularity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCastResponseCopyWith<MovieCastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCastResponseCopyWith<$Res> {
  factory $MovieCastResponseCopyWith(
          MovieCastResponse value, $Res Function(MovieCastResponse) then) =
      _$MovieCastResponseCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int gender,
      String name,
      String profile_path,
      String character,
      num popularity});
}

/// @nodoc
class _$MovieCastResponseCopyWithImpl<$Res>
    implements $MovieCastResponseCopyWith<$Res> {
  _$MovieCastResponseCopyWithImpl(this._value, this._then);

  final MovieCastResponse _value;
  // ignore: unused_field
  final $Res Function(MovieCastResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? gender = freezed,
    Object? name = freezed,
    Object? profile_path = freezed,
    Object? character = freezed,
    Object? popularity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile_path: profile_path == freezed
          ? _value.profile_path
          : profile_path // ignore: cast_nullable_to_non_nullable
              as String,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$MovieCastResponseCopyWith<$Res>
    implements $MovieCastResponseCopyWith<$Res> {
  factory _$MovieCastResponseCopyWith(
          _MovieCastResponse value, $Res Function(_MovieCastResponse) then) =
      __$MovieCastResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int gender,
      String name,
      String profile_path,
      String character,
      num popularity});
}

/// @nodoc
class __$MovieCastResponseCopyWithImpl<$Res>
    extends _$MovieCastResponseCopyWithImpl<$Res>
    implements _$MovieCastResponseCopyWith<$Res> {
  __$MovieCastResponseCopyWithImpl(
      _MovieCastResponse _value, $Res Function(_MovieCastResponse) _then)
      : super(_value, (v) => _then(v as _MovieCastResponse));

  @override
  _MovieCastResponse get _value => super._value as _MovieCastResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? gender = freezed,
    Object? name = freezed,
    Object? profile_path = freezed,
    Object? character = freezed,
    Object? popularity = freezed,
  }) {
    return _then(_MovieCastResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile_path: profile_path == freezed
          ? _value.profile_path
          : profile_path // ignore: cast_nullable_to_non_nullable
              as String,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieCastResponse implements _MovieCastResponse {
  const _$_MovieCastResponse(
      {required this.id,
      required this.gender,
      required this.name,
      required this.profile_path,
      required this.character,
      required this.popularity});

  factory _$_MovieCastResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieCastResponseFromJson(json);

  @override
  final int id;
  @override
  final int gender;
  @override
  final String name;
  @override
  final String profile_path;
  @override
  final String character;
  @override
  final num popularity;

  @override
  String toString() {
    return 'MovieCastResponse(id: $id, gender: $gender, name: $name, profile_path: $profile_path, character: $character, popularity: $popularity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieCastResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profile_path, profile_path) ||
                const DeepCollectionEquality()
                    .equals(other.profile_path, profile_path)) &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profile_path) ^
      const DeepCollectionEquality().hash(character) ^
      const DeepCollectionEquality().hash(popularity);

  @JsonKey(ignore: true)
  @override
  _$MovieCastResponseCopyWith<_MovieCastResponse> get copyWith =>
      __$MovieCastResponseCopyWithImpl<_MovieCastResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieCastResponseToJson(this);
  }
}

abstract class _MovieCastResponse implements MovieCastResponse {
  const factory _MovieCastResponse(
      {required int id,
      required int gender,
      required String name,
      required String profile_path,
      required String character,
      required num popularity}) = _$_MovieCastResponse;

  factory _MovieCastResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieCastResponse.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get gender => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get profile_path => throw _privateConstructorUsedError;
  @override
  String get character => throw _privateConstructorUsedError;
  @override
  num get popularity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieCastResponseCopyWith<_MovieCastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
