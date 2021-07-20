
import 'package:dicoding_movie_app/core/data/remote/api/movie_api.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_detail_api_model.dart';
import 'package:dicoding_movie_app/core/data/remote/model/movie_trending_api_model.dart';
import 'package:dicoding_movie_app/core/di/api_di.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:viewmodel/util/_consoles.dart';

final faker = Faker();
late MovieApi _api;
late MovieTrendingResponse _movieResponses;
late MovieTrendingResponse _tvResponses;

main() async {
  _api = ApiDi.movieApi;

  _group1();
}


_group1() {
  group("Movie Api Test", () {
    test("_getTrendingList", () async {
      prinw("_getTrendingList ==========");
      await _getTrendingList();
      prinw("_getTrendingList ========== end");
    });

    print("");

    test("_getTvPopular", () async {
      prinw("_getTvPopular ==========");
      await _getTvPopular();
      prinw("_getTvPopular ========== end");
    });

    print("");

    test("_getMoviePopular", () async {
      prinw("_getMoviePopular ==========");
      await _getMoviePopular();
      prinw("_getMoviePopular ========== end");
    });

    print("");

    test("_getTvDetail", () async {
      prinw("_getTvDetail ==========");
      await _getTvDetail();
      prinw("_getTvDetail ========== end");
    });

    print("");

    test("_getMovieDetail", () async {
      prinw("_getMovieDetail ==========");
      await _getMovieDetail();
      prinw("_getMovieDetail ========== end");
    });

    print("");

    test("_getTvImages", () async {
      prinw("_getTvImages ==========");
      await _getTvImages();
      prinw("_getTvImages ========== end");
    });

    print("");

    test("_getMovieImages", () async {
      prinw("_getMovieImages ==========");
      await _getMovieImages();
      prinw("_getMovieImages ========== end");
    });

    print("");

    test("_getTvCredits", () async {
      prinw("_getTvCredits ==========");
      await _getTvCredits();
      prinw("_getTvCredits ========== end");
    });

    print("");

    test("_getMovieCredits", () async {
      prinw("_getMovieCredits ==========");
      await _getMovieCredits();
      prinw("_getMovieCredits ========== end");
    });

    print("");

  });
}


_getTrendingList() async {
  final res = await _api.getTrendingList();
  prinr("res= $res");
}

_getTvPopular() async {
  final page = faker.randomGenerator.integer(10, min: 1);
  prind("page= $page");
  final res = await _api.getTvPopular(page: page);
  prinr("res= $res");
  _tvResponses = res;
}

_getMoviePopular() async {
  final page = faker.randomGenerator.integer(10, min: 1);
  prind("page= $page");
  final res = await _api.getMoviePopular(page: page);
  prinr("res= $res");
  _movieResponses = res;
}

_getTvDetail() async {
  int i= 0;
  for(final resp in _tvResponses.results) {
    final res = await _api.getTvDetail(id: resp.id);
    prinr("i= $i res= $res");
    assert(res.id == resp.id);
    assert(res.name == resp.name);
    assert(res.overview == resp.overview);
    i++;
  }
}

_getMovieDetail() async {
  int i= 0;
  for(final resp in _movieResponses.results) {
    final res = await _api.getMovieDetail(id: resp.id);
    prinr("i= $i res= $res");
    assert(res.id == resp.id);
    assert(res.name == resp.name);
    assert(res.overview == resp.overview);
    i++;
  }
}

_getTvImages() async {
  int i= 0;
  for(final resp in _tvResponses.results) {
    final res = await _api.getTvImages(id: resp.id);
    prinr("i= $i res= $res");
    i++;
  }
}

_getMovieImages() async {
  int i = 0;
  for(final resp in _movieResponses.results) {
    final res = await _api.getMovieImages(id: resp.id);
    prinr("i= $i res= $res");
    i++;
  }
}

_getTvCredits() async {
  int i= 0;
  for(final resp in _tvResponses.results) {
    final res = await _api.getTvCredits(id: resp.id);
    prinr("i= $i res= $res");
    i++;
  }
}

_getMovieCredits() async {
  int i= 0;
  for(final resp in _movieResponses.results) {
    final res = await _api.getMovieCredits(id: resp.id);
    prinr("i= $i res= $res");
    i++;
  }
}