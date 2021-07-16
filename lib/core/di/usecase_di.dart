import 'package:dicoding_movie_app/core/di/repo_di.dart';
import 'package:dicoding_movie_app/core/domain/usecase/detail_usecase.dart';
import 'package:dicoding_movie_app/core/domain/usecase/list_usecase.dart';

class UseCaseDi {
  UseCaseDi._();

  static GetTrendingList get getTrendingList => GetTrendingListImpl(RepoDi.movieRepo);
  static GetMoviePopularList get getMoviePopularList => GetMoviePopularListImpl(RepoDi.movieRepo);
  static GetTvPopularList get getTvPopularList => GetTvPopularListImpl(RepoDi.movieRepo);

  static GetDetail get getDetail => GetDetailImpl(RepoDi.movieRepo);
}