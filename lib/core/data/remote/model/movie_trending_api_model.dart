import 'package:dicoding_movie_app/util/data_mapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:viewmodel/util/_consoles.dart';

part 'movie_trending_api_model.g.dart';
part 'movie_trending_api_model.freezed.dart';

@freezed
class MovieTrendingResponse with _$MovieTrendingResponse {
  const factory MovieTrendingResponse({
    required int page,
    required List<MovieTrendingDataResponse> results,
  }) = _MovieTrendingResponse;
  factory MovieTrendingResponse.fromJson(Map<String, dynamic> map) = _MovieTrendingResponse.fromJson;
}

@freezed
class MovieTrendingDataResponse with _$MovieTrendingDataResponse {
  const factory MovieTrendingDataResponse({
    required int id,
    required num vote_average,
    required int vote_count,
    @JsonKey(name: "original_title")
    //@JsonKey(name: "original_name")
    required String name,
    required String overview,
    required String? poster_path,
    @JsonKey(name: "release_date")
    //@JsonKey(name: "first_air_date")
    required String? date,
    required num popularity,
    required String? media_type,
  }) = _MovieTrendingDataResponse;

  factory MovieTrendingDataResponse.fromJson(Map<String, dynamic> map) =>
      _MovieTrendingDataResponse.fromJson(getTunedMovieResponseMap(map));
}
