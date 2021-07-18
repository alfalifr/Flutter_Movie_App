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
    crew: (json['crew'] as List<dynamic>)
        .map((e) => MovieCrewResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MovieCreditsResponseToJson(
        _$_MovieCreditsResponse instance) =>
    <String, dynamic>{
      'id': instance.movie_id,
      'cast': instance.cast,
      'crew': instance.crew,
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

_$_MovieCrewResponse _$_$_MovieCrewResponseFromJson(Map<String, dynamic> json) {
  return _$_MovieCrewResponse(
    id: json['id'] as int,
    gender: json['gender'] as int,
    name: json['name'] as String,
    profile_path: json['profile_path'] as String,
    known_for_department: json['known_for_department'] as String,
    department: json['department'] as String,
    popularity: json['popularity'] as num,
  );
}

Map<String, dynamic> _$_$_MovieCrewResponseToJson(
        _$_MovieCrewResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gender': instance.gender,
      'name': instance.name,
      'profile_path': instance.profile_path,
      'known_for_department': instance.known_for_department,
      'department': instance.department,
      'popularity': instance.popularity,
    };
