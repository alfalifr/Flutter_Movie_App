
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:dicoding_movie_app/res/dimes.dart';
import 'package:dicoding_movie_app/ui/widget/dot_indicator.dart';
import 'package:dicoding_movie_app/ui/widget/movie_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:viewmodel/ui/base/expirable.dart';
import 'package:viewmodel/ui/base/live_data.dart';
import 'package:viewmodel/util/_consoles.dart';

class CarouselTrending extends StatefulWidget {
  final List<Movie> dataList;

  CarouselTrending({
    required this.dataList
  });

  @override
  _CarouselTrendingState createState() => _CarouselTrendingState(
    dataList: dataList,
  );
}

class _CarouselTrendingState
    extends State<CarouselTrending>
    implements Expirable
{
  final List<Movie> dataList;
  final controller = CarouselController();
  final controllerLiveData = MutableLiveData(0);
  bool _isPageChanging = false;
  int _currentPage = 0;
  bool _isIndicatorTapped = false;

  _CarouselTrendingState({
    required this.dataList
  });

  @override
  void initState() {
    controllerLiveData.observe(this, (page) async {
      //prind("_CarouselTrendingState page= $page");
      if(page != null && !_isPageChanging) {
        _isPageChanging = true;
        if(_currentPage < dataList.length-1) {
          await controller.animateToPage(page);
        } else if(_isIndicatorTapped) {
          await controller.nextPage();
        }
        _currentPage = page;
        _isIndicatorTapped = false;
        _isPageChanging = false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final core = Stack(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            autoPlay: true,
            //autoPlayInterval: Duration(milliseconds: 500),
            onPageChanged: (page, reason) {
              //prind("Carousel onPageChanged() page= $page, reason= $reason");
              if(!_isPageChanging) {
                controllerLiveData.value = page;
              }
            },
          ),
          items: dataList.map((e) =>
              Container(
                //margin: EdgeInsets.symmetric(horizontal: 100),
                child: ItemTrendingMobile.fromData(e),
              )
          ).toList(growable: false),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(15),
            child: DotIndicator(
              count: dataList.length,
              indexController: controllerLiveData,
              onPreTap: () => _isIndicatorTapped = true,
            ),
          ),
        ),
      ],
    );
///*
    return AspectRatio(
      aspectRatio: stdLandscapeMoviePosterRatio,
      child: core,
    );
// */
    //return core;
  }

  @override
  void dispose() {
    controllerLiveData.dispose();
    _isActive = false;
    super.dispose();
  }

  bool _isActive = true;
  @override
  bool get isActive => _isActive;
}