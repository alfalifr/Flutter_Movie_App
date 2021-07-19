import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dicoding_movie_app/core/domain/model/img.dart';
import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:dicoding_movie_app/res/colors.dart';
import 'package:dicoding_movie_app/res/dimes.dart';
import 'package:dicoding_movie_app/ui/widget/text_widget.dart';
import 'package:dicoding_movie_app/util/assets.dart';
import 'package:dicoding_movie_app/util/times.dart';
import 'package:dicoding_movie_app/util/ui_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ItemPopular extends StatelessWidget {
  final ImgData img;
  final String title;
  final DateTime date;
  final num score;
  final int vote;
  final double? preferredWidth;

  ItemPopular({
    required this.img,
    required this.title,
    required this.date,
    required this.score,
    required this.vote,
    this.preferredWidth,
  });

  factory ItemPopular.fromData(Movie data, {
    double? preferredWidth,
  }) => ItemPopular(
    img: data.poster,
    title: data.name,
    date: data.date,
    score: data.voteAverage,
    vote: data.voteCount,
    preferredWidth: preferredWidth,
  );

  @override
  Widget build(BuildContext context) {
    final ratio = stdPortraitMoviePosterRatio;
    final imgWidth = preferredWidth ?? 190.0;
    final imgHeight = imgWidth / ratio;

    final image = SiImages.resolve(img, width: 100);
    final imgChild = Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Container(
        width: imgWidth,
        child: AspectRatio(
          aspectRatio: ratio,
          child: image,
        ),
      ),
    );

    return Container(
      //height: imgHeight + 50,
      width: imgWidth,
      child: Stack(
        children: [
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                imgChild,
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10).copyWith(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ThemedText.size1Bold(Text(
                        title,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      )),
                      SizedBox(height: 10,),
                      Text(syncFormatTime(date)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: imgHeight-50,
            left: 15,
            child: ItemMovieScore(
              width: 65,
              height: 65,
              score: score,
            ),
          ),
        ],
      ),
    );
  }
}

///*
class ItemMovieScore extends StatelessWidget {
  final double? width;
  final double? height;
  final num score;

  ItemMovieScore({
    required this.score,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: width,
        height: height,
        color: primarySwatch.shade900,
        padding: EdgeInsets.all(5),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: CircularProgressIndicator(
                value: score.toDouble() / 100,
                strokeWidth: 5,
                color: getColorPointFromLinearGradient(
                  first: red,
                  last: green_light,
                  point: score.toDouble() / 100,
                ),
              ),
            ),
            ThemedText.size0Bold(Text(
              "${score.toStringAsFixed(0)} %",
              style: TextStyle(color: Colors.white),
            )),
          ],
        ),
      ),
    );
  }
}
// */


/// This widget is designed to have the width of its parent.
class ItemTrendingMobile extends StatelessWidget {
  final ImgData img;
  final String caption;
  //final double? preferredHeight;

  ItemTrendingMobile({
    required this.img,
    required this.caption,
    //this.preferredHeight,
  });

  ItemTrendingMobile.fromData(Movie data,
  //    {this.preferredHeight,}
  ): img = data.poster, caption = data.name;

  @override
  Widget build(BuildContext context) {
    final ratio = stdLandscapeMoviePosterRatio;
    final width = MediaQuery.of(context).size.width;
    final height = width / ratio;
    //final height = preferredHeight ??
    final imgChild = Stack(
      children: [
        Container(
          height: height,
          width: width,
          child: SiImages.resolve(img),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                black_trans_4,
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.0, 0.4,],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            margin: EdgeInsets.all(10),
            child: ThemedText.size1Bold(Text(
              caption,
              style: TextStyle(color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )),
          )
        ),
      ],
    );
    return AspectRatio(
      aspectRatio: ratio,
      child: imgChild,
    );
  }
}