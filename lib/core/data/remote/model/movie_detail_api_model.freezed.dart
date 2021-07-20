// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_detail_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetailResponse _$MovieDetailResponseFromJson(Map<String, dynamic> json) {
  return _MovieDetailResponse.fromJson(json);
}

/// @nodoc
class _$MovieDetailResponseTearOff {
  const _$MovieDetailResponseTearOff();

  _MovieDetailResponse call(
      {required int id,
      required num vote_average,
      required int vote_count,
      @JsonKey(name: "original_title") required String name,
      required String? tagline,
      required String overview,
      required String homepage,
      required String? poster_path,
      required String? backdrop_path,
      @JsonKey(name: "release_date") required String? date,
      required num popularity,
      required num? runtime,
      required List<MovieDetailGenreResponse> genres,
      required List<MovieDetailCompanyResponse> production_companies}) {
    return _MovieDetailResponse(
      id: id,
      vote_average: vote_average,
      vote_count: vote_count,
      name: name,
      tagline: tagline,
      overview: overview,
      homepage: homepage,
      poster_path: poster_path,
      backdrop_path: backdrop_path,
      date: date,
      popularity: popularity,
      runtime: runtime,
      genres: genres,
      production_companies: production_companies,
    );
  }

  MovieDetailResponse fromJson(Map<String, Object> json) {
    return MovieDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $MovieDetailResponse = _$MovieDetailResponseTearOff();

/// @nodoc
mixin _$MovieDetailResponse {
  int get id => throw _privateConstructorUsedError;
  num get vote_average => throw _privateConstructorUsedError;
  int get vote_count => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String get name => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get homepage => throw _privateConstructorUsedError;
  String? get poster_path => throw _privateConstructorUsedError;
  String? get backdrop_path => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get date => throw _privateConstructorUsedError;
  num get popularity => throw _privateConstructorUsedError;
  num? get runtime =>
      throw _privateConstructorUsedError; // Duration in minutes. Null if this is a TV show.
  List<MovieDetailGenreResponse> get genres =>
      throw _privateConstructorUsedError;
  List<MovieDetailCompanyResponse> get production_companies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailResponseCopyWith<MovieDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailResponseCopyWith<$Res> {
  factory $MovieDetailResponseCopyWith(
          MovieDetailResponse value, $Res Function(MovieDetailResponse) then) =
      _$MovieDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {int id,
      num vote_average,
      int vote_count,
      @JsonKey(name: "original_title") String name,
      String? tagline,
      String overview,
      String homepage,
      String? poster_path,
      String? backdrop_path,
      @JsonKey(name: "release_date") String? date,
      num popularity,
      num? runtime,
      List<MovieDetailGenreResponse> genres,
      List<MovieDetailCompanyResponse> production_companies});
}

/// @nodoc
class _$MovieDetailResponseCopyWithImpl<$Res>
    implements $MovieDetailResponseCopyWith<$Res> {
  _$MovieDetailResponseCopyWithImpl(this._value, this._then);

  final MovieDetailResponse _value;
  // ignore: unused_field
  final $Res Function(MovieDetailResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
    Object? name = freezed,
    Object? tagline = freezed,
    Object? overview = freezed,
    Object? homepage = freezed,
    Object? poster_path = freezed,
    Object? backdrop_path = freezed,
    Object? date = freezed,
    Object? popularity = freezed,
    Object? runtime = freezed,
    Object? genres = freezed,
    Object? production_companies = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as num,
      vote_count: vote_count == freezed
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      poster_path: poster_path == freezed
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as num?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<MovieDetailGenreResponse>,
      production_companies: production_companies == freezed
          ? _value.production_companies
          : production_companies // ignore: cast_nullable_to_non_nullable
              as List<MovieDetailCompanyResponse>,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailResponseCopyWith<$Res>
    implements $MovieDetailResponseCopyWith<$Res> {
  factory _$MovieDetailResponseCopyWith(_MovieDetailResponse value,
          $Res Function(_MovieDetailResponse) then) =
      __$MovieDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      num vote_average,
      int vote_count,
      @JsonKey(name: "original_title") String name,
      String? tagline,
      String overview,
      String homepage,
      String? poster_path,
      String? backdrop_path,
      @JsonKey(name: "release_date") String? date,
      num popularity,
      num? runtime,
      List<MovieDetailGenreResponse> genres,
      List<MovieDetailCompanyResponse> production_companies});
}

/// @nodoc
class __$MovieDetailResponseCopyWithImpl<$Res>
    extends _$MovieDetailResponseCopyWithImpl<$Res>
    implements _$MovieDetailResponseCopyWith<$Res> {
  __$MovieDetailResponseCopyWithImpl(
      _MovieDetailResponse _value, $Res Function(_MovieDetailResponse) _then)
      : super(_value, (v) => _then(v as _MovieDetailResponse));

  @override
  _MovieDetailResponse get _value => super._value as _MovieDetailResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
    Object? name = freezed,
    Object? tagline = freezed,
    Object? overview = freezed,
    Object? homepage = freezed,
    Object? poster_path = freezed,
    Object? backdrop_path = freezed,
    Object? date = freezed,
    Object? popularity = freezed,
    Object? runtime = freezed,
    Object? genres = freezed,
    Object? production_companies = freezed,
  }) {
    return _then(_MovieDetailResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as num,
      vote_count: vote_count == freezed
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      poster_path: poster_path == freezed
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String?,
      backdrop_path: backdrop_path == freezed
          ? _value.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as num?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<MovieDetailGenreResponse>,
      production_companies: production_companies == freezed
          ? _value.production_companies
          : production_companies // ignore: cast_nullable_to_non_nullable
              as List<MovieDetailCompanyResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetailResponse implements _MovieDetailResponse {
  const _$_MovieDetailResponse(
      {required this.id,
      required this.vote_average,
      required this.vote_count,
      @JsonKey(name: "original_title") required this.name,
      required this.tagline,
      required this.overview,
      required this.homepage,
      required this.poster_path,
      required this.backdrop_path,
      @JsonKey(name: "release_date") required this.date,
      required this.popularity,
      required this.runtime,
      required this.genres,
      required this.production_companies});

  factory _$_MovieDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieDetailResponseFromJson(json);

  @override
  final int id;
  @override
  final num vote_average;
  @override
  final int vote_count;
  @override
  @JsonKey(name: "original_title")
  final String name;
  @override
  final String? tagline;
  @override
  final String overview;
  @override
  final String homepage;
  @override
  final String? poster_path;
  @override
  final String? backdrop_path;
  @override
  @JsonKey(name: "release_date")
  final String? date;
  @override
  final num popularity;
  @override
  final num? runtime;
  @override // Duration in minutes. Null if this is a TV show.
  final List<MovieDetailGenreResponse> genres;
  @override
  final List<MovieDetailCompanyResponse> production_companies;

  @override
  String toString() {
    return 'MovieDetailResponse(id: $id, vote_average: $vote_average, vote_count: $vote_count, name: $name, tagline: $tagline, overview: $overview, homepage: $homepage, poster_path: $poster_path, backdrop_path: $backdrop_path, date: $date, popularity: $popularity, runtime: $runtime, genres: $genres, production_companies: $production_companies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDetailResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.vote_average, vote_average) ||
                const DeepCollectionEquality()
                    .equals(other.vote_average, vote_average)) &&
            (identical(other.vote_count, vote_count) ||
                const DeepCollectionEquality()
                    .equals(other.vote_count, vote_count)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.tagline, tagline) ||
                const DeepCollectionEquality()
                    .equals(other.tagline, tagline)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.homepage, homepage) ||
                const DeepCollectionEquality()
                    .equals(other.homepage, homepage)) &&
            (identical(other.poster_path, poster_path) ||
                const DeepCollectionEquality()
                    .equals(other.poster_path, poster_path)) &&
            (identical(other.backdrop_path, backdrop_path) ||
                const DeepCollectionEquality()
                    .equals(other.backdrop_path, backdrop_path)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.runtime, runtime) ||
                const DeepCollectionEquality()
                    .equals(other.runtime, runtime)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
            (identical(other.production_companies, production_companies) ||
                const DeepCollectionEquality()
                    .equals(other.production_companies, production_companies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(vote_average) ^
      const DeepCollectionEquality().hash(vote_count) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(tagline) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(homepage) ^
      const DeepCollectionEquality().hash(poster_path) ^
      const DeepCollectionEquality().hash(backdrop_path) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(runtime) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(production_companies);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailResponseCopyWith<_MovieDetailResponse> get copyWith =>
      __$MovieDetailResponseCopyWithImpl<_MovieDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieDetailResponseToJson(this);
  }
}

abstract class _MovieDetailResponse implements MovieDetailResponse {
  const factory _MovieDetailResponse(
          {required int id,
          required num vote_average,
          required int vote_count,
          @JsonKey(name: "original_title") required String name,
          required String? tagline,
          required String overview,
          required String homepage,
          required String? poster_path,
          required String? backdrop_path,
          @JsonKey(name: "release_date") required String? date,
          required num popularity,
          required num? runtime,
          required List<MovieDetailGenreResponse> genres,
          required List<MovieDetailCompanyResponse> production_companies}) =
      _$_MovieDetailResponse;

  factory _MovieDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailResponse.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  num get vote_average => throw _privateConstructorUsedError;
  @override
  int get vote_count => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "original_title")
  String get name => throw _privateConstructorUsedError;
  @override
  String? get tagline => throw _privateConstructorUsedError;
  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  String get homepage => throw _privateConstructorUsedError;
  @override
  String? get poster_path => throw _privateConstructorUsedError;
  @override
  String? get backdrop_path => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "release_date")
  String? get date => throw _privateConstructorUsedError;
  @override
  num get popularity => throw _privateConstructorUsedError;
  @override
  num? get runtime => throw _privateConstructorUsedError;
  @override // Duration in minutes. Null if this is a TV show.
  List<MovieDetailGenreResponse> get genres =>
      throw _privateConstructorUsedError;
  @override
  List<MovieDetailCompanyResponse> get production_companies =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailResponseCopyWith<_MovieDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieDetailGenreResponse _$MovieDetailGenreResponseFromJson(
    Map<String, dynamic> json) {
  return _MovieDetailGenreResponse.fromJson(json);
}

/// @nodoc
class _$MovieDetailGenreResponseTearOff {
  const _$MovieDetailGenreResponseTearOff();

