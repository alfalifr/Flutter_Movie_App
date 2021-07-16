import 'package:freezed_annotation/freezed_annotation.dart';

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
    required String poster_path,
    @JsonKey(name: "release_date")
    //@JsonKey(name: "first_air_date")
    required String date,
    required num popularity,
    required String media_type,
  }) = _MovieTrendingDataResponse;

  factory MovieTrendingDataResponse.fromJson(Map<String, dynamic> map) //= _MovieTrendingDataResponse.fromJson;
///*
  {
    // This is because Dart's json_serializable can't have multiple date, not like Java GSON.
    if(!map.containsKey("original_title")) {
      final name = map["original_name"];
      if(name == null) {
        throw "The movie doesn't have a name";
      }
      map["original_title"] = name;
    }
    if(!map.containsKey("release_date")) {
      final date = map["first_air_date"];
      if(date == null) {
        throw "The movie doesn't have a date";
      }
      map["release_date"] = date;
    }
    return _MovieTrendingDataResponse.fromJson(map);
  }
// */
}
