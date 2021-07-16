import 'package:dicoding_movie_app/core/data/remote/model/movie_credits_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_detail_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_images_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_trending_api_model.dart';
import 'package:dicoding_movie_app/util/const.dart';
import 'package:dicoding_movie_app/util/net.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'movie_api.g.dart';

@RestApi(baseUrl: Const.API_ROOT)
abstract class MovieApi {
  factory MovieApi({Dio? dio}) => _MovieApi(SiDio.getDefaultInstance(preExisting: dio));

  @GET("/${Const.KEY_TRENDING}/{type}/{time}")
  Future<MovieTrendingResponse> getTrendingList({
    @Path("type") String type = "all",
    @Path("time") String time = "day",
  });

  @GET("/${Const.KEY_TV}/popular")
  Future<MovieTrendingResponse> getTvPopular({
    @Query("page") int page = 1,
  });
  @GET("/${Const.KEY_MOVIE}/popular")
  Future<MovieTrendingResponse> getMoviePopular({
    @Query("page") int page = 1,
  });

  @GET("/${Const.KEY_TV}/{id}")
  Future<MovieDetailResponse> getTvDetail({
    @Path("id") required int id,
  });
  @GET("/${Const.KEY_MOVIE}/{id}")
  Future<MovieDetailResponse> getMovieDetail({
    @Path("id") required int id,
  });

  @GET("/${Const.KEY_TV}/{id}/images")
  Future<MovieImageResponse> getTvImages({
    @Path("id") required int id,
  });
  @GET("/${Const.KEY_MOVIE}/{id}/images")
  Future<MovieImageResponse> getMovieImages({
    @Path("id") required int id,
  });

  @GET("/${Const.KEY_TV}/{id}/credits")
  Future<MovieCreditsResponse> getTvCredits({
    @Path("id") required int id,
  });
  @GET("/${Const.KEY_MOVIE}/{id}/credits")
  Future<MovieCreditsResponse> getMovieCredits({
    @Path("id") required int id,
  });
}