import 'package:dicoding_movie_app/core/data/remote/source/movie_src.dart';
import 'package:dicoding_movie_app/core/di/api_di.dart';

class RemoteSrcDi {
  RemoteSrcDi._();

  static MovieRemoteSrc get movieSrc => MovieRemoteSrcImpl(ApiDi.movieApi);
}