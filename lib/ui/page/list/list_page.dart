import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:dicoding_movie_app/di/vm_di.dart';
import 'package:dicoding_movie_app/res/dimes.dart';
import 'package:dicoding_movie_app/ui/page/detail/detail_page.dart';
import 'package:dicoding_movie_app/ui/page/detail/detail_vm.dart';
import 'package:dicoding_movie_app/ui/page/list/list_vm.dart';
import 'package:dicoding_movie_app/ui/widget/_template_widget.dart';
import 'package:dicoding_movie_app/ui/widget/carousel_trending.dart';
import 'package:dicoding_movie_app/ui/widget/default_widget.dart';
import 'package:dicoding_movie_app/ui/widget/movie_list_type_widget.dart';
import 'package:dicoding_movie_app/ui/widget/movie_list_widget.dart';
import 'package:dicoding_movie_app/util/const.dart';
import 'package:dicoding_movie_app/util/ui_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:viewmodel/domain/model/wrapper.dart';
import 'package:viewmodel/ui/base/async_view_model_observer.dart';
import 'package:viewmodel/ui/base/async_vm.dart';
import 'package:viewmodel/ui/base/expirable.dart';
import 'package:viewmodel/ui/base/live_data.dart';
import 'package:viewmodel/ui/base/live_data_observer.dart';
import 'package:viewmodel/ui/base/view_model.dart';
import 'package:viewmodel/util/_consoles.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState
    extends State<ListPage>
    implements Expirable {
  final pageController = PageController();
  final scrollController = ScrollController();
  final carouselIndexController = MutableLiveData(0);
  final scrollOffsetContainer = Var(0.0);
  bool isChangingPage = false;
  final currentPage = MutableLiveData(0);
  final MutableLiveData<double> maxHeightController = MutableLiveData();
  final popularTypes = [Const.KEY_MOVIE, Const.KEY_TV,];
  ListVm? vm;

  @override
  void initState() {
    currentPage.observe(this, (page) {
      if(page != null && !isChangingPage) {
        isChangingPage = true;
        pageController.animateToPage(
          page,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeOut,
        );
        isChangingPage = false;
      }
    });
    pageController.addListener(() {
      if(vm?.isActive == true) {
        final page = pageController.page;
        if(page != null) {
          scrollOffsetContainer.value = scrollController.offset;
          int pageInt;
          if(!isChangingPage && page == (pageInt = page.toInt())) {
            prind("scrollController.offset = ${scrollController.offset}");
            isChangingPage = true;
            switch(pageInt) {
              case 0:
              case 1:
                vm!.getPopularList(type: popularTypes[pageInt]);
                break;
              default: throw "No such page '$pageInt'";
            }
            currentPage.value = pageInt;
            isChangingPage = false;
          }
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    vm ??= ViewModelProvider.of<ListVm>(context)
      ..getTrendingList();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      vm!.getPopularList(type: popularTypes[0]);
    });
/*
    tabController.addListener(() {
      if(vm.isActive) {
        scrollOffsetContainer.value = scrollController.offset;
        prind("scrollController.offset = ${scrollController.offset}");
        if(!tabController.indexIsChanging) {
          final page = tabController.index;
          isChangingPage.value = true;
          switch(page) {
            case 0:
            case 1:
              vm.getPopularList(type: popularTypes[page]);
              break;
            default: throw "No such page '$page'";
          }
          isChangingPage.value = false;
        }
      }
    });
 */

/*
    scrollController.addListener(() {
      prind("scrollController.addListener scrollController.offset= ${scrollController.offset}");
      //if(isChangingPage.value) {}
    });
// */
    final movieTypeHeight = 70.0;

    final screenSize = MediaQuery.of(context).size;
    final sizeCategory = getScreenCategory(context, mobileAspectRatio: 1);

    final carouselMaxHeight = sizeCategory == ScreenSize.mobile
        ? screenSize.width / stdLandscapeMoviePosterRatio
        : screenSize.height - movieTypeHeight;

    maxHeightController.value = carouselMaxHeight;
    prind("movieTypeHeight= $movieTypeHeight screenSize= $screenSize sizeCategory= $sizeCategory carouselMaxHeight= $carouselMaxHeight");

    return Column(
      children: [
        CollapsingBlur(
          onTap: () {
            final dataList = vm!.trendingList.value;
            if(dataList?.isNotEmpty == true){
              final movie = dataList![carouselIndexController.value!];
              _toDetailPage(movie);
            }
          },
          maxHeightController: maxHeightController,
          scrollController: scrollController,
          child: LiveDataObserver<List<Movie>>(
            liveData: vm!.trendingList,
            builder: (ctx, data) => data != null
                ? CarouselTrending(
                  dataList: data,
                  controllerLiveData: carouselIndexController,
                  //onItemClick: _toDetailPage,
                ) : defaultLoading(),
          ),
        ),
        Container(
          height: movieTypeHeight,
          child: _TabBarMovieType(
            padding: EdgeInsets.symmetric(vertical: 10,),
            currentPage: currentPage,
            scrollController: scrollController,
            names: popularTypes.sublist(0)..[1] = "tv shows",
          ),
        ),
        //SizedBox(height: 15,),
/*
        Flexible(
          fit: FlexFit.tight,
          child: Column(
            children: [
              TabBar(
                controller: tabController,
                tabs: popularTypes.map<Widget>((e) => Tab(
                  text: e,
                )).toList(growable: false),
              ),
              TabBarView(
                controller: tabController,
                children: [
                  SingleListPage(type: popularTypes[0], vm: vm,
                    controller: scrollController, currentOffset: scrollOffsetContainer,
                  ),
                  SingleListPage(type: popularTypes[1], vm: vm,
                    controller: scrollController, currentOffset: scrollOffsetContainer,
                  ),
                ],
              ),
            ],
          ),
        ),
 */
        Flexible(
          child: PageView(
            controller: pageController,
            children: [
              SingleListPage(type: popularTypes[0], vm: vm!,
                controller: scrollController, currentOffset: scrollOffsetContainer,
                onItemClick: _toDetailPage,
              ),
              SingleListPage(type: popularTypes[1], vm: vm!,
                controller: scrollController, currentOffset: scrollOffsetContainer,
                onItemClick: _toDetailPage,
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _toDetailPage(Movie movie) {
    Navigator.push(context, MaterialPageRoute(
      builder: (ctx) => Scaffold(
        body: ViewModelProvider(
          creators: [
            (ctx) => VmDi.detailVm,
          ],
          child: DetailPage(movie: movie),
        ),
      )
    ));
  }

  @override
  void dispose() {
    _isActive = false;
    pageController.dispose();
    scrollController.dispose();
    carouselIndexController.dispose();
    currentPage.dispose();
    maxHeightController.dispose();
    super.dispose();
  }

  bool _isActive = true;
  @override
  bool get isActive => _isActive;
}



class SingleListPage extends StatelessWidget {
  final String type;
  final ListVm vm;
  final ScrollController? controller;
  final Var<double>? currentOffset;
  final void Function(Movie)? onItemClick;

  SingleListPage({
    required this.type,
    required this.vm,
    this.controller,
    this.currentOffset,
    this.onItemClick,
  });

  @override
  Widget build(BuildContext context) {
    return AsyncVmObserver<ListVm, List<Movie>>(
      vm: vm,
      liveDataGetter: (vm) => vm.popularList,
      builder: (ctx, data) {
        WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
          if(currentOffset != null) {
            controller?.jumpTo(currentOffset!.value);
          }
        });
        return data != null && vm.currentType == type ? LayoutBuilder(
          builder: (ctx, constr) {
            final gridCrossAxisCount = constr.maxWidth ~/ 206 +1;
            return GridView.builder(
              controller: controller,
              //physics: NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, i) => InkWell(
                onTap: onItemClick != null
                    ? () => onItemClick!.call(data[i])
                    : null,
                child: Material(
                  color: Colors.transparent,
                  child: ItemPopular.fromData(data[i]),
                ),
              ),
              itemCount: data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: gridCrossAxisCount,
                mainAxisSpacing: 5,
                crossAxisSpacing: 10,
                mainAxisExtent: 420,
                //childAspectRatio: 1/10,
              ),
            );
          },
        ) : defaultLoading();
      },
    );
  }
}


class _TabBarMovieType extends StatelessWidget {
  final ScrollController scrollController;
  final List<String> names;
  final MutableLiveData<int> currentPage;
  final EdgeInsets? padding;

  _TabBarMovieType({
    required this.scrollController,
    required this.names,
    required this.currentPage,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    prind("_TabBarMovieType build");
    return Listener(
      onPointerSignal: (signal) async {
        //prind("signal = $signal");
        if(signal is PointerScrollEvent) {
          final scrollY = signal.scrollDelta.dy;
          final newHeight = scrollController.offset +scrollY;

          if(newHeight >= 0) {
            scrollController.jumpTo(newHeight);
          }// else {scrollController.jumpTo(newHeight);}
        }
      },
      child: GestureDetector(
        onPanUpdate: (dragDetail) {
          prind("dragDetail= $dragDetail");
          final scrollY = dragDetail.delta.dy;
          final newHeight = scrollController.offset -scrollY;
          //final pageScroll = scrollController.offset;
          prind("scrollY= $scrollY newHeight= $newHeight ");
          if(newHeight >= 0) {
            scrollController.jumpTo(newHeight);
          }// else {scrollController.jumpTo(newHeight);}
        },
        child: Container(
          padding: padding,
          color: Colors.transparent,
          child: TabGroupMovieType(
            selectedIndex: currentPage,
            names: names,
          ),
        ),
      ),
    );
  }
}


class _SingleListPageSliver extends StatelessWidget {
  final String type;
  final ListVm vm;
  final ScrollController? controller;
  final Var<double>? currentOffset;

  _SingleListPageSliver({
    required this.type,
    required this.vm,
    this.controller,
    this.currentOffset,
  });

  @override
  Widget build(BuildContext context) {
    return AsyncVmObserver<ListVm, List<Movie>>(
      vm: vm,
      liveDataGetter: (vm) => vm.popularList,
      builder: (ctx, data) {
        WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
          if(currentOffset != null) {
            controller?.jumpTo(currentOffset!.value);
          }
        });
        return data != null && vm.currentType == type ? SliverGrid(
          delegate: SliverChildBuilderDelegate(
                (ctx, i) => ItemPopular.fromData(data[i]),
            childCount: data.length,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 420,
          ),
        ) : SliverToBoxAdapter(
          child: defaultLoading(),
        );
      },
    );
  }
}