import 'package:dicoding_movie_app/core/data/remote/api/movie_api.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_credits_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_detail_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_images_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_trending_api_model.dart';
import 'package:viewmodel/domain/model/result.dart';
import 'package:viewmodel/util/_consoles.dart';

abstract class MovieRemoteSrc {
  Future<Result<MovieTrendingResponse>> getTrendingList({
    String type = "all",
    String time = "day",
  });

  Future<Result<MovieTrendingResponse>> getTvPopular({int page = 1,});
  Future<Result<MovieTrendingResponse>> getMoviePopular({int page = 1,});

  Future<Result<MovieDetailResponse>> getTvDetail({required int id,});
  Future<Result<MovieDetailResponse>> getMovieDetail({required int id,});

  Future<Result<MovieImageResponse>> getTvImages({required int id,});
  Future<Result<MovieImageResponse>> getMovieImages({required int id,});

  Future<Result<MovieCreditsResponse>> getTvCredits({required int id,});
  Future<Result<MovieCreditsResponse>> getMovieCredits({required int id,});
}


class MovieRemoteSrcImpl extends MovieRemoteSrc {
  final MovieApi _api;
  MovieRemoteSrcImpl(this._api);

  @override
  Future<Result<MovieTrendingResponse>> getTrendingList({
    String type = "all",
    String time = "day",
  }) async {
    try {
      final res = await _api.getTrendingList(type: type, time: time);
      return Success(res);
    } catch(e, stack) {
      prine(e);
      prine(stack);
      return Fail(error: e);
    }
  }

  @override
  Future<Result<MovieTrendingResponse>> getTvPopular({int page = 1,}) async {
    try {
      final res = await _api.getTvPopular(page: page);
      return Success(res);
    } catch(e, stack) {
      prine(e);
      prine(stack);
      return Fail(error: e);
    }
  }
  @override
  Future<Result<MovieTrendingResponse>> getMoviePopular({int page = 1,}) async {
    try {
      final res = await _api.getMoviePopular(page: page);
      return Success(res);
    } catch(e, stack) {
      prine(e);
      prine(stack);
      return Fail(error: e);
    }
  }

  @override
  Future<Result<MovieDetailResponse>> getTvDetail({required int id,}) async {
    try {
      final res = await _api.getTvDetail(id: id);
      return Success(res);
    } catch(e, stack) {
      prine(e);
      prine(stack);
      return Fail(error: e);
    }
  }
  @override
  Future<Result<MovieDetailResponse>> getMovieDetail({required int id,}) async {
    try {
      final res = await _api.getMovieDetail(id: id);
      return Success(res);
    } catch(e, stack) {
      prine(e);
      prine(stack);
      return Fail(error: e);
    }
  }

  @override
  Future<Result<MovieImageResponse>> getTvImages({required int id,}) async {
    try {
      final res = await _api.getTvImages(id: id);
      return Success(res);
    } catch(e, stack) {
      prine(e);
      prine(stack);
      return Fail(error: e);
    }
  }
  @override
  Future<Result<MovieImageResponse>> getMovieImages({required int id,}) async {
    try {
      final res = await _api.getMovieImages(id: id);
      return Success(res);
    } catch(e, stack) {
      prine(e);
      prine(stack);
      return Fail(error: e);
    }
  }

  @override
  Future<Result<MovieCreditsResponse>> getTvCredits({required int id,}) async {
    try {
      final res = await _api.getTvCredits(id: id);
      return Success(res);
    } catch(e, stack) {
      prine(e);
      prine(stack);
      return Fail(error: e);
    }
  }
  @override
  Future<Result<MovieCreditsResponse>> getMovieCredits({required int id,}) async {
    try {
      final res = await _api.getMovieCredits(id: id);
      return Success(res);
    } catch(e, stack) {
      prine(e);
      prine(stack);
      return Fail(error: e);
    }
  }
}