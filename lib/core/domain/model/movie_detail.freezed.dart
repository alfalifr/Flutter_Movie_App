// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieDetailTearOff {
  const _$MovieDetailTearOff();

  _MovieDetail call(
      {required Movie movie,
      required String tagline,
      required String overview,
      required String homepage,
      required num? duration,
      required List<String> genres,
      required List<Company> productionCompanies,
      required List<Cast> casts,
      required List<Crew> crews,
      required List<ImgData> backdrops,
      required List<ImgData> logos,
      required List<ImgData> posters}) {
    return _MovieDetail(
      movie: movie,
      tagline: tagline,
      overview: overview,
      homepage: homepage,
      duration: duration,
      genres: genres,
      productionCompanies: productionCompanies,
      casts: casts,
      crews: crews,
      backdrops: backdrops,
      logos: logos,
      posters: posters,
    );
  }
}

/// @nodoc
const $MovieDetail = _$MovieDetailTearOff();

/// @nodoc
mixin _$MovieDetail {
/*
    required int id,
    required num voteAverage,
    required int voteCount,
    required String name,
    required ImgData poster,
    required String date,
    //required num popularity,
    required String type,
     */
  Movie get movie => throw _privateConstructorUsedError;
  String get tagline => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  String get homepage =>
      throw _privateConstructorUsedError; //required ImgData backdrop,
  num? get duration =>
      throw _privateConstructorUsedError; // Duration in minutes. Null if this is a TV show.
  List<String> get genres => throw _privateConstructorUsedError;
  List<Company> get productionCompanies => throw _privateConstructorUsedError;
  List<Cast> get casts => throw _privateConstructorUsedError;
  List<Crew> get crews => throw _privateConstructorUsedError;
  List<ImgData> get backdrops => throw _privateConstructorUsedError;
  List<ImgData> get logos => throw _privateConstructorUsedError;
  List<ImgData> get posters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailCopyWith<MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailCopyWith<$Res> {
  factory $MovieDetailCopyWith(
          MovieDetail value, $Res Function(MovieDetail) then) =
      _$MovieDetailCopyWithImpl<$Res>;
  $Res call(
      {Movie movie,
      String tagline,
      String overview,
      String homepage,
      num? duration,
      List<String> genres,
      List<Company> productionCompanies,
      List<Cast> casts,
      List<Crew> crews,
      List<ImgData> backdrops,
      List<ImgData> logos,
      List<ImgData> posters});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class _$MovieDetailCopyWithImpl<$Res> implements $MovieDetailCopyWith<$Res> {
  _$MovieDetailCopyWithImpl(this._value, this._then);

  final MovieDetail _value;
  // ignore: unused_field
  final $Res Function(MovieDetail) _then;

  @override
  $Res call({
    Object? movie = freezed,
    Object? tagline = freezed,
    Object? overview = freezed,
    Object? homepage = freezed,
    Object? duration = freezed,
    Object? genres = freezed,
    Object? productionCompanies = freezed,
    Object? casts = freezed,
    Object? crews = freezed,
    Object? backdrops = freezed,
    Object? logos = freezed,
    Object? posters = freezed,
  }) {
    return _then(_value.copyWith(
      movie: movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      productionCompanies: productionCompanies == freezed
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
      casts: casts == freezed
          ? _value.casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crews: crews == freezed
          ? _value.crews
          : crews // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
      backdrops: backdrops == freezed
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<ImgData>,
      logos: logos == freezed
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<ImgData>,
      posters: posters == freezed
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ImgData>,
    ));
  }

  @override
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc
abstract class _$MovieDetailCopyWith<$Res>
    implements $MovieDetailCopyWith<$Res> {
  factory _$MovieDetailCopyWith(
          _MovieDetail value, $Res Function(_MovieDetail) then) =
      __$MovieDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {Movie movie,
      String tagline,
      String overview,
      String homepage,
      num? duration,
      List<String> genres,
      List<Company> productionCompanies,
      List<Cast> casts,
      List<Crew> crews,
      List<ImgData> backdrops,
      List<ImgData> logos,
      List<ImgData> posters});

  @override
  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$MovieDetailCopyWithImpl<$Res> extends _$MovieDetailCopyWithImpl<$Res>
    implements _$MovieDetailCopyWith<$Res> {
  __$MovieDetailCopyWithImpl(
      _MovieDetail _value, $Res Function(_MovieDetail) _then)
      : super(_value, (v) => _then(v as _MovieDetail));

  @override
  _MovieDetail get _value => super._value as _MovieDetail;

  @override
  $Res call({
    Object? movie = freezed,
    Object? tagline = freezed,
    Object? overview = freezed,
    Object? homepage = freezed,
    Object? duration = freezed,
    Object? genres = freezed,
    Object? productionCompanies = freezed,
    Object? casts = freezed,
    Object? crews = freezed,
    Object? backdrops = freezed,
    Object? logos = freezed,
    Object? posters = freezed,
  }) {
    return _then(_MovieDetail(
      movie: movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      productionCompanies: productionCompanies == freezed
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
      casts: casts == freezed
          ? _value.casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crews: crews == freezed
          ? _value.crews
          : crews // ignore: cast_nullable_to_non_nullable
              as List<Crew>,
      backdrops: backdrops == freezed
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<ImgData>,
      logos: logos == freezed
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<ImgData>,
      posters: posters == freezed
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ImgData>,
    ));
  }
}

/// @nodoc

class _$_MovieDetail implements _MovieDetail {
  const _$_MovieDetail(
      {required this.movie,
      required this.tagline,
      required this.overview,
      required this.homepage,
      required this.duration,
      required this.genres,
      required this.productionCompanies,
      required this.casts,
      required this.crews,
      required this.backdrops,
      required this.logos,
      required this.posters});

  @override /*
    required int id,
    required num voteAverage,
    required int voteCount,
    required String name,
    required ImgData poster,
    required String date,
    //required num popularity,
    required String type,
     */
  final Movie movie;
  @override
  final String tagline;
  @override
  final String overview;
  @override
  final String homepage;
  @override //required ImgData backdrop,
  final num? duration;
  @override // Duration in minutes. Null if this is a TV show.
  final List<String> genres;
  @override
  final List<Company> productionCompanies;
  @override
  final List<Cast> casts;
  @override
  final List<Crew> crews;
  @override
  final List<ImgData> backdrops;
  @override
  final List<ImgData> logos;
  @override
  final List<ImgData> posters;

  @override
  String toString() {
    return 'MovieDetail(movie: $movie, tagline: $tagline, overview: $overview, homepage: $homepage, duration: $duration, genres: $genres, productionCompanies: $productionCompanies, casts: $casts, crews: $crews, backdrops: $backdrops, logos: $logos, posters: $posters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDetail &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)) &&
            (identical(other.tagline, tagline) ||
                const DeepCollectionEquality()
                    .equals(other.tagline, tagline)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.homepage, homepage) ||
                const DeepCollectionEquality()
                    .equals(other.homepage, homepage)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
            (identical(other.productionCompanies, productionCompanies) ||
                const DeepCollectionEquality()
                    .equals(other.productionCompanies, productionCompanies)) &&
            (identical(other.casts, casts) ||
                const DeepCollectionEquality().equals(other.casts, casts)) &&
            (identical(other.crews, crews) ||
                const DeepCollectionEquality().equals(other.crews, crews)) &&
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
      const DeepCollectionEquality().hash(movie) ^
      const DeepCollectionEquality().hash(tagline) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(homepage) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(productionCompanies) ^
      const DeepCollectionEquality().hash(casts) ^
      const DeepCollectionEquality().hash(crews) ^
      const DeepCollectionEquality().hash(backdrops) ^
      const DeepCollectionEquality().hash(logos) ^
      const DeepCollectionEquality().hash(posters);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailCopyWith<_MovieDetail> get copyWith =>
      __$MovieDetailCopyWithImpl<_MovieDetail>(this, _$identity);
}

abstract class _MovieDetail implements MovieDetail {
  const factory _MovieDetail(
      {required Movie movie,
      required String tagline,
      required String overview,
      required String homepage,
      required num? duration,
      required List<String> genres,
      required List<Company> productionCompanies,
      required List<Cast> casts,
      required List<Crew> crews,
      required List<ImgData> backdrops,
      required List<ImgData> logos,
      required List<ImgData> posters}) = _$_MovieDetail;

  @override /*
    required int id,
    required num voteAverage,
    required int voteCount,
    required String name,
    required ImgData poster,
    required String date,
    //required num popularity,
    required String type,
     */
  Movie get movie => throw _privateConstructorUsedError;
  @override
  String get tagline => throw _privateConstructorUsedError;
  @override
  String get overview => throw _privateConstructorUsedError;
  @override
  String get homepage => throw _privateConstructorUsedError;
  @override //required ImgData backdrop,
  num? get duration => throw _privateConstructorUsedError;
  @override // Duration in minutes. Null if this is a TV show.
  List<String> get genres => throw _privateConstructorUsedError;
  @override
  List<Company> get productionCompanies => throw _privateConstructorUsedError;
  @override
  List<Cast> get casts => throw _privateConstructorUsedError;
  @override
  List<Crew> get crews => throw _privateConstructorUsedError;
  @override
  List<ImgData> get backdrops => throw _privateConstructorUsedError;
  @override
  List<ImgData> get logos => throw _privateConstructorUsedError;
  @override
  List<ImgData> get posters => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailCopyWith<_MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CompanyTearOff {
  const _$CompanyTearOff();

  _Company call(
      {required int id, required ImgData logo, required String name}) {
    return _Company(
      id: id,
      logo: logo,
      name: name,
    );
  }
}

/// @nodoc
const $Company = _$CompanyTearOff();

/// @nodoc
mixin _$Company {
  int get id => throw _privateConstructorUsedError;
  ImgData get logo => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  $Res call({int id, ImgData logo, String name});

  $ImgDataCopyWith<$Res> get logo;
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res> implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  final Company _value;
  // ignore: unused_field
  final $Res Function(Company) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? logo = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as ImgData,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ImgDataCopyWith<$Res> get logo {
    return $ImgDataCopyWith<$Res>(_value.logo, (value) {
      return _then(_value.copyWith(logo: value));
    });
  }
}

/// @nodoc
abstract class _$CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$CompanyCopyWith(_Company value, $Res Function(_Company) then) =
      __$CompanyCopyWithImpl<$Res>;
  @override
  $Res call({int id, ImgData logo, String name});

  @override
  $ImgDataCopyWith<$Res> get logo;
}

/// @nodoc
class __$CompanyCopyWithImpl<$Res> extends _$CompanyCopyWithImpl<$Res>
    implements _$CompanyCopyWith<$Res> {
  __$CompanyCopyWithImpl(_Company _value, $Res Function(_Company) _then)
      : super(_value, (v) => _then(v as _Company));

  @override
  _Company get _value => super._value as _Company;

  @override
  $Res call({
    Object? id = freezed,
    Object? logo = freezed,
    Object? name = freezed,
  }) {
    return _then(_Company(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as ImgData,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Company implements _Company {
  const _$_Company({required this.id, required this.logo, required this.name});

  @override
  final int id;
  @override
  final ImgData logo;
  @override
  final String name;

  @override
  String toString() {
    return 'Company(id: $id, logo: $logo, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Company &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$CompanyCopyWith<_Company> get copyWith =>
      __$CompanyCopyWithImpl<_Company>(this, _$identity);
}

abstract class _Company implements Company {
  const factory _Company(
      {required int id,
      required ImgData logo,
      required String name}) = _$_Company;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  ImgData get logo => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CompanyCopyWith<_Company> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CastTearOff {
  const _$CastTearOff();

  _Cast call(
      {required int id,
      required String name,
      required ImgData profile,
      required String character}) {
    return _Cast(
      id: id,
      name: name,
      profile: profile,
      character: character,
    );
  }
}

/// @nodoc
const $Cast = _$CastTearOff();

/// @nodoc
mixin _$Cast {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ImgData get profile => throw _privateConstructorUsedError;
  String get character => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res>;
  $Res call({int id, String name, ImgData profile, String character});

  $ImgDataCopyWith<$Res> get profile;
}

/// @nodoc
class _$CastCopyWithImpl<$Res> implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  final Cast _value;
  // ignore: unused_field
  final $Res Function(Cast) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? profile = freezed,
    Object? character = freezed,
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
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ImgData,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ImgDataCopyWith<$Res> get profile {
    return $ImgDataCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
abstract class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) then) =
      __$CastCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, ImgData profile, String character});

  @override
  $ImgDataCopyWith<$Res> get profile;
}

/// @nodoc
class __$CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res>
    implements _$CastCopyWith<$Res> {
  __$CastCopyWithImpl(_Cast _value, $Res Function(_Cast) _then)
      : super(_value, (v) => _then(v as _Cast));

  @override
  _Cast get _value => super._value as _Cast;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? profile = freezed,
    Object? character = freezed,
  }) {
    return _then(_Cast(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ImgData,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Cast implements _Cast {
  const _$_Cast(
      {required this.id,
      required this.name,
      required this.profile,
      required this.character});

  @override
  final int id;
  @override
  final String name;
  @override
  final ImgData profile;
  @override
  final String character;

  @override
  String toString() {
    return 'Cast(id: $id, name: $name, profile: $profile, character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(character);

  @JsonKey(ignore: true)
  @override
  _$CastCopyWith<_Cast> get copyWith =>
      __$CastCopyWithImpl<_Cast>(this, _$identity);
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {required int id,
      required String name,
      required ImgData profile,
      required String character}) = _$_Cast;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  ImgData get profile => throw _privateConstructorUsedError;
  @override
  String get character => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CastCopyWith<_Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CrewTearOff {
  const _$CrewTearOff();

  _Crew call(
      {required int id,
      required String name,
      required ImgData profile,
      required String department}) {
    return _Crew(
      id: id,
      name: name,
      profile: profile,
      department: department,
    );
  }
}

/// @nodoc
const $Crew = _$CrewTearOff();

/// @nodoc
mixin _$Crew {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ImgData get profile => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CrewCopyWith<Crew> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrewCopyWith<$Res> {
  factory $CrewCopyWith(Crew value, $Res Function(Crew) then) =
      _$CrewCopyWithImpl<$Res>;
  $Res call({int id, String name, ImgData profile, String department});

  $ImgDataCopyWith<$Res> get profile;
}

/// @nodoc
class _$CrewCopyWithImpl<$Res> implements $CrewCopyWith<$Res> {
  _$CrewCopyWithImpl(this._value, this._then);

  final Crew _value;
  // ignore: unused_field
  final $Res Function(Crew) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? profile = freezed,
    Object? department = freezed,
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
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ImgData,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ImgDataCopyWith<$Res> get profile {
    return $ImgDataCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
abstract class _$CrewCopyWith<$Res> implements $CrewCopyWith<$Res> {
  factory _$CrewCopyWith(_Crew value, $Res Function(_Crew) then) =
      __$CrewCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, ImgData profile, String department});

  @override
  $ImgDataCopyWith<$Res> get profile;
}

/// @nodoc
class __$CrewCopyWithImpl<$Res> extends _$CrewCopyWithImpl<$Res>
    implements _$CrewCopyWith<$Res> {
  __$CrewCopyWithImpl(_Crew _value, $Res Function(_Crew) _then)
      : super(_value, (v) => _then(v as _Crew));

  @override
  _Crew get _value => super._value as _Crew;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? profile = freezed,
    Object? department = freezed,
  }) {
    return _then(_Crew(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ImgData,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Crew implements _Crew {
  const _$_Crew(
      {required this.id,
      required this.name,
      required this.profile,
      required this.department});

  @override
  final int id;
  @override
  final String name;
  @override
  final ImgData profile;
  @override
  final String department;

  @override
  String toString() {
    return 'Crew(id: $id, name: $name, profile: $profile, department: $department)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Crew &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profile, profile) ||
                const DeepCollectionEquality()
                    .equals(other.profile, profile)) &&
            (identical(other.department, department) ||
                const DeepCollectionEquality()
                    .equals(other.department, department)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profile) ^
      const DeepCollectionEquality().hash(department);

  @JsonKey(ignore: true)
  @override
  _$CrewCopyWith<_Crew> get copyWith =>
      __$CrewCopyWithImpl<_Crew>(this, _$identity);
}

abstract class _Crew implements Crew {
  const factory _Crew(
      {required int id,
      required String name,
      required ImgData profile,
      required String department}) = _$_Crew;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  ImgData get profile => throw _privateConstructorUsedError;
  @override
  String get department => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CrewCopyWith<_Crew> get copyWith => throw _privateConstructorUsedError;
}
