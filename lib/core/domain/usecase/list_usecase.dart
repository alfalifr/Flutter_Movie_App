import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:dicoding_movie_app/core/domain/repo/movie_repo.dart';
import 'package:viewmodel/domain/model/result.dart';


abstract class GetTvPopularList {
  Future<Result<List<Movie>>> call();
}
abstract class GetMoviePopularList {
  Future<Result<List<Movie>>> call();
}
abstract class GetTrendingList {
  Future<Result<List<Movie>>> call();
}


class GetTvPopularListImpl extends GetTvPopularList {
  final MovieRepo _repo;
  GetTvPopularListImpl(this._repo);
  @override
  Future<Result<List<Movie>>> call() => _repo.getTvPopular();
}
class GetMoviePopularListImpl extends GetMoviePopularList {
  final MovieRepo _repo;
  GetMoviePopularListImpl(this._repo);
  @override
  Future<Result<List<Movie>>> call() => _repo.getMoviePopular();
}
class GetTrendingListImpl extends GetTrendingList {
  final MovieRepo _repo;
  GetTrendingListImpl(this._repo);
  @override
  Future<Result<List<Movie>>> call() => _repo.getTrending();
}