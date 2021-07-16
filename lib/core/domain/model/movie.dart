import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required num voteAverage,
    required int voteCount,
    required String name,
    required String overview,
    required String poster,
    required String date,
    required num popularity,
    required String media_type,
  }) = _Movie;
  factory Movie.fromJson(Map<String, dynamic> map) = _Movie.fromJson;
}