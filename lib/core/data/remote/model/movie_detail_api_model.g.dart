// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetailResponse _$_$_MovieDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MovieDetailResponse(
    id: json['id'] as int,
    vote_average: json['vote_average'] as num,
    vote_count: json['vote_count'] as int,
    name: json['original_title'] as String,
    tagline: json['tagline'] as String?,
    overview: json['overview'] as String,
    homepage: json['homepage'] as String,
    poster_path: json['poster_path'] as String?,
    backdrop_path: json['backdrop_path'] as String?,
    date: json['release_date'] as String?,
    popularity: json['popularity'] as num,
    runtime: json['runtime'] as num?,
    genres: (json['genres'] as List<dynamic>)
        .map(
            (e) => MovieDetailGenreResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    production_companies: (json['production_companies'] as List<dynamic>)
        .map((e) =>
            MovieDetailCompanyResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MovieDetailResponseToJson(
        _$_MovieDetailResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
      'original_title': instance.name,
      'tagline': instance.tagline,
      'overview': instance.overview,
      'homepage': instance.homepage,
      'poster_path': instance.poster_path,
      'backdrop_path': instance.backdrop_path,
      'release_date': instance.date,
      'popularity': instance.popularity,
      'runtime': instance.runtime,
      'genres': instance.genres,
      'production_companies': instance.production_companies,
    };

_$_MovieDetailGenreResponse _$_$_MovieDetailGenreResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MovieDetailGenreResponse(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_MovieDetailGenreResponseToJson(
        _$_MovieDetailGenreResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_MovieDetailCompanyResponse _$_$_MovieDetailCompanyResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MovieDetailCompanyResponse(
    id: json['id'] as int,
    logo_path: json['logo_path'] as String?,
    name: json['name'] as String,
    origin_country: json['origin_country'] as String,
  );
}

Map<String, dynamic> _$_$_MovieDetailCompanyResponseToJson(
        _$_MovieDetailCompanyResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logo_path,
      'name': instance.name,
      'origin_country': instance.origin_country,
    };
