import 'package:dicoding_movie_app/util/credentials.dart';

class Const {
  Const._();

  static const API_ROOT = "https://api.themoviedb.org/3";
  static const API_KEY = Creds.API_KEY;

  static const ENDPOINT_PUBLIC = "https://themoviedb.org";
  static const ENDPOINT_IMG = "$ENDPOINT_PUBLIC/t/p";
  static const ENDPOINT_IMG_300x450 = "$ENDPOINT_IMG/w300_and_h450_bestv2";
  static const ENDPOINT_IMG_533x300 = "$ENDPOINT_IMG/w533_and_h300_bestv2";
  static const ENDPOINT_IMG_276x350_FACE = "$ENDPOINT_IMG/w276_and_h350_face/";

  static const KEY_API_KEY = "api_key";

  static const KEY_TRENDING = "trending";
  static const KEY_MOVIE = "movie";
  static const KEY_TV = "tv";

  static const DIMEN_DEF_MOBILE_ASPECT_RATIO = 2/3;
  static const DEF_SCORE_SCALE = 10;
}

enum ScreenSize {
  /// When width < height.
  mobile,

  /// When width >= height.
  desktop,
}