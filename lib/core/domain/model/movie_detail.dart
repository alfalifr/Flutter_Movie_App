import 'package:dicoding_movie_app/core/data/remote/model/movie_credits_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_detail_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_images_api_model.dart';
import 'package:dicoding_movie_app/core/domain/model/img.dart';
import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail.freezed.dart';

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    /*
    required int id,
    required num voteAverage,
    required int voteCount,
    required String name,
    required ImgData poster,
    required String date,
    //required num popularity,
    required String type,
     */
    required Movie movie,
    required String tagline,
    required String overview,
    required String homepage,
    //required ImgData backdrop,
    required num? duration, // Duration in minutes. Null if this is a TV show.
    required List<String> genres,
    required List<Company> productionCompanies,
    required List<Cast> casts,
    required List<Crew> crews,
    required List<ImgData> backdrops,
    required List<ImgData> logos,
    required List<ImgData> posters,
  }) = _MovieDetail;

  //factory MovieDetail.fromJson(Map<String, dynamic> map) = _MovieDetail.fromJson;

  factory MovieDetail.fromResponse({
    required MovieDetailResponse detail,
    required MovieImageResponse images,
    required MovieCreditsResponse credits,
    required String type,
  }) {
    final movie = Movie.fromDetailResponse(detail, type: type);
    final genres = detail.genres.map((e) => e.name).toList(growable: false);
    final companies = detail.production_companies.map((e) => Company.fromResponse(e)).toList(growable: false);
    final casts = credits.cast.map((e) => Cast.fromResponse(e)).toList(growable: false);
    final crews = credits.crew.map((e) => Crew.fromResponse(e)).toList(growable: false);
    final posters = images.posters.map((e) => ImgData.fromResponse(e)).toList(growable: false);
    final logos = images.logos.map((e) => ImgData.fromResponse(e)).toList(growable: false);
    final backdrops = images.backdrops.map((e) => ImgData.fromResponse(e)).toList(growable: false);

    return MovieDetail(
      movie: movie,
      tagline: detail.tagline,
      overview: detail.overview,
      homepage: detail.homepage,
      duration: detail.runtime,
      genres: genres,
      productionCompanies: companies,
      casts: casts,
      crews: crews,
      backdrops: backdrops,
      logos: logos,
      posters: posters,
    );
  }
}

@freezed
class Company with _$Company {
  const factory Company({
    required int id,
    required ImgData logo,
    required String name,
  }) = _Company;
  //factory Company.fromJson(Map<String, dynamic> map) = _Company.fromJson;
  factory Company.fromResponse(MovieDetailCompanyResponse response) => Company(
    id: response.id,
    logo: ImgData(
      link: response.logo_path,
      isLocal: false,
    ),
    name: response.name,
  );
}

@freezed
class Cast with _$Cast {
  const factory Cast({
    required int id,
    required String name,
    required ImgData profile,
    required String character,
  }) = _Cast;
  //factory Cast.fromJson(Map<String, dynamic> map) = _Cast.fromJson;
  factory Cast.fromResponse(MovieCastResponse response) => Cast(
    id: response.id,
    name: response.name,
    profile: ImgData(
      link: response.profile_path,
      isLocal: false,
    ),
    character: response.character,
  );
}

@freezed
class Crew with _$Crew {
  const factory Crew({
    required int id,
    required String name,
    required ImgData profile,
    required String department,
  }) = _Crew;
  factory Crew.fromResponse(MovieCrewResponse response) => Crew(
    id: response.id,
    name: response.name,
    profile: ImgData(
      link: response.profile_path,
      isLocal: false,
    ),
    department: response.known_for_department,
  );
}