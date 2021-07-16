import 'package:dicoding_movie_app/core/domain/model/img.dart';
import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:dicoding_movie_app/util/assets.dart';
import 'package:dicoding_movie_app/util/type_util.dart';
import 'package:flutter/material.dart';

class ItemMovie extends StatelessWidget {
  final ImgData img;
  final String title;
  final DateTime date;
  final num score;
  final int vote;

  ItemMovie({
    required this.img,
    required this.title,
    required this.date,
    required this.score,
    required this.vote,
  });

  factory ItemMovie.fromData(Movie data) => ItemMovie(
    img: data.poster,
    title: data.name,
    date: parseDate(data.date),
    score: data.voteAverage,
    vote: data.voteCount,
  );

  @override
  Widget build(BuildContext context) {
    final image = SiImages.resolve(img);
    
  }
}
