
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
  final void Function(Movie)? onItemClick;
  final MutableLiveData<int> controllerLiveData;
  final bool isLiveDataOwner;

  CarouselTrending({
    required this.dataList,
    this.onItemClick,
    MutableLiveData<int>? controllerLiveData,
    bool? isLiveDataOwner,
  }):
    this.controllerLiveData = controllerLiveData ?? MutableLiveData(0),
    this.isLiveDataOwner = isLiveDataOwner ?? controllerLiveData == null
  ;

  @override
  _CarouselTrendingState createState() => _CarouselTrendingState(
    dataList: dataList,
    onItemClick: onItemClick,
    controllerLiveData: controllerLiveData,
    isLiveDataOwner: isLiveDataOwner,
  );
}

class _CarouselTrendingState
    extends State<CarouselTrending>
    implements Expirable
{
  final List<Movie> dataList;
  final controller = CarouselController();
  final MutableLiveData<int> controllerLiveData;
  final bool isLiveDataOwner;
  final void Function(Movie)? onItemClick;
  bool _isPageChanging = false;
  int _currentPage = 0;
  bool _isIndicatorTapped = false;

  _CarouselTrendingState({
    required this.dataList,
    required this.onItemClick,
    required this.controllerLiveData,
    required this.isLiveDataOwner,
  });

  @override
  void initState() {
    controllerLiveData.observe(this, (page) async {
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
            height: double.infinity,
            autoPlay: true,
            onPageChanged: (page, reason) {
              if(!_isPageChanging) {
                controllerLiveData.value = page;
              }
            },
          ),
          items: dataList.map((e) =>
              Container(
                child: ItemTrendingMobile.fromData(
                  data: e,
                  captionBottomMargin: 20,
                  onClick: onItemClick,
                ),
              ),
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
    return core;
  }

  @override
  void dispose() {
    _isActive = false;
    if(isLiveDataOwner) {
      controllerLiveData.dispose();
    }
    super.dispose();
  }

  bool _isActive = true;
  @override
  bool get isActive => _isActive;
}