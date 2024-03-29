import 'package:dicoding_movie_app/core/domain/model/movie_detail.dart';
import 'package:viewmodel/util/_consoles.dart';

import 'collection_util.dart';


String getDurationString(num minutes) {
  prind("minutes = $minutes");
  final hours = minutes ~/ 60;
  final remMinutes = minutes % 60;

  return "${hours > 0 ? "${hours}h " : ""}"
      "${remMinutes > 0 ? "${remMinutes}m" : ""}";
}

Iterable<Crew> getDirectors(List<Crew> crews) => crews.where(
        (e) => e.department.toLowerCase() == "directing"
); //.toList(growable: false);

Iterable<Crew> getProducers(List<Crew> crews) => crews.where(
        (e) => e.department.toLowerCase() == "production"
); //.toList(growable: false);

Iterable<Crew> getWriters(List<Crew> crews) => crews.where(
        (e) => e.department.toLowerCase() == "writing"
); //.toList(growable: false);

Iterable<Crew> getArtists(List<Crew> crews) => crews.where(
        (e) => e.department.toLowerCase() == "art"
); //.toList(growable: false);


String getDirectorStr(List<Crew> crews) {
  final itr = getDirectors(crews).map((e) => e.name).toList(growable: false);
  final list = collectFirst(
    iterable: itr,
    count: 3,
  );
  return list.join(", ");
}
String getProducerStr(List<Crew> crews) {
  final itr = getProducers(crews).map((e) => e.name).toList(growable: false);
  final list = collectFirst(
    iterable: itr,
    count: 3,
  );
  return list.join(", ");
}
String getWriterStr(List<Crew> crews) {
  final itr = getWriters(crews).map((e) => e.name).toList(growable: false);
  final list = collectFirst(
    iterable: itr,
    count: 3,
  );
  return list.join(", ");
}
String getArtistStr(List<Crew> crews) {
  final itr = getArtists(crews).map((e) => e.name).toList(growable: false);
  final list = collectFirst(
    iterable: itr,
    count: 3,
  );
  return list.join(", ");
}

Map<String, dynamic> getTunedMovieResponseMap(Map<String, dynamic> rawMap) {
  // This is because Dart's json_serializable can't have multiple date, not like Java GSON.
  if(!rawMap.containsKey("original_title")) {
    final name = rawMap["original_name"];
    if(name == null) {
      throw "The movie doesn't have a name";
    }
    rawMap["original_title"] = name;
  }
  if(!rawMap.containsKey("release_date")) {
    final date = rawMap["first_air_date"];
    if(date == null) {
      prinw("The movie '${rawMap["original_title"] ?? "<null>"}' doesn't have a date");
    } else {
      rawMap["release_date"] = date;
    }
  }
  final name = rawMap["original_title"];
  final poster = rawMap["poster_path"];
  prind("MovieTrendingDataResponse.fromJson '$name' poster= $poster poster == null => ${poster == null} rawMap.containsKey('poster_path') = ${rawMap.containsKey('poster_path')}");

  return rawMap;
}

String getStdScoreStr(num score, { int decimals = 1, }) => "${(score * 10).toStringAsFixed(decimals)} %";