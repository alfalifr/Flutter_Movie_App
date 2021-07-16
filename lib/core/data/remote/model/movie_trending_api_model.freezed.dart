// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_trending_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieTrendingResponse _$MovieTrendingResponseFromJson(
    Map<String, dynamic> json) {
  return _MovieTrendingResponse.fromJson(json);
}

/// @nodoc
class _$MovieTrendingResponseTearOff {
  const _$MovieTrendingResponseTearOff();

  _MovieTrendingResponse call(
      {required int page, required List<MovieTrendingDataResponse> results}) {
    return _MovieTrendingResponse(
      page: page,
      results: results,
    );
  }

  MovieTrendingResponse fromJson(Map<String, Object> json) {
    return MovieTrendingResponse.fromJson(json);
  }
}

/// @nodoc
const $MovieTrendingResponse = _$MovieTrendingResponseTearOff();

/// @nodoc
mixin _$MovieTrendingResponse {
  int get page => throw _privateConstructorUsedError;
  List<MovieTrendingDataResponse> get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieTrendingResponseCopyWith<MovieTrendingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieTrendingResponseCopyWith<$Res> {
  factory $MovieTrendingResponseCopyWith(MovieTrendingResponse value,
          $Res Function(MovieTrendingResponse) then) =
      _$MovieTrendingResponseCopyWithImpl<$Res>;
  $Res call({int page, List<MovieTrendingDataResponse> results});
}

/// @nodoc
class _$MovieTrendingResponseCopyWithImpl<$Res>
    implements $MovieTrendingResponseCopyWith<$Res> {
  _$MovieTrendingResponseCopyWithImpl(this._value, this._then);

  final MovieTrendingResponse _value;
  // ignore: unused_field
  final $Res Function(MovieTrendingResponse) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieTrendingDataResponse>,
    ));
  }
}

/// @nodoc
abstract class _$MovieTrendingResponseCopyWith<$Res>
    implements $MovieTrendingResponseCopyWith<$Res> {
  factory _$MovieTrendingResponseCopyWith(_MovieTrendingResponse value,
          $Res Function(_MovieTrendingResponse) then) =
      __$MovieTrendingResponseCopyWithImpl<$Res>;
  @override
  $Res call({int page, List<MovieTrendingDataResponse> results});
}

