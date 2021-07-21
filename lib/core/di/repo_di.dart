import 'package:dicoding_movie_app/core/data/repo/movie_repo.dart';
import 'package:dicoding_movie_app/core/di/src_di.dart';
import 'package:dicoding_movie_app/core/domain/repo/movie_repo.dart';

class RepoDi {
  RepoDi._();

  static MovieRepo get movieRepo => MovieRepoImpl(RemoteSrcDi.movieSrc);
}