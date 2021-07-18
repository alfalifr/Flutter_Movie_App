import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_credits_api_model.g.dart';
part 'movie_credits_api_model.freezed.dart';

@freezed
class MovieCreditsResponse with _$MovieCreditsResponse {
  const factory MovieCreditsResponse({
    @JsonKey(name: "id")
    required String movie_id,
    required List<MovieCastResponse> cast,
    required List<MovieCrewResponse> crew,
  }) = _MovieCreditsResponse;
  factory MovieCreditsResponse.fromJson(Map<String, dynamic> map) = _MovieCreditsResponse.fromJson;
}

@freezed
class MovieCastResponse with _$MovieCastResponse {
  const factory MovieCastResponse({
    required int id,
    required int gender,
    required String name,
    required String profile_path,
    required String character,
    required num popularity,
  }) = _MovieCastResponse;
  factory MovieCastResponse.fromJson(Map<String, dynamic> map) = _MovieCastResponse.fromJson;
}

@freezed
class MovieCrewResponse with _$MovieCrewResponse {
  const factory MovieCrewResponse({
    required int id,
    required int gender,
    required String name,
    required String profile_path,
    required String known_for_department,
    required String department,
    required num popularity,
  }) = _MovieCrewResponse;
  factory MovieCrewResponse.fromJson(Map<String, dynamic> map) = _MovieCrewResponse.fromJson;
}