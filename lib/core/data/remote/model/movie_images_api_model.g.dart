// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_images_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieImagesResponse _$_$_MovieImagesResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MovieImagesResponse(
    movieId: json['id'] as String,
    backdrops: (json['backdrops'] as List<dynamic>)
        .map((e) => MovieImageDataResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    logos: (json['logos'] as List<dynamic>)
        .map((e) => MovieImageDataResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    posters: (json['posters'] as List<dynamic>)
        .map((e) => MovieImageDataResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MovieImagesResponseToJson(
        _$_MovieImagesResponse instance) =>
    <String, dynamic>{
      'id': instance.movieId,
      'backdrops': instance.backdrops,
      'logos': instance.logos,
      'posters': instance.posters,
    };

_$_MovieImageDataResponse _$_$_MovieImageDataResponseFromJson(
    Map<String, dynamic> json) {
  return _$_MovieImageDataResponse(
    aspect_ratio: json['aspect_ratio'] as num,
    height: json['height'] as num,
    width: json['width'] as num,
    file_path: json['file_path'] as String,
    vote_average: json['vote_average'] as num,
    vote_count: json['vote_count'] as int,
  );
}

Map<String, dynamic> _$_$_MovieImageDataResponseToJson(
        _$_MovieImageDataResponse instance) =>
    <String, dynamic>{
      'aspect_ratio': instance.aspect_ratio,
      'height': instance.height,
      'width': instance.width,
      'file_path': instance.file_path,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };
