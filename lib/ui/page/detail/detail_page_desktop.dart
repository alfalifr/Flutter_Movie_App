part of 'detail_page.dart';

class _DesktopDetailPage extends StatefulWidget {
  final DetailVm vm;
  _DesktopDetailPage({
    required this.vm,
  });
  @override
  __DesktopDetailPageState createState() => __DesktopDetailPageState(vm: vm);
}

class __DesktopDetailPageState
    extends State<_DesktopDetailPage>
    implements Expirable
{
  final DetailVm vm;
  late final MutableLiveData<bool> isOverviewInHeader;

  __DesktopDetailPageState({
    required this.vm,
  });

  bool _isActive = true;
  @override
  bool get isActive => _isActive;

  ///*
  @override
  void initState() {
    isOverviewInHeader = MutableLiveData(true)..observe(this, (data) {
      prind("isOverviewInHeader.observe data= $data this= $this");
    });
    super.initState();
  }
//   */

  @override
  Widget build(BuildContext context) {
    final mainPoster = Container(
      constraints: BoxConstraints(
        maxHeight: 400,
      ),
      child: _DetailMainPoster(vm),
    );

    final mainBg = AspectRatio(
      aspectRatio: stdLandscapeMoviePosterRatio,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: _vmObserver(
              vm: vm,
              builder: (ctx, data) => data != null
                  ? SiImages.resolve(data.posters.first)
                  : defaultImg(),
            ),
          ),
          Expanded(
            child: Container(
              color: black_trans_4,
            ),
          ),
        ],
      ),
    );

    final title = LiveDataObserver<Movie>(
      liveData: vm.currentMovie,
      builder: (ctx, data) => data != null ? ThemedText.size2Bold(Text(
        data.name,
      )) : defaultLoading(),
    );

    final release = LiveDataObserver<Movie>(
      liveData: vm.currentMovie,
      builder: (ctx, data) => data != null ? ThemedText.size0Bold(Text(
        syncFormatTime(data.date),
      )) : defaultLoading(),
    );

    final score = LiveDataObserver<Movie>(
      liveData: vm.currentMovie,
      builder: (ctx, data) => data != null ? Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ItemMovieScore(
            width: 70,
            height: 70,
            score: data.voteAverage,
          ),
          SizedBox(width: 10,),
          ThemedText.size1Bold(Text(
            "User\nScore",
          )),
        ],
      ) : defaultLoading(),
    );

    final genres = _vmObserver(
      vm: vm,
      builder: (ctx, data) => data != null
          ? _Genres(data) : defaultEmptyWidget(),
    );

    final duration = _vmObserver(
      vm: vm,
      builder: (ctx, data) => data?.duration != null
          ? _DetailDuration(data!) : defaultEmptyWidget(),
    );

    final tagline = _vmObserver(
      vm: vm,
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

    //var isOverviewInHeader = true;
    final headerOverview = LayoutBuilder(
      builder: (ctx, constr) {
        isOverviewInHeader.value = constr.maxHeight >= 100;
        prind("headerOverview constr= $constr constr.maxHeight < 100 => ${constr.maxHeight < 100} isOverviewInHeader= $isOverviewInHeader isOverviewInHeader.isChanging => ${isOverviewInHeader.isChanging}");
        if(constr.maxHeight < 100) {
          //isOverviewInHeader.value = false;
          return defaultEmptyWidget();
        }
        //isOverviewInHeader.value = true;
        return LiveDataObserver<MovieDetail>(
          liveData: vm.detail,
          builder: (ctx, data) => data != null ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ThemedText.size1Bold(Text(
                "Overview",
              )),
              SizedBox(height: 10,),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(data.overview),
                ),
              ),
            ],
          ) : defaultEmptyWidget(),
        );
      },
    );

    final mainHeader = Stack(
      children: [
        //Expanded(child: mainBg,),
        mainBg,
        Padding(
          padding: EdgeInsets.all(10).copyWith(left: 20,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mainPoster,
              SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title,
                    SizedBox(height: 7,),
                    Row(
                      children: [
                        release,
                        SizedBox(width: 15,),
                        duration,
                      ],
                    ),
                    SizedBox(height: 7,),
                    genres,
                    SizedBox(height: 12,),
                    score,
                    SizedBox(height: 18,),
                    tagline,
                    SizedBox(height: 10,),
                    Expanded(
                      child: headerOverview,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
/*
        Align(
          alignment: Alignment.bottomLeft,
          child: tagline,
        ),
 */
      ],
    );

    /*
    =====================
    Content Section
    =====================
     */

    final contentOverview = MultiLiveDataObserver<dynamic>(
      liveDataList: [isOverviewInHeader, vm.detail],
      builder: (ctx, data) {
        prind("contentOverview data= $data isOverviewInHeader = $isOverviewInHeader this.isOverviewInHeader= ${this.isOverviewInHeader} this= $this isActive= $isActive isOverviewInHeader.isChanging= ${isOverviewInHeader.isChanging}");
        return data[0] == false && data[1] != null ? Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ThemedText.size1Bold(Text(
                "Overview",
              )),
              SizedBox(height: 10,),
              Text((data[1] as MovieDetail).overview)
            ],
          ),
        ) : defaultEmptyWidget();
      },
    );

    final casts = LiveDataObserver<MovieDetail>(
      liveData: vm.detail,
      builder: (ctx, data) => data != null ? Container(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.casts.length,
          itemBuilder: (ctx, i) => Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: _DesktopCast(data.casts[i]),
          ),
        ),
      ) : defaultEmptyWidget(),
    );

    final photos = LiveDataObserver<MovieDetail>(
      liveData: vm.detail,
      builder: (ctx, data) => data != null ? Container(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.posters.length,
          itemBuilder: (ctx, i) => Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: _DetailPhoto(data.posters[i]),
          ),
        ),
      ) : defaultEmptyWidget(),
    );

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        contentOverview,
        ThemedText.size1Bold(Text("Cast",)),
        SizedBox(height: 10,),
        casts,
        SizedBox(height: 15,),
        ThemedText.size1Bold(Text("Photos",)),
        SizedBox(height: 10,),
        photos
        //casts,
      ],
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: stdLandscapeMoviePosterRatio,
            child: mainHeader,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: content,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    isOverviewInHeader.dispose();
    super.dispose();
  }
}



class _DesktopCast extends StatelessWidget {
  final Cast cast;
  _DesktopCast(this.cast);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraint) {
        final ratio = 3/5;
        final imgLen = constraint.maxHeight * ratio -30;
        prind("_MobileCast imgLen= $imgLen constraint= $constraint");

        return AspectRatio(
          aspectRatio: ratio,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 9,
                  child: Container(
                    width: double.infinity,
                    child: SiImages.resolve(cast.profile),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ThemedText.size0Bold(Text(
                            cast.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )),
                          SizedBox(height: 2,),
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
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}