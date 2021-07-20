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
import 'package:viewmodel/util/_consoles.dart';


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

    prind("ItemPopular imgWidth= $imgWidth preferredWidth= $preferredWidth");

    final image = SiImages.resolve(img, width: 100);
    final imgChild = Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: AspectRatio(
        aspectRatio: ratio,
        child: image,
      ),
    );

    return Container(
      //height: imgHeight + 50,
      width: imgWidth,
      child: LayoutBuilder(
        builder: (ctx, constr) {
          final actualSize = getActualAspectRatioSize(
            context: ctx,
            constr: constr,
            aspectRatio: ratio,
          );
          final scoreItemLen = actualSize.width /3;

          prind("ItemPopular actualSize= $actualSize imgWidth= $imgWidth scoreItemLen= $scoreItemLen");

          return Stack(
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
                top: actualSize.height - scoreItemLen/2 -10,
                left: 15,
                child: Container(
                  width: scoreItemLen,
                  height: scoreItemLen,
                  child: ItemMovieScore(
                    score: score,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

///*
class ItemMovieScore extends StatelessWidget {
  //final double? width;
  //final double? height;
  final num score;

  ItemMovieScore({
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constr) {
        final scoreStr = "${score.toStringAsFixed(0)} %";
        final scoreText = constr.maxWidth >= 50 ? ThemedText.size0Bold(Text(
          scoreStr, style: TextStyle(color: Colors.white),
        )) : ThemedText.sizeM1Bold(Text(
          scoreStr, style: TextStyle(color: Colors.white),
        ));

        prind("ItemMovieScore constr= $constr");

        return ClipOval(
          child: Container(
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
                scoreText,
              ],
            ),
          ),
        );
      },
    );
  }
}
// */


/// This widget is designed to have the width of its parent.
class ItemTrendingMobile extends StatelessWidget {
  //final ImgData img;
  //final String caption;
  final double? captionBottomMargin;
  final void Function(Movie)? onClick;
  final Movie data;
  //final double? preferredHeight;
/*
  ItemTrendingMobile({
    required this.img,
    required this.caption,
    this.captionBottomMargin,
    this.onClick,
    //this.preferredHeight,
  });
 */

  ItemTrendingMobile.fromData({
    required this.data,
    this.captionBottomMargin,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    final ratio = stdLandscapeMoviePosterRatio;
    final width = MediaQuery.of(context).size.width;
    final height = width / ratio;
    prind("ItemTrendingMobile ratio= $ratio width= $width height= $height");
    //final height = preferredHeight ??
    final imgChild = Stack(
      children: [
        Material(
          color: Colors.transparent,
          child: GestureDetector(
            onTap: onClick != null ? () {
              prind("MovieItem onTap() data= $data");
              onClick!.call(data);
            } : null,
            child: Container(
              height: double.infinity,
              width: width,
              child: SiImages.resolve(data.poster),
            ),
          ),
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
            margin: EdgeInsets.all(10).copyWith(bottom: 10 +(captionBottomMargin ?? 0)),
            child: ThemedText.size1Bold(Text(
              data.name,
              style: TextStyle(color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )),
          ),
        ),
      ],
    );
    return AspectRatio(
      aspectRatio: ratio,
      child: imgChild,
    );
  }
}