  _MovieDetailGenreResponse call({required int id, required String name}) {
    return _MovieDetailGenreResponse(
      id: id,
      name: name,
    );
  }

  MovieDetailGenreResponse fromJson(Map<String, Object> json) {
    return MovieDetailGenreResponse.fromJson(json);
  }
}

/// @nodoc
const $MovieDetailGenreResponse = _$MovieDetailGenreResponseTearOff();

/// @nodoc
mixin _$MovieDetailGenreResponse {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailGenreResponseCopyWith<MovieDetailGenreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailGenreResponseCopyWith<$Res> {
  factory $MovieDetailGenreResponseCopyWith(MovieDetailGenreResponse value,
          $Res Function(MovieDetailGenreResponse) then) =
      _$MovieDetailGenreResponseCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$MovieDetailGenreResponseCopyWithImpl<$Res>
    implements $MovieDetailGenreResponseCopyWith<$Res> {
  _$MovieDetailGenreResponseCopyWithImpl(this._value, this._then);

  final MovieDetailGenreResponse _value;
  // ignore: unused_field
  final $Res Function(MovieDetailGenreResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailGenreResponseCopyWith<$Res>
    implements $MovieDetailGenreResponseCopyWith<$Res> {
  factory _$MovieDetailGenreResponseCopyWith(_MovieDetailGenreResponse value,
          $Res Function(_MovieDetailGenreResponse) then) =
      __$MovieDetailGenreResponseCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$MovieDetailGenreResponseCopyWithImpl<$Res>
    extends _$MovieDetailGenreResponseCopyWithImpl<$Res>
    implements _$MovieDetailGenreResponseCopyWith<$Res> {
  __$MovieDetailGenreResponseCopyWithImpl(_MovieDetailGenreResponse _value,
      $Res Function(_MovieDetailGenreResponse) _then)
      : super(_value, (v) => _then(v as _MovieDetailGenreResponse));

  @override
  _MovieDetailGenreResponse get _value =>
      super._value as _MovieDetailGenreResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_MovieDetailGenreResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetailGenreResponse implements _MovieDetailGenreResponse {
  const _$_MovieDetailGenreResponse({required this.id, required this.name});

  factory _$_MovieDetailGenreResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieDetailGenreResponseFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'MovieDetailGenreResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDetailGenreResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailGenreResponseCopyWith<_MovieDetailGenreResponse> get copyWith =>
      __$MovieDetailGenreResponseCopyWithImpl<_MovieDetailGenreResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieDetailGenreResponseToJson(this);
  }
}

abstract class _MovieDetailGenreResponse implements MovieDetailGenreResponse {
  const factory _MovieDetailGenreResponse(
      {required int id, required String name}) = _$_MovieDetailGenreResponse;

  factory _MovieDetailGenreResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailGenreResponse.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailGenreResponseCopyWith<_MovieDetailGenreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieDetailCompanyResponse _$MovieDetailCompanyResponseFromJson(
    Map<String, dynamic> json) {
  return _MovieDetailCompanyResponse.fromJson(json);
}

/// @nodoc
class _$MovieDetailCompanyResponseTearOff {
  const _$MovieDetailCompanyResponseTearOff();

  _MovieDetailCompanyResponse call(
      {required int id,
      required String? logo_path,
      required String name,
      required String origin_country}) {
    return _MovieDetailCompanyResponse(
      id: id,
      logo_path: logo_path,
      name: name,
      origin_country: origin_country,
    );
  }

  MovieDetailCompanyResponse fromJson(Map<String, Object> json) {
    return MovieDetailCompanyResponse.fromJson(json);
  }
}

/// @nodoc
const $MovieDetailCompanyResponse = _$MovieDetailCompanyResponseTearOff();

/// @nodoc
mixin _$MovieDetailCompanyResponse {
  int get id => throw _privateConstructorUsedError;
  String? get logo_path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get origin_country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailCompanyResponseCopyWith<MovieDetailCompanyResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailCompanyResponseCopyWith<$Res> {
  factory $MovieDetailCompanyResponseCopyWith(MovieDetailCompanyResponse value,
          $Res Function(MovieDetailCompanyResponse) then) =
      _$MovieDetailCompanyResponseCopyWithImpl<$Res>;
  $Res call({int id, String? logo_path, String name, String origin_country});
}

/// @nodoc
class _$MovieDetailCompanyResponseCopyWithImpl<$Res>
    implements $MovieDetailCompanyResponseCopyWith<$Res> {
  _$MovieDetailCompanyResponseCopyWithImpl(this._value, this._then);

  final MovieDetailCompanyResponse _value;
  // ignore: unused_field
  final $Res Function(MovieDetailCompanyResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? logo_path = freezed,
    Object? name = freezed,
    Object? origin_country = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logo_path: logo_path == freezed
          ? _value.logo_path
          : logo_path // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      origin_country: origin_country == freezed
          ? _value.origin_country
          : origin_country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailCompanyResponseCopyWith<$Res>
    implements $MovieDetailCompanyResponseCopyWith<$Res> {
  factory _$MovieDetailCompanyResponseCopyWith(
          _MovieDetailCompanyResponse value,
          $Res Function(_MovieDetailCompanyResponse) then) =
      __$MovieDetailCompanyResponseCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? logo_path, String name, String origin_country});
}

/// @nodoc
class __$MovieDetailCompanyResponseCopyWithImpl<$Res>
    extends _$MovieDetailCompanyResponseCopyWithImpl<$Res>
    implements _$MovieDetailCompanyResponseCopyWith<$Res> {
  __$MovieDetailCompanyResponseCopyWithImpl(_MovieDetailCompanyResponse _value,
      $Res Function(_MovieDetailCompanyResponse) _then)
      : super(_value, (v) => _then(v as _MovieDetailCompanyResponse));

  @override
  _MovieDetailCompanyResponse get _value =>
      super._value as _MovieDetailCompanyResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? logo_path = freezed,
    Object? name = freezed,
    Object? origin_country = freezed,
  }) {
    return _then(_MovieDetailCompanyResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logo_path: logo_path == freezed
          ? _value.logo_path
          : logo_path // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      origin_country: origin_country == freezed
          ? _value.origin_country
          : origin_country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetailCompanyResponse implements _MovieDetailCompanyResponse {
  const _$_MovieDetailCompanyResponse(
      {required this.id,
      required this.logo_path,
      required this.name,
      required this.origin_country});

  factory _$_MovieDetailCompanyResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieDetailCompanyResponseFromJson(json);

  @override
  final int id;
  @override
  final String? logo_path;
  @override
  final String name;
  @override
  final String origin_country;

  @override
  String toString() {
    return 'MovieDetailCompanyResponse(id: $id, logo_path: $logo_path, name: $name, origin_country: $origin_country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDetailCompanyResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.logo_path, logo_path) ||
                const DeepCollectionEquality()
                    .equals(other.logo_path, logo_path)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.origin_country, origin_country) ||
                const DeepCollectionEquality()
                    .equals(other.origin_country, origin_country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(logo_path) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(origin_country);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailCompanyResponseCopyWith<_MovieDetailCompanyResponse>
      get copyWith => __$MovieDetailCompanyResponseCopyWithImpl<
          _MovieDetailCompanyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieDetailCompanyResponseToJson(this);
  }
}

abstract class _MovieDetailCompanyResponse
    implements MovieDetailCompanyResponse {
  const factory _MovieDetailCompanyResponse(
      {required int id,
      required String? logo_path,
      required String name,
      required String origin_country}) = _$_MovieDetailCompanyResponse;

  factory _MovieDetailCompanyResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieDetailCompanyResponse.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get logo_path => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get origin_country => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailCompanyResponseCopyWith<_MovieDetailCompanyResponse>
      get copyWith => throw _privateConstructorUsedError;
}
