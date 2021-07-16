import 'package:dicoding_movie_app/core/data/remote/api/movie_api.dart';

class ApiDi {
  ApiDi._();

  static MovieApi get movieApi => MovieApi();
}