/// @nodoc
class __$MovieTrendingResponseCopyWithImpl<$Res>
    extends _$MovieTrendingResponseCopyWithImpl<$Res>
    implements _$MovieTrendingResponseCopyWith<$Res> {
  __$MovieTrendingResponseCopyWithImpl(_MovieTrendingResponse _value,
      $Res Function(_MovieTrendingResponse) _then)
      : super(_value, (v) => _then(v as _MovieTrendingResponse));

  @override
  _MovieTrendingResponse get _value => super._value as _MovieTrendingResponse;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
  }) {
    return _then(_MovieTrendingResponse(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieTrendingDataResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieTrendingResponse implements _MovieTrendingResponse {
  const _$_MovieTrendingResponse({required this.page, required this.results});

  factory _$_MovieTrendingResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieTrendingResponseFromJson(json);

  @override
  final int page;
  @override
  final List<MovieTrendingDataResponse> results;

  @override
  String toString() {
    return 'MovieTrendingResponse(page: $page, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieTrendingResponse &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(results);

  @JsonKey(ignore: true)
  @override
  _$MovieTrendingResponseCopyWith<_MovieTrendingResponse> get copyWith =>
      __$MovieTrendingResponseCopyWithImpl<_MovieTrendingResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieTrendingResponseToJson(this);
  }
}

abstract class _MovieTrendingResponse implements MovieTrendingResponse {
  const factory _MovieTrendingResponse(
          {required int page,
          required List<MovieTrendingDataResponse> results}) =
      _$_MovieTrendingResponse;

  factory _MovieTrendingResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieTrendingResponse.fromJson;

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  List<MovieTrendingDataResponse> get results =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieTrendingResponseCopyWith<_MovieTrendingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieTrendingDataResponse _$MovieTrendingDataResponseFromJson(
    Map<String, dynamic> json) {
  return _MovieTrendingDataResponse.fromJson(json);
}

/// @nodoc
class _$MovieTrendingDataResponseTearOff {
  const _$MovieTrendingDataResponseTearOff();

  _MovieTrendingDataResponse call(
      {required int id,
      required num vote_average,
      required num vote_count,
      @JsonKey(name: "original_title") required String name,
      required String overview,
      required String poster_path,
      @JsonKey(name: "release_date") required String date,
      required num popularity,
      required String media_type}) {
    return _MovieTrendingDataResponse(
      id: id,
      vote_average: vote_average,
      vote_count: vote_count,
      name: name,
      overview: overview,
      poster_path: poster_path,
      date: date,
      popularity: popularity,
      media_type: media_type,
    );
  }

  MovieTrendingDataResponse fromJson(Map<String, Object> json) {
    return MovieTrendingDataResponse.fromJson(json);
  }
}

/// @nodoc
const $MovieTrendingDataResponse = _$MovieTrendingDataResponseTearOff();

/// @nodoc
mixin _$MovieTrendingDataResponse {
  int get id => throw _privateConstructorUsedError;
  num get vote_average => throw _privateConstructorUsedError;
  num get vote_count => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String get name => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get poster_path => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get date => throw _privateConstructorUsedError;
  num get popularity => throw _privateConstructorUsedError;
  String get media_type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieTrendingDataResponseCopyWith<MovieTrendingDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieTrendingDataResponseCopyWith<$Res> {
  factory $MovieTrendingDataResponseCopyWith(MovieTrendingDataResponse value,
          $Res Function(MovieTrendingDataResponse) then) =
      _$MovieTrendingDataResponseCopyWithImpl<$Res>;
  $Res call(
      {int id,
      num vote_average,
      num vote_count,
      @JsonKey(name: "original_title") String name,
      String overview,
      String poster_path,
      @JsonKey(name: "release_date") String date,
      num popularity,
      String media_type});
}

/// @nodoc
class _$MovieTrendingDataResponseCopyWithImpl<$Res>
    implements $MovieTrendingDataResponseCopyWith<$Res> {
  _$MovieTrendingDataResponseCopyWithImpl(this._value, this._then);

  final MovieTrendingDataResponse _value;
  // ignore: unused_field
  final $Res Function(MovieTrendingDataResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
    Object? name = freezed,
    Object? overview = freezed,
    Object? poster_path = freezed,
    Object? date = freezed,
    Object? popularity = freezed,
    Object? media_type = freezed,
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
              as num,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      poster_path: poster_path == freezed
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      media_type: media_type == freezed
          ? _value.media_type
          : media_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieTrendingDataResponseCopyWith<$Res>
    implements $MovieTrendingDataResponseCopyWith<$Res> {
  factory _$MovieTrendingDataResponseCopyWith(_MovieTrendingDataResponse value,
          $Res Function(_MovieTrendingDataResponse) then) =
      __$MovieTrendingDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      num vote_average,
      num vote_count,
      @JsonKey(name: "original_title") String name,
      String overview,
      String poster_path,
      @JsonKey(name: "release_date") String date,
      num popularity,
      String media_type});
}

/// @nodoc
class __$MovieTrendingDataResponseCopyWithImpl<$Res>
    extends _$MovieTrendingDataResponseCopyWithImpl<$Res>
    implements _$MovieTrendingDataResponseCopyWith<$Res> {
  __$MovieTrendingDataResponseCopyWithImpl(_MovieTrendingDataResponse _value,
      $Res Function(_MovieTrendingDataResponse) _then)
      : super(_value, (v) => _then(v as _MovieTrendingDataResponse));

  @override
  _MovieTrendingDataResponse get _value =>
      super._value as _MovieTrendingDataResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
    Object? name = freezed,
    Object? overview = freezed,
    Object? poster_path = freezed,
    Object? date = freezed,
    Object? popularity = freezed,
    Object? media_type = freezed,
  }) {
    return _then(_MovieTrendingDataResponse(
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
              as num,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      poster_path: poster_path == freezed
          ? _value.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      media_type: media_type == freezed
          ? _value.media_type
          : media_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieTrendingDataResponse implements _MovieTrendingDataResponse {
  const _$_MovieTrendingDataResponse(
      {required this.id,
      required this.vote_average,
      required this.vote_count,
      @JsonKey(name: "original_title") required this.name,
      required this.overview,
      required this.poster_path,
      @JsonKey(name: "release_date") required this.date,
      required this.popularity,
      required this.media_type});

  factory _$_MovieTrendingDataResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieTrendingDataResponseFromJson(json);

  @override
  final int id;
  @override
  final num vote_average;
  @override
  final num vote_count;
  @override
  @JsonKey(name: "original_title")
  final String name;
  @override
  final String overview;
  @override
  final String poster_path;
  @override
  @JsonKey(name: "release_date")
  final String date;
  @override
  final num popularity;
  @override
  final String media_type;

  @override
  String toString() {
    return 'MovieTrendingDataResponse(id: $id, vote_average: $vote_average, vote_count: $vote_count, name: $name, overview: $overview, poster_path: $poster_path, date: $date, popularity: $popularity, media_type: $media_type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieTrendingDataResponse &&
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
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.poster_path, poster_path) ||
                const DeepCollectionEquality()
                    .equals(other.poster_path, poster_path)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.media_type, media_type) ||
                const DeepCollectionEquality()
                    .equals(other.media_type, media_type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(vote_average) ^
      const DeepCollectionEquality().hash(vote_count) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(poster_path) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(media_type);

  @JsonKey(ignore: true)
  @override
  _$MovieTrendingDataResponseCopyWith<_MovieTrendingDataResponse>
      get copyWith =>
          __$MovieTrendingDataResponseCopyWithImpl<_MovieTrendingDataResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieTrendingDataResponseToJson(this);
  }
}

abstract class _MovieTrendingDataResponse implements MovieTrendingDataResponse {
  const factory _MovieTrendingDataResponse(
      {required int id,
      required num vote_average,
      required num vote_count,
      @JsonKey(name: "original_title") required String name,
      required String overview,
      required String poster_path,
      @JsonKey(name: "release_date") required String date,
      required num popularity,
      required String media_type}) = _$_MovieTrendingDataResponse;

  factory _MovieTrendingDataResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieTrendingDataResponse.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  num get vote_average => throw _privateConstructorUsedError;
  @override
  num get vote_count => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "original_title")
  String get name => throw _privateConstructorUsedError;
  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  String get poster_path => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "release_date")
  String get date => throw _privateConstructorUsedError;
  @override
  num get popularity => throw _privateConstructorUsedError;
  @override
  String get media_type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieTrendingDataResponseCopyWith<_MovieTrendingDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}
