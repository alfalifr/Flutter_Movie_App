import 'package:dicoding_movie_app/core/data/remote/model/movie_detail_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_trending_api_model.dart';
import 'package:dicoding_movie_app/core/domain/model/img.dart';
import 'package:dicoding_movie_app/util/type_util.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required num voteAverage,
    required int voteCount,
    required String name,
    required ImgData poster,
    required DateTime date,
    //required num popularity,
    required String type,
  }) = _Movie;
  //factory Movie.fromJson(Map<String, dynamic> map) = _Movie.fromJson;

  factory Movie.fromDataResponse(MovieTrendingDataResponse response) => Movie(
    id: response.id,
    voteAverage: response.vote_average,
    voteCount: response.vote_count,
    name: response.name,
    poster: ImgData(
      link: response.poster_path,
      isLocal: false,
    ),
    date: parseDate(response.date),
    type: response.media_type,
  );

  factory Movie.fromDetailResponse(MovieDetailResponse response, {
    required String type,
  }) => Movie(
    id: response.id,
    voteAverage: response.vote_average,
    voteCount: response.vote_count,
    name: response.name,
    poster: ImgData(
      link: response.poster_path,
      isLocal: false,
    ),
    date: parseDate(response.date),
    type: type,
  );

  static List<Movie> fromResponse(MovieTrendingResponse response) => response.results
      .map((e) => Movie.fromDataResponse(e)).toList(growable: false);
}
