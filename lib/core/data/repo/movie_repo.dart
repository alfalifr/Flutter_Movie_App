import 'package:dicoding_movie_app/core/data/remote/model/movie_credits_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_detail_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_images_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_trending_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/source/movie_src.dart';
import 'package:dicoding_movie_app/core/domain/dummy_data.dart';
import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:dicoding_movie_app/core/domain/model/movie_detail.dart';
import 'package:dicoding_movie_app/core/domain/repo/movie_repo.dart';
import 'package:dicoding_movie_app/util/const.dart';
import 'package:viewmodel/domain/model/result.dart';

class MovieRepoImpl extends MovieRepo {
  final MovieRemoteSrc _remoteSrc;
  MovieRepoImpl(this._remoteSrc);

  @override
  Future<Result<List<Movie>>> getTrending({
    String type = "all",
    String time = "day",
  }) async {
    final res = await _remoteSrc.getTrendingList(type: type, time: time);
    if(res is Success<MovieTrendingResponse>) {
      final list = Movie.fromResponse(res.data);
      return Success(list);
    }
    return (res as Fail<MovieTrendingResponse>).copy();
  }

  @override
  Future<Result<List<Movie>>> getMoviePopular({int page = 1,}) async {
    final res = await _remoteSrc.getMoviePopular(page: page);
    if(res is Success<MovieTrendingResponse>) {
      final list = Movie.fromResponse(res.data);
      return Success(list);
    }
    return (res as Fail<MovieTrendingResponse>).copy();
  }
  @override
  Future<Result<List<Movie>>> getTvPopular({int page = 1,}) async {
    final res = await _remoteSrc.getTvPopular(page: page);
    if(res is Success<MovieTrendingResponse>) {
      final list = Movie.fromResponse(res.data);
      return Success(list);
    }
    return (res as Fail<MovieTrendingResponse>).copy();
  }

  @override
  Future<Result<MovieDetail>> getMovieDetail({required int id}) async {
    final resDetail = await _remoteSrc.getMovieDetail(id: id);
    final resImg = await _remoteSrc.getMovieImages(id: id);
    final resCast = await _remoteSrc.getMovieCredits(id: id);

    if(resDetail is Success<MovieDetailResponse>
      && resImg is Success<MovieImageResponse>
      && resCast is Success<MovieCreditsResponse>
    ) {
      final rawDetail = resDetail.data;
      final rawImg = resImg.data;
      final rawCast = resCast.data;

      final detail = MovieDetail.fromResponse(
        detail: rawDetail,
        images: rawImg,
        credits: rawCast,
        type: Const.KEY_MOVIE,
      );
      return Success(detail);
    }
    return Fail(msg: "Error calling `getMovieDetail()`, resDetail= ${resDetail.runtimeType} resImg= ${resImg.runtimeType} resCast= ${resCast.runtimeType}");
  }
  @override
  Future<Result<MovieDetail>> getTvDetail({required int id}) async {
    final resDetail = await _remoteSrc.getTvDetail(id: id);
    final resImg = await _remoteSrc.getTvImages(id: id);
    final resCast = await _remoteSrc.getTvCredits(id: id);

    if(resDetail is Success<MovieDetailResponse>
        && resImg is Success<MovieImageResponse>
        && resCast is Success<MovieCreditsResponse>
    ) {
      final rawDetail = resDetail.data;
      final rawImg = resImg.data;
      final rawCast = resCast.data;

      final detail = MovieDetail.fromResponse(
        detail: rawDetail,
        images: rawImg,
        credits: rawCast,
        type: Const.KEY_MOVIE,
      );
      return Success(detail);
    }
    return Fail(msg: "Error calling `getTvDetail()`, resDetail= ${resDetail.runtimeType} resImg= ${resImg.runtimeType} resCast= ${resCast.runtimeType}");
  }
}


class MovieRepoDummy extends MovieRepo {
  MovieRepoDummy._();
  static final obj = MovieRepoDummy._();

  @override
  Future<Result<MovieDetail>> getMovieDetail({required int id}) async => Success(
    dummyMovieDetailList.firstWhere((e) => e.movie.id == id)
  );
  @override
  Future<Result<MovieDetail>> getTvDetail({required int id}) async => Success(
      dummyMovieDetailList.firstWhere((e) => e.movie.id == id)
  );

  @override
  Future<Result<List<Movie>>> getMoviePopular({int page = 1}) async => Success(dummyMovieList);
  @override
  Future<Result<List<Movie>>> getTvPopular({int page = 1}) async => Success(dummyMovieList);

  @override
  Future<Result<List<Movie>>> getTrending({String type = "all", String time = "day"}) async => Success(dummyTrendingList);
}