// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetail _$_$_MovieDetailFromJson(Map<String, dynamic> json) {
  return _$_MovieDetail(
    movie: Movie.fromJson(json['movie'] as Map<String, dynamic>),
    tagline: json['tagline'] as String,
    overview: json['overview'] as String,
    homepage: json['homepage'] as String,
    duration: json['duration'] as num?,
    genres: (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
    productionCompanies: (json['productionCompanies'] as List<dynamic>)
        .map((e) => Company.fromJson(e as Map<String, dynamic>))
        .toList(),
    casts: (json['casts'] as List<dynamic>)
        .map((e) => Cast.fromJson(e as Map<String, dynamic>))
        .toList(),
    backdrops: (json['backdrops'] as List<dynamic>)
        .map((e) => ImgData.fromJson(e as Map<String, dynamic>))
        .toList(),
    logos: (json['logos'] as List<dynamic>)
        .map((e) => ImgData.fromJson(e as Map<String, dynamic>))
        .toList(),
    posters: (json['posters'] as List<dynamic>)
        .map((e) => ImgData.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MovieDetailToJson(_$_MovieDetail instance) =>
    <String, dynamic>{
      'movie': instance.movie,
      'tagline': instance.tagline,
      'overview': instance.overview,
      'homepage': instance.homepage,
      'duration': instance.duration,
      'genres': instance.genres,
      'productionCompanies': instance.productionCompanies,
      'casts': instance.casts,
      'backdrops': instance.backdrops,
      'logos': instance.logos,
      'posters': instance.posters,
    };

_$_Company _$_$_CompanyFromJson(Map<String, dynamic> json) {
  return _$_Company(
    id: json['id'] as int,
    logo: ImgData.fromJson(json['logo'] as Map<String, dynamic>),
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_CompanyToJson(_$_Company instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo': instance.logo,
      'name': instance.name,
    };

_$_Cast _$_$_CastFromJson(Map<String, dynamic> json) {
  return _$_Cast(
    id: json['id'] as int,
    name: json['name'] as String,
    profile: ImgData.fromJson(json['profile'] as Map<String, dynamic>),
    character: json['character'] as String,
  );
}

Map<String, dynamic> _$_$_CastToJson(_$_Cast instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'profile': instance.profile,
      'character': instance.character,
    };
