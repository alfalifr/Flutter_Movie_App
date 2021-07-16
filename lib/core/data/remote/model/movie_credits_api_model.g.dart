// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_credits_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieCreditsResponse _$_$_MovieCreditsResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MovieCreditsResponse(
    movie_id: json['id'] as String,
    cast: (json['cast'] as List<dynamic>)
        .map((e) => MovieCastResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MovieCreditsResponseToJson(
        _$_MovieCreditsResponse instance) =>
    <String, dynamic>{
      'id': instance.movie_id,
      'cast': instance.cast,
    };

_$_MovieCastResponse _$_$_MovieCastResponseFromJson(Map<String, dynamic> json) {
  return _$_MovieCastResponse(
    id: json['id'] as int,
    gender: json['gender'] as int,
    name: json['name'] as String,
    profile_path: json['profile_path'] as String,
    character: json['character'] as String,
    popularity: json['popularity'] as num,
  );
}

Map<String, dynamic> _$_$_MovieCastResponseToJson(
        _$_MovieCastResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gender': instance.gender,
      'name': instance.name,
      'profile_path': instance.profile_path,
      'character': instance.character,
      'popularity': instance.popularity,
    };
