import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:flutter/material.dart';
import 'package:viewmodel/util/_consoles.dart';

main() {
  prin(0xFFB30000);
  prin(0xFF);

  afa();
}

afa() {

  final col = Color.fromARGB(255, 200, 0, 0);
  //Color(0xFFB30000);
  //Color(0xFFB30000);

  final val = col.value;
  final a = (val >> 24) & 0xFF;
  final r = (val >> 16) & 0xFF;
  final g = (val >> 8) & 0xFF;
  final b = (val >> 0) & 0xFF;


  prin("a= $a, r= $r, g= $g, b= $b,");
}