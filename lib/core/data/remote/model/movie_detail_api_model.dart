


import 'package:dicoding_movie_app/util/data_mapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_api_model.g.dart';
part 'movie_detail_api_model.freezed.dart';


@freezed
class MovieDetailResponse with _$MovieDetailResponse {
  const factory MovieDetailResponse({
    required int id,
    required num vote_average,
    required int vote_count,
    @JsonKey(name: "original_title")
    //@JsonKey(name: "original_name")
    required String name,
    required String? tagline,
    required String overview,
    required String homepage,
    required String? poster_path,
    required String? backdrop_path,
    @JsonKey(name: "release_date")
    //@JsonKey(name: "first_air_date")
    required String? date,
    required num popularity,
    required num? runtime, // Duration in minutes. Null if this is a TV show.
    required List<MovieDetailGenreResponse> genres,
    required List<MovieDetailCompanyResponse> production_companies,
    //required String media_type,
  }) = _MovieDetailResponse;
  factory MovieDetailResponse.fromJson(Map<String, dynamic> map) =>
      _MovieDetailResponse.fromJson(getTunedMovieResponseMap(map));
}


@freezed
class MovieDetailGenreResponse with _$MovieDetailGenreResponse {
  const factory MovieDetailGenreResponse({
    required int id,
    required String name,
  }) = _MovieDetailGenreResponse;
  factory MovieDetailGenreResponse.fromJson(Map<String, dynamic> map) = _MovieDetailGenreResponse.fromJson;
}

@freezed
class MovieDetailCompanyResponse with _$MovieDetailCompanyResponse {
  const factory MovieDetailCompanyResponse({
    required int id,
    required String? logo_path,
    required String name,
    required String origin_country,
  }) = _MovieDetailCompanyResponse;
  factory MovieDetailCompanyResponse.fromJson(Map<String, dynamic> map) = _MovieDetailCompanyResponse.fromJson;
}