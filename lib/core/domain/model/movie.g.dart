// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$_$_MovieFromJson(Map<String, dynamic> json) {
  return _$_Movie(
    id: json['id'] as int,
    voteAverage: json['voteAverage'] as num,
    voteCount: json['voteCount'] as int,
    name: json['name'] as String,
    poster: ImgData.fromJson(json['poster'] as Map<String, dynamic>),
    date: json['date'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$_$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
      'name': instance.name,
      'poster': instance.poster,
      'date': instance.date,
      'type': instance.type,
    };
