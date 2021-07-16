import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:dicoding_movie_app/core/domain/model/movie_detail.dart';
import 'package:viewmodel/domain/model/result.dart';


abstract class MovieRepo {
  Future<Result<List<Movie>>> getTrending({
    String type = "all",
    String time = "day",
  });

  Future<Result<List<Movie>>> getTvPopular({int page = 1,});
  Future<Result<List<Movie>>> getMoviePopular({int page = 1,});

  Future<Result<MovieDetail>> getTvDetail({required int id,});
  Future<Result<MovieDetail>> getMovieDetail({required int id,});
}