import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:dicoding_movie_app/core/domain/model/movie_detail.dart';
import 'package:dicoding_movie_app/core/domain/repo/movie_repo.dart';
import 'package:dicoding_movie_app/util/const.dart';
import 'package:viewmodel/domain/model/result.dart';


abstract class GetDetail {
  Future<Result<MovieDetail>> call(Movie movie);
}


class GetDetailImpl extends GetDetail {
  final MovieRepo _repo;
  GetDetailImpl(this._repo);
  @override
  Future<Result<MovieDetail>> call(Movie movie) async {
    switch(movie.type) {
      case Const.KEY_MOVIE: return _repo.getMovieDetail(id: movie.id);
      case Const.KEY_TV: return _repo.getTvDetail(id: movie.id);
    }
    throw "No such `type` of '${movie.type}'";
  }
}