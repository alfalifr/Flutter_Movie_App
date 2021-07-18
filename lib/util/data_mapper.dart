import 'package:dicoding_movie_app/core/domain/model/movie_detail.dart';
import 'package:flutter/material.dart';
import 'package:viewmodel/util/_consoles.dart';
/*
Color getScoreColor(num score) {
  if(score <= 10) return Color(0xFFC60707);
}

 */

String getDurationString(num minutes) {
  prind("minutes = $minutes");
  final hours = minutes ~/ 60;
  final remMinutes = minutes % 60;


  return "${hours > 0 ? "${hours}h " : ""}"
      "${remMinutes > 0 ? "${remMinutes}m" : ""}";
}

List<Crew> getDirectors(List<Crew> crews) => crews.where(
        (e) => e.department.toLowerCase() == "directing"
).toList(growable: false);

List<Crew> getProducers(List<Crew> crews) => crews.where(
        (e) => e.department.toLowerCase() == "production"
).toList(growable: false);

List<Crew> getWriters(List<Crew> crews) => crews.where(
        (e) => e.department.toLowerCase() == "writing"
).toList(growable: false);

List<Crew> getArtists(List<Crew> crews) => crews.where(
        (e) => e.department.toLowerCase() == "art"
).toList(growable: false);


String getDirectorStr(List<Crew> crews) => getProducers(crews).map((e) => e.name).join(", ");
String getProducerStr(List<Crew> crews) => getProducers(crews).map((e) => e.name).join(", ");
String getWriterStr(List<Crew> crews) => getWriters(crews).map((e) => e.name).join(", ");
String getArtistStr(List<Crew> crews) => getArtists(crews).map((e) => e.name).join(", ");