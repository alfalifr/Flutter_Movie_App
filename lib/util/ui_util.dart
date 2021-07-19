import 'dart:math';

import 'package:dicoding_movie_app/core/domain/model/color.dart';
import 'package:dicoding_movie_app/util/const.dart';
import 'package:flutter/material.dart';

/// Get a single color in certain [point] in color gradient between [first] and [last] color.
///
/// [point] should have range between 0.0 - 1.0.
/// If [point] is less or greater then the range, then [point] will be
/// rounded up / down to the nearest value.
Color getColorPointFromLinearGradient({
  required Color first,
  required Color last,
  required double point, // from 0.0 - 1.0
}) {
  if(point <= 0.0) return first;
  if(point >= 1.0) return last;
/*
  final diffVal = last.value - first.value;
  final resVal = (diffVal * point).toInt() + first.value;
  return Color(resVal);
//  */
//  /*
  final firstARGB = ARGBColor.fromColor(first);
  final lastARGB = ARGBColor.fromColor(last);

  final aDiff = lastARGB.a - firstARGB.a;
  final rDiff = lastARGB.r - firstARGB.r;
  final gDiff = lastARGB.g - firstARGB.g;
  final bDiff = lastARGB.b - firstARGB.b;

  final aRes = (aDiff * point).toInt() + firstARGB.a;
  final rRes = (rDiff * point).toInt() + firstARGB.r;
  final gRes = (gDiff * point).toInt() + firstARGB.g;
  final bRes = (bDiff * point).toInt() + firstARGB.b;

  return Color.fromARGB(aRes, rRes, gRes, bRes);
//   */
}


double getMinProvidedLen({
  required BuildContext context,
  required BoxConstraints constr,
}) {
  MediaQueryData? query;
  getQuery() => query ??= MediaQuery.of(context);

  final width = constr.maxWidth != double.infinity
      ? constr.maxWidth : getQuery().size.width;

  final height = constr.maxHeight != double.infinity
      ? constr.maxHeight : getQuery().size.height;

  return min(width, height);
}

/// Decides whether the screen size of [context] is [ScreenSize.mobile]
/// or [ScreenSize.desktop]. This method decides by comparing width and height
/// of screen. If width of this screen is smaller than the screen height
/// defined by [mobileAspectRatio], then the size is [ScreenSize.mobile].
///
/// Note that [mobileAspectRatio] should have value not greater than
/// 1.0. If [mobileAspectRatio]'s value is greater than 1.0, then
/// this method will assign the default aspect ratio.
///
ScreenSize getScreenCategory(BuildContext context, {
  double mobileAspectRatio = Const.DIMEN_DEF_MOBILE_ASPECT_RATIO,
}) {
  if(mobileAspectRatio > 1) {
    mobileAspectRatio = Const.DIMEN_DEF_MOBILE_ASPECT_RATIO;
  }
  final size = MediaQuery.of(context).size;
  final maxMobileWidth = size.height * mobileAspectRatio;

  if(size.width <= maxMobileWidth) return ScreenSize.mobile;
  return ScreenSize.desktop;
}