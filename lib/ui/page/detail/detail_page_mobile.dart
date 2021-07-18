part of 'detail_page.dart';


class _MobilePage extends StatelessWidget {
  final DetailVm vm;

  _MobilePage({
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    return AsyncVmObserver<DetailVm, MovieDetail>(
      liveDataGetter: (vm) => vm.detail,
      builder: (ctx, data) {
        if(data == null) {
          return defaultLoading();
        }

        final mainBg = ClipPath(
            clipper: _MobileBgClipper(),
            child: AspectRatio(
              aspectRatio: stdLandscapeMoviePosterRatio,
              child: Stack(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: stdLandscapeMoviePosterRatio,
                      child: SiImages.resolve(data.backdrops.first),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            white_trans_4,
                            Colors.transparent,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [0, 0.7,],
                        )
                    ),
                  ),
                ],
              ),
            )
        );

        final mainPoster = Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: Container(
            height: 150,
            child: AspectRatio(
              aspectRatio: stdPortraitMoviePosterRatio,
              child: SiImages.resolve(data.posters.first),
            ),
          ),
        );

        final title = ThemedText.size2Bold(Text(
          data.movie.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ));

        final score = Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star,
              color: getColorPointFromLinearGradient(
                first: red,
                last: green_light,
                point: data.movie.voteAverage / 100,
              ),
            ),
            SizedBox(width: 5,),
            ThemedText.size0Bold(Text(
              "${data.movie.voteAverage.toStringAsFixed(1)} %",
            )),
          ],
        );

        final duration = data.duration != null ? Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.access_time,
              color: green_lighter,
            ),
            SizedBox(width: 5,),
            ThemedText.size0Bold(Text(
              getDurationString(data.duration!),
            )),
          ],
        ) : defaultEmptyWidget();

        final genres = _Genres(data);
        final release = _MobileDetailText(
          title: "Release date",
          desc: syncFormatTime(data.movie.date),
        );
        final directors = _MobileDetailText(
          title: "Directors",
          desc: getDirectorStr(data.crews),
        );
        final producers = _MobileDetailText(
          title: "Producers",
          desc: getProducerStr(data.crews),
        );
        final homepage = _MobileDetailText(
          title: "Homepage",
          desc: data.homepage,
        );

        final mainHeader = Stack(
          children: [
            mainBg,
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    mainPoster,
                    SizedBox(width: 15,),
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          title,
                          SizedBox(height: 10,),
                          Flexible(
                            child: Row(
                              children: [
                                score,
                                SizedBox(width: 10,),
                                duration,
                              ],
                            ),
                          ),
                          genres,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );

        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 320,
                child: mainHeader,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    release,
                    directors,
                    producers,
                    homepage,
                    SizedBox(height: 15,),
                    ThemedText.size0Bold(Text(
                      "Overview",
                    )),
                    SizedBox(height: 10,),
                    ThemedText.sizeM1(Text(
                      data.overview,
                    )),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _MobileDetailText extends StatelessWidget {
  final String title;
  final String desc;

  _MobileDetailText({
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ThemedText.sizeM1Bold(Text(
          "$title:",
        )),
        SizedBox(width: 8,),
        ThemedText.sizeM1(Text(
          desc,
        )),
      ],
    );
  }
}


class _MobileBgClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height *8/10);

    final xControl = size.width /2;
    final yControl = size.height *12/10;
    path.quadraticBezierTo(
      xControl,
      yControl,
      size.width,
      size.height *8/10,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
