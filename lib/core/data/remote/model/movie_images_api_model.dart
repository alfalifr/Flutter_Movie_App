import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_images_api_model.g.dart';
part 'movie_images_api_model.freezed.dart';

@freezed
class MovieImageResponse with _$MovieImageResponse {
  const factory MovieImageResponse({
    @JsonKey(name: "id")
    required int movieId,
    required List<MovieImageDataResponse> backdrops,
    required List<MovieImageDataResponse> logos,
    required List<MovieImageDataResponse> posters,
  }) = _MovieImagesResponse;
  factory MovieImageResponse.fromJson(Map<String, dynamic> map) = _MovieImagesResponse.fromJson;
}

@freezed
class MovieImageDataResponse with _$MovieImageDataResponse {
  const factory MovieImageDataResponse({
    required num aspect_ratio,
    required num height,
    required num width,
    required String file_path,
    required num vote_average,
    required int vote_count,
  }) = _MovieImageDataResponse;
  factory MovieImageDataResponse.fromJson(Map<String, dynamic> map) = _MovieImageDataResponse.fromJson;
}