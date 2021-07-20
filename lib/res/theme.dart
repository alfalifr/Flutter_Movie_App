import 'package:dicoding_movie_app/res/colors.dart';
import 'package:dicoding_movie_app/res/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final appTheme = ThemeData(
  fontFamily: fontNunito,
  cardTheme: CardTheme(clipBehavior: Clip.antiAlias),
  primaryColor: green_light,
  primaryColorLight: green_lighter,
  primaryColorDark: green_dark,
  accentColor: yellow,
  cardColor: grey_1,
  errorColor: red,
  primarySwatch: primarySwatch,
);