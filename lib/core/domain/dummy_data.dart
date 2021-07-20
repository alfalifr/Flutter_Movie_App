import 'package:dicoding_movie_app/core/domain/model/img.dart';
import 'package:dicoding_movie_app/core/domain/model/movie_detail.dart';
import 'package:dicoding_movie_app/util/const.dart';
import 'package:faker/faker.dart' hide Company;

import 'model/movie.dart';

final faker = Faker();

final dummyImg = ImgData(link: "", isLocal: true);

final dummyDeptList = <String>[
  "Production",
  "Directing",
  "Writing",
  "Art",
];

final dummyCompanyList = List<Company>.generate(10, (i) => Company(
  id: i,
  logo: dummyImg,
  name: faker.company.name(),
));
final dummyCastList = List<Cast>.generate(30, (i) => Cast(
  id: i,
  profile: dummyImg,
  name: faker.person.name(),
  character: faker.person.name(),
));
final dummyCrewList = List<Crew>.generate(30, (i) => Crew(
  id: i,
  profile: dummyImg,
  name: faker.person.name(),
  department: dummyDeptList[
    faker.randomGenerator.integer(dummyDeptList.length)
  ],
));


final dummyMovie = Movie(
  id: 1,
  voteAverage: 60.73,
  voteCount: 100,
  name: "Good Movie afija aufhaiu afuh aiuhf aiufh aiufha aiufha aiuhfa afaih",
  poster: ImgData(
    link: "",
    isLocal: true,
  ),
  date: DateTime.now(),
  type: Const.KEY_TV,
);


final dummyMovieList = List<Movie>.generate(30, (i) => Movie(
  id: i,
  voteAverage: faker.randomGenerator.decimal() *100,
  voteCount: faker.randomGenerator.integer(2000),
  name: "$i. ${faker.lorem.sentence()}",
  poster: ImgData(
    link: "",
    isLocal: true,
  ),
  date: faker.date.dateTime(),
  type: Const.KEY_TV,
));
final dummyTrendingList = dummyMovieList.sublist(
    faker.randomGenerator.integer(dummyMovieList.length),
);


final dummyMovieDetailList = dummyMovieList.map<MovieDetail>((e) => MovieDetail(
  movie: e,
  tagline: faker.lorem.sentence(),
  overview: faker.lorem.sentences(faker.randomGenerator.integer(100, min: 3)).join(" "),
  homepage: faker.internet.httpsUrl(),
  duration: faker.randomGenerator.integer(160),
  genres: faker.lorem.words(faker.randomGenerator.integer(10, min: 1)),
  productionCompanies: dummyCompanyList.sublist(
      faker.randomGenerator.integer(dummyCompanyList.length, min: 0),
  ),
  casts: dummyCastList.sublist(
    faker.randomGenerator.integer(dummyCastList.length, min: 0),
  ),
  crews: dummyCrewList.sublist(
    faker.randomGenerator.integer(dummyCrewList.length, min: 0),
  ),
  backdrops: List.generate(faker.randomGenerator.integer(7, min: 1), (i) => dummyImg),
  logos: List.generate(faker.randomGenerator.integer(7, min: 1), (i) => dummyImg),
  posters: List.generate(faker.randomGenerator.integer(7, min: 1), (i) => dummyImg),
));