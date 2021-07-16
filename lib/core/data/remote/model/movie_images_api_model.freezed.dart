// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_images_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieImageResponse _$MovieImageResponseFromJson(Map<String, dynamic> json) {
  return _MovieImagesResponse.fromJson(json);
}

/// @nodoc
class _$MovieImageResponseTearOff {
  const _$MovieImageResponseTearOff();

  _MovieImagesResponse call(
      {@JsonKey(name: "id") required String movieId,
      required List<MovieImageDataResponse> backdrops,
      required List<MovieImageDataResponse> logos,
      required List<MovieImageDataResponse> posters}) {
    return _MovieImagesResponse(
      movieId: movieId,
      backdrops: backdrops,
      logos: logos,
      posters: posters,
    );
  }

  MovieImageResponse fromJson(Map<String, Object> json) {
    return MovieImageResponse.fromJson(json);
  }
}

/// @nodoc
const $MovieImageResponse = _$MovieImageResponseTearOff();

/// @nodoc
mixin _$MovieImageResponse {
  @JsonKey(name: "id")
  String get movieId => throw _privateConstructorUsedError;
  List<MovieImageDataResponse> get backdrops =>
      throw _privateConstructorUsedError;
  List<MovieImageDataResponse> get logos => throw _privateConstructorUsedError;
  List<MovieImageDataResponse> get posters =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieImageResponseCopyWith<MovieImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieImageResponseCopyWith<$Res> {
  factory $MovieImageResponseCopyWith(
          MovieImageResponse value, $Res Function(MovieImageResponse) then) =
      _$MovieImageResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String movieId,
      List<MovieImageDataResponse> backdrops,
      List<MovieImageDataResponse> logos,
      List<MovieImageDataResponse> posters});
}

/// @nodoc
class _$MovieImageResponseCopyWithImpl<$Res>
    implements $MovieImageResponseCopyWith<$Res> {
  _$MovieImageResponseCopyWithImpl(this._value, this._then);

  final MovieImageResponse _value;
  // ignore: unused_field
  final $Res Function(MovieImageResponse) _then;

  @override
  $Res call({
    Object? movieId = freezed,
    Object? backdrops = freezed,
    Object? logos = freezed,
    Object? posters = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
      backdrops: backdrops == freezed
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<MovieImageDataResponse>,
      logos: logos == freezed
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<MovieImageDataResponse>,
      posters: posters == freezed
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<MovieImageDataResponse>,
    ));
  }
}

/// @nodoc
abstract class _$MovieImagesResponseCopyWith<$Res>
    implements $MovieImageResponseCopyWith<$Res> {
  factory _$MovieImagesResponseCopyWith(_MovieImagesResponse value,
          $Res Function(_MovieImagesResponse) then) =
      __$MovieImagesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String movieId,
      List<MovieImageDataResponse> backdrops,
      List<MovieImageDataResponse> logos,
      List<MovieImageDataResponse> posters});
}

/// @nodoc
class __$MovieImagesResponseCopyWithImpl<$Res>
    extends _$MovieImageResponseCopyWithImpl<$Res>
    implements _$MovieImagesResponseCopyWith<$Res> {
  __$MovieImagesResponseCopyWithImpl(
      _MovieImagesResponse _value, $Res Function(_MovieImagesResponse) _then)
      : super(_value, (v) => _then(v as _MovieImagesResponse));

  @override
  _MovieImagesResponse get _value => super._value as _MovieImagesResponse;

  @override
  $Res call({
    Object? movieId = freezed,
    Object? backdrops = freezed,
    Object? logos = freezed,
    Object? posters = freezed,
  }) {
    return _then(_MovieImagesResponse(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as String,
      backdrops: backdrops == freezed
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<MovieImageDataResponse>,
      logos: logos == freezed
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<MovieImageDataResponse>,
      posters: posters == freezed
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<MovieImageDataResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieImagesResponse implements _MovieImagesResponse {
  const _$_MovieImagesResponse(
      {@JsonKey(name: "id") required this.movieId,
      required this.backdrops,
      required this.logos,
      required this.posters});

  factory _$_MovieImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieImagesResponseFromJson(json);

  @override
  @JsonKey(name: "id")
  final String movieId;
  @override
  final List<MovieImageDataResponse> backdrops;
  @override
  final List<MovieImageDataResponse> logos;
  @override
  final List<MovieImageDataResponse> posters;

  @override
  String toString() {
    return 'MovieImageResponse(movieId: $movieId, backdrops: $backdrops, logos: $logos, posters: $posters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieImagesResponse &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality()
                    .equals(other.movieId, movieId)) &&
            (identical(other.backdrops, backdrops) ||
                const DeepCollectionEquality()
                    .equals(other.backdrops, backdrops)) &&
            (identical(other.logos, logos) ||
                const DeepCollectionEquality().equals(other.logos, logos)) &&
            (identical(other.posters, posters) ||
                const DeepCollectionEquality().equals(other.posters, posters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(movieId) ^
      const DeepCollectionEquality().hash(backdrops) ^
      const DeepCollectionEquality().hash(logos) ^
      const DeepCollectionEquality().hash(posters);

  @JsonKey(ignore: true)
  @override
  _$MovieImagesResponseCopyWith<_MovieImagesResponse> get copyWith =>
      __$MovieImagesResponseCopyWithImpl<_MovieImagesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieImagesResponseToJson(this);
  }
}

abstract class _MovieImagesResponse implements MovieImageResponse {
  const factory _MovieImagesResponse(
      {@JsonKey(name: "id") required String movieId,
      required List<MovieImageDataResponse> backdrops,
      required List<MovieImageDataResponse> logos,
      required List<MovieImageDataResponse> posters}) = _$_MovieImagesResponse;

  factory _MovieImagesResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieImagesResponse.fromJson;

  @override
  @JsonKey(name: "id")
  String get movieId => throw _privateConstructorUsedError;
  @override
  List<MovieImageDataResponse> get backdrops =>
      throw _privateConstructorUsedError;
  @override
  List<MovieImageDataResponse> get logos => throw _privateConstructorUsedError;
  @override
  List<MovieImageDataResponse> get posters =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieImagesResponseCopyWith<_MovieImagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieImageDataResponse _$MovieImageDataResponseFromJson(
    Map<String, dynamic> json) {
  return _MovieImageDataResponse.fromJson(json);
}

/// @nodoc
class _$MovieImageDataResponseTearOff {
  const _$MovieImageDataResponseTearOff();

  _MovieImageDataResponse call(
      {required num aspect_ratio,
      required num height,
      required num width,
      required String file_path,
      required num vote_average,
      required int vote_count}) {
    return _MovieImageDataResponse(
      aspect_ratio: aspect_ratio,
      height: height,
      width: width,
      file_path: file_path,
      vote_average: vote_average,
      vote_count: vote_count,
    );
  }

  MovieImageDataResponse fromJson(Map<String, Object> json) {
    return MovieImageDataResponse.fromJson(json);
  }
}

/// @nodoc
const $MovieImageDataResponse = _$MovieImageDataResponseTearOff();

/// @nodoc
mixin _$MovieImageDataResponse {
  num get aspect_ratio => throw _privateConstructorUsedError;
  num get height => throw _privateConstructorUsedError;
  num get width => throw _privateConstructorUsedError;
  String get file_path => throw _privateConstructorUsedError;
  num get vote_average => throw _privateConstructorUsedError;
  int get vote_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieImageDataResponseCopyWith<MovieImageDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieImageDataResponseCopyWith<$Res> {
  factory $MovieImageDataResponseCopyWith(MovieImageDataResponse value,
          $Res Function(MovieImageDataResponse) then) =
      _$MovieImageDataResponseCopyWithImpl<$Res>;
  $Res call(
      {num aspect_ratio,
      num height,
      num width,
      String file_path,
      num vote_average,
      int vote_count});
}

/// @nodoc
class _$MovieImageDataResponseCopyWithImpl<$Res>
    implements $MovieImageDataResponseCopyWith<$Res> {
  _$MovieImageDataResponseCopyWithImpl(this._value, this._then);

  final MovieImageDataResponse _value;
  // ignore: unused_field
  final $Res Function(MovieImageDataResponse) _then;

  @override
  $Res call({
    Object? aspect_ratio = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? file_path = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_value.copyWith(
      aspect_ratio: aspect_ratio == freezed
          ? _value.aspect_ratio
          : aspect_ratio // ignore: cast_nullable_to_non_nullable
              as num,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
      file_path: file_path == freezed
          ? _value.file_path
          : file_path // ignore: cast_nullable_to_non_nullable
              as String,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as num,
      vote_count: vote_count == freezed
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MovieImageDataResponseCopyWith<$Res>
    implements $MovieImageDataResponseCopyWith<$Res> {
  factory _$MovieImageDataResponseCopyWith(_MovieImageDataResponse value,
          $Res Function(_MovieImageDataResponse) then) =
      __$MovieImageDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {num aspect_ratio,
      num height,
      num width,
      String file_path,
      num vote_average,
      int vote_count});
}

/// @nodoc
class __$MovieImageDataResponseCopyWithImpl<$Res>
    extends _$MovieImageDataResponseCopyWithImpl<$Res>
    implements _$MovieImageDataResponseCopyWith<$Res> {
  __$MovieImageDataResponseCopyWithImpl(_MovieImageDataResponse _value,
      $Res Function(_MovieImageDataResponse) _then)
      : super(_value, (v) => _then(v as _MovieImageDataResponse));

  @override
  _MovieImageDataResponse get _value => super._value as _MovieImageDataResponse;

  @override
  $Res call({
    Object? aspect_ratio = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? file_path = freezed,
    Object? vote_average = freezed,
    Object? vote_count = freezed,
  }) {
    return _then(_MovieImageDataResponse(
      aspect_ratio: aspect_ratio == freezed
          ? _value.aspect_ratio
          : aspect_ratio // ignore: cast_nullable_to_non_nullable
              as num,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
      file_path: file_path == freezed
          ? _value.file_path
          : file_path // ignore: cast_nullable_to_non_nullable
              as String,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as num,
      vote_count: vote_count == freezed
          ? _value.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieImageDataResponse implements _MovieImageDataResponse {
  const _$_MovieImageDataResponse(
      {required this.aspect_ratio,
      required this.height,
      required this.width,
      required this.file_path,
      required this.vote_average,
      required this.vote_count});

  factory _$_MovieImageDataResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieImageDataResponseFromJson(json);

  @override
  final num aspect_ratio;
  @override
  final num height;
  @override
  final num width;
  @override
  final String file_path;
  @override
  final num vote_average;
  @override
  final int vote_count;

  @override
  String toString() {
    return 'MovieImageDataResponse(aspect_ratio: $aspect_ratio, height: $height, width: $width, file_path: $file_path, vote_average: $vote_average, vote_count: $vote_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieImageDataResponse &&
            (identical(other.aspect_ratio, aspect_ratio) ||
                const DeepCollectionEquality()
                    .equals(other.aspect_ratio, aspect_ratio)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.file_path, file_path) ||
                const DeepCollectionEquality()
                    .equals(other.file_path, file_path)) &&
            (identical(other.vote_average, vote_average) ||
                const DeepCollectionEquality()
                    .equals(other.vote_average, vote_average)) &&
            (identical(other.vote_count, vote_count) ||
                const DeepCollectionEquality()
                    .equals(other.vote_count, vote_count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(aspect_ratio) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(file_path) ^
      const DeepCollectionEquality().hash(vote_average) ^
      const DeepCollectionEquality().hash(vote_count);

  @JsonKey(ignore: true)
  @override
  _$MovieImageDataResponseCopyWith<_MovieImageDataResponse> get copyWith =>
      __$MovieImageDataResponseCopyWithImpl<_MovieImageDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieImageDataResponseToJson(this);
  }
}

abstract class _MovieImageDataResponse implements MovieImageDataResponse {
  const factory _MovieImageDataResponse(
      {required num aspect_ratio,
      required num height,
      required num width,
      required String file_path,
      required num vote_average,
      required int vote_count}) = _$_MovieImageDataResponse;

  factory _MovieImageDataResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieImageDataResponse.fromJson;

  @override
  num get aspect_ratio => throw _privateConstructorUsedError;
  @override
  num get height => throw _privateConstructorUsedError;
  @override
  num get width => throw _privateConstructorUsedError;
  @override
  String get file_path => throw _privateConstructorUsedError;
  @override
  num get vote_average => throw _privateConstructorUsedError;
  @override
  int get vote_count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieImageDataResponseCopyWith<_MovieImageDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
