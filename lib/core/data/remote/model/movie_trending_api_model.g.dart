// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_trending_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieTrendingResponse _$_$_MovieTrendingResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MovieTrendingResponse(
    page: json['page'] as int,
    results: (json['results'] as List<dynamic>)
        .map((e) =>
            MovieTrendingDataResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MovieTrendingResponseToJson(
        _$_MovieTrendingResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

_$_MovieTrendingDataResponse _$_$_MovieTrendingDataResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MovieTrendingDataResponse(
    id: json['id'] as int,
    vote_average: json['vote_average'] as num,
    vote_count: json['vote_count'] as num,
    name: json['original_title'] as String,
    overview: json['overview'] as String,
    poster_path: json['poster_path'] as String,
    date: json['release_date'] as String,
    popularity: json['popularity'] as num,
    media_type: json['media_type'] as String,
  );
}

Map<String, dynamic> _$_$_MovieTrendingDataResponseToJson(
        _$_MovieTrendingDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
      'original_title': instance.name,
      'overview': instance.overview,
      'poster_path': instance.poster_path,
      'release_date': instance.date,
      'popularity': instance.popularity,
      'media_type': instance.media_type,
    };
