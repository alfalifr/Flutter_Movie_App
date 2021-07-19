import 'package:dicoding_movie_app/util/credentials.dart';

class Const {
  Const._();

  static const API_ROOT = "https://api.themoviedb.org/3";
  static const API_KEY = Creds.API_KEY;

  static const KEY_API_KEY = "api_key";

  static const KEY_TRENDING = "trending";
  static const KEY_MOVIE = "movie";
  static const KEY_TV = "tv";

  static const DIMEN_DEF_MOBILE_ASPECT_RATIO = 2/3;
}

enum ScreenSize {
  /// When width < height.
  mobile,

  /// When width >= height.
  desktop,
}