import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:dicoding_movie_app/ui/page/list/list_vm.dart';
import 'package:dicoding_movie_app/ui/widget/carousel_trending.dart';
import 'package:dicoding_movie_app/ui/widget/default_widget.dart';
import 'package:dicoding_movie_app/ui/widget/movie_list_widget.dart';
import 'package:dicoding_movie_app/util/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:viewmodel/ui/base/async_view_model_observer.dart';
import 'package:viewmodel/ui/base/async_vm.dart';
import 'package:viewmodel/ui/base/live_data_observer.dart';
import 'package:viewmodel/ui/base/view_model.dart';


class ListPage extends StatelessWidget {
  final pageController = PageController();
  final popularTypes = [Const.KEY_MOVIE, Const.KEY_TV,];

  @override
  Widget build(BuildContext context) {
    final vm = ViewModelProvider.of<ListVm>(context)
      ..getTrendingList();

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      vm.getPopularList(type: popularTypes[0]);
    });

    pageController.addListener(() {
      if(vm.isActive) {
        final page = pageController.page;
        if(page != null) {
          int pageInt;
          if(page == (pageInt = page.toInt())) {
            switch(pageInt) {
              case 0:
              case 1:
                vm.getPopularList(type: popularTypes[pageInt]);
                break;
              default: throw "No such page '$pageInt'";
            }
          }
        }
      }
    });

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate.fixed([
            LiveDataObserver<List<Movie>>(
              liveData: vm.trendingList,
              builder: (ctx, data) => data != null
                  ? CarouselTrending(dataList: data)
                  : defaultLoading(),
            ),
            SizedBox(height: 15,),
/*
            PageView(
              controller: pageController,
              children: [
                SingleListPage(type: popularTypes[0], vm: vm,),
                SingleListPage(type: popularTypes[1], vm: vm,),
              ],
            ),
 */
          ]),
        ),
        _SingleListPageSliver(type: popularTypes[0], vm: vm,),
        _SingleListPageSliver(type: popularTypes[1], vm: vm,),
      ],
    );
  }
}


class SingleListPage extends StatelessWidget {
  final String type;
  final ListVm vm;

  SingleListPage({
    required this.type,
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    return AsyncVmObserver<ListVm, List<Movie>>(
      vm: vm,
      liveDataGetter: (vm) => vm.popularList,
      builder: (ctx, data) => data != null && vm.currentType == type ? GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (ctx, i) => ItemPopular.fromData(data[i]),
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 420,
          //childAspectRatio: 1/10
        ),
      ) : defaultLoading(),
    );
  }
}


class _SingleListPageSliver extends StatelessWidget {
  final String type;
  final ListVm vm;

  _SingleListPageSliver({
    required this.type,
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    return AsyncVmObserver<ListVm, List<Movie>>(
      vm: vm,
      liveDataGetter: (vm) => vm.popularList,
      builder: (ctx, data) => data != null && vm.currentType == type ? SliverGrid(
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
      ),
    );
  }
}