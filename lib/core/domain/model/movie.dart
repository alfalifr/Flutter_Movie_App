import 'package:dicoding_movie_app/core/data/remote/model/movie_detail_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_trending_api_model.dart';
import 'package:dicoding_movie_app/core/domain/dummy_data.dart';
import 'package:dicoding_movie_app/core/domain/model/img.dart';
import 'package:dicoding_movie_app/util/const.dart';
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
    required ImgData? poster,
    required DateTime? date,
    //required num popularity,
    required String type,
  }) = _Movie;

  factory Movie.fromDataResponse(MovieTrendingDataResponse response, {
    String? type,
  }) {
    if((type ??= response.media_type) == null) {
      throw "Can't have `Movie` with null `type`";
    }
    return Movie(
      id: response.id,
      voteAverage: response.vote_average,
      voteCount: response.vote_count,
      name: response.name,
      poster: response.poster_path != null ? ImgData(
        link: Const.ENDPOINT_IMG_300x450 +response.poster_path!,
        isLocal: false,
      ) : null,
      date: tryParseDate(response.date),
      type: type!,
    );
  }

  factory Movie.fromDetailResponse(MovieDetailResponse response, {
    required String type,
  }) => Movie(
    id: response.id,
    voteAverage: response.vote_average,
    voteCount: response.vote_count,
    name: response.name,
    poster: response.poster_path != null ? ImgData(
      link: Const.ENDPOINT_IMG_300x450 +response.poster_path!,
      isLocal: false,
    ) : null,
    date: parseDate(response.date),
    type: type,
  );

  static List<Movie> fromResponse(MovieTrendingResponse response, { String? type, }) => response.results
      .map((e) => Movie.fromDataResponse(e, type: type,)).toList(growable: false);
}
