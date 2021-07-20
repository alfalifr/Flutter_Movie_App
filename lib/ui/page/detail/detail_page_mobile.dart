part of 'detail_page.dart';


class _MobileDetailPage extends StatelessWidget {
  final DetailVm vm;

  _MobileDetailPage({
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    final mainBg = ClipPath(
        clipper: _MobileBgClipper(),
        child: AspectRatio(
          aspectRatio: stdLandscapeMoviePosterRatio,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: stdLandscapeMoviePosterRatio,
                child: _vmObserver(
                  vm: vm,
                  builder: (ctx, detail) => detail?.backdrops.isNotEmpty == true
                      ? SiImages.resolve(detail!.backdrops.first)
                      : defaultImg(),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        white_trans_3,
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

    final mainPoster = Container(
      height: 150,
      child: _DetailMainPoster(vm),
    );

    final title = LiveDataObserver<Movie>(
      liveData: vm.currentMovie,
      builder: (ctx, data) => data != null ? ThemedText.size2Bold(Text(
        data.name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      )) : defaultLoading(),
    );

    final tagline = _vmObserver(
      vm: vm,
      preAsyncBuilder: (ctx, str) => defaultEmptyWidget(),
      builder: (ctx, data) => data != null ?
      data.tagline?.isNotEmpty == true ? Container(
        margin: EdgeInsets.only(bottom: 15),
        child: ThemedText.size1BoldItalic(Text(
          data.tagline!,
          style: TextStyle(
            color: black_trans_2,
          ),
        )),
      ) : defaultEmptyWidget() : defaultLoading(),
    );

    final score = _vmObserver(
      vm: vm,
      preAsyncBuilder: (ctx, str) => defaultEmptyWidget(),
      builder: (ctx, data) => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: data != null ? getColorPointFromLinearGradient(
              first: red,
              last: green_light,
              point: data.movie.voteAverage / Const.DEF_SCORE_SCALE,
            ) : grey_3,
          ),
          SizedBox(width: 5,),
          ThemedText.size0Bold(Text(
            data != null
                ? getStdScoreStr(data.movie.voteAverage, decimals: 1)
                : "...",
          )),
        ],
      ),
    );

    final duration = _vmObserver(
      vm: vm,
      preAsyncBuilder: (ctx, str) => defaultEmptyWidget(),
      builder: (ctx, data) => data?.duration != null
          ? _DetailDuration(data!) : defaultEmptyWidget(),
    );

    final genres = LiveDataObserver<MovieDetail>(
      liveData: vm.detail,
      builder: (ctx, data) => data != null ? _Genres(data) : defaultEmptyWidget(),
    );

    final mainHeader = LayoutBuilder(
      builder: (ctx, constr) {
        final bgHeight = constr.maxWidth / stdLandscapeMoviePosterRatio;
        final mainHeaderHeight = bgHeight * 12/10;
        prind("MobileDetal mainHeader constr= $constr; bgHeight= $bgHeight; mainHeaderHeight= $mainHeaderHeight");
        return Container(
          width: constr.maxWidth,
          height: mainHeaderHeight,
          child: Stack(
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
          ),
        );
      },
    );


    final content = _vmObserver(
      vm: vm,
      builder: (ctx, data) {
        if(data == null) {
          return Align(
            alignment: Alignment.center,
            child: defaultLoading(),
          );
        }
        final release = data.movie.date != null ? _MobileDetailText(
          title: "Release date",
          desc: syncFormatTime(data.movie.date!),
        ) : defaultEmptyWidget();
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
        final contentHorizontalPadding = 15.0;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: contentHorizontalPadding)
              .copyWith(bottom: 10,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              tagline,
              release,
              directors,
              producers,
              homepage,
              SizedBox(height: 15,),
              ThemedText.size0Bold(Text(
                "Overview",
              )),
              SizedBox(height: 10,),
              data.overview.isNotEmpty ? ThemedText.sizeM1(Text(
                data.overview,
              )) : defaultEmptyWidget(),
              SizedBox(height: 15,),
              ThemedText.size0Bold(Text(
                "Cast",
              )),
              SizedBox(height: 10,),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.casts.length,
                  itemBuilder: (ctx, i) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: _MobileCast(data.casts[i]),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              ThemedText.size0Bold(Text(
                "Photos",
              )),
              SizedBox(height: 10,),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.posters.length,
                  itemBuilder: (ctx, i) => Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: _DetailPhoto(data.posters[i]),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mainHeader,
            content,
          ],
        ),
      ),
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
    return Wrap(
      direction: Axis.horizontal,
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


class _MobileCast extends StatelessWidget {
  final Cast cast;
  _MobileCast(this.cast);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraint) {
        final ratio = 3.5/5;
        final imgLen = constraint.maxHeight * ratio -30;
        prind("_MobileCast imgLen= $imgLen constraint= $constraint cast= $cast");

        return AspectRatio(
          aspectRatio: ratio,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                  child: Container(
                    height: imgLen,
                    width: imgLen,
                    child: SiImages.resolve(cast.profile ?? dummyImg),
                  ),
                ),
                SizedBox(height: 10,),
                ThemedText.sizeM1(Text(
                  cast.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
                SizedBox(height: 5,),
                ThemedText.sizeM1(Text(
                  cast.character,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: grey_5,
                  ),
                )),
              ],
            ),
          ),
        );
      },
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
