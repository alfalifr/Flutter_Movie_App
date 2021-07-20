import 'package:dicoding_movie_app/res/colors.dart';
import 'package:dicoding_movie_app/res/theme.dart';
import 'package:dicoding_movie_app/ui/widget/default_widget.dart';
import 'package:flutter/material.dart';
import 'package:viewmodel/ui/base/expirable.dart';
import 'package:viewmodel/ui/base/live_data.dart';
import 'package:viewmodel/ui/base/live_data_observer.dart';
import 'package:viewmodel/util/_consoles.dart';

class DotIndicator extends StatefulWidget {
  final int count;
  final MutableLiveData<int> indexController;
  final void Function()? onPreTap;

  DotIndicator({
    required this.count,
    required this.indexController,
    this.onPreTap,
  });

  @override
  _DotIndicatorState createState() => _DotIndicatorState(
    count: count,
    indexController: indexController,
    onPreTap: onPreTap,
  );
}

class _DotIndicatorState
    extends State<DotIndicator>
    implements Expirable
{
  final int count;
  final MutableLiveData<int> indexController;
  final void Function()? onPreTap;
  final scrollController = ScrollController();

  final itemWidth = 25.0;
  final itemHorizontalMargin = 10.0;
  late double mid;

  _DotIndicatorState({
    required this.count,
    required this.indexController,
    required this.onPreTap,
  });

  bool _isActive = true;
  @override
  bool get isActive => _isActive;

  @override
  void initState() {
    indexController.observe(this, (i) {
      if(i != null) {
        final movingOffset = (itemWidth + itemHorizontalMargin*2) *i - mid +itemWidth/2 +itemHorizontalMargin;
        prind("DotIndicator onTap() movingOffset= $movingOffset mid= $mid i= $i");
        scrollController.animateTo(
          movingOffset,
          duration: Duration(milliseconds: 700),
          curve: Curves.easeOut,
        );
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _isActive = false;
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constr) {
        final totalItemWidth = (itemWidth + itemHorizontalMargin * 2) * count;
        final listWidth = totalItemWidth <= constr.maxWidth
            ? totalItemWidth : constr.maxWidth;
        mid = listWidth / 2;

        prind("DotIndicator itemWidth= $itemWidth itemHorizontalMargin= $itemHorizontalMargin totalItemWidth= $totalItemWidth listWidth= $listWidth mid= $mid count= $count");

        return Container(
          height: 10,
          width: listWidth,
          child: ListView.builder(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            //physics: NeverScrollableScrollPhysics(),
            itemCount: count,
            itemBuilder: (ctx, i) => LiveDataObserver<int>(
              liveData: indexController,
              builder: (ctx, i2) => i2 != null ? GestureDetector(
                onTap: () {
                  onPreTap?.call();
                  indexController.value = i;
                },
                child: Container(
                  width: itemWidth,
                  margin: EdgeInsets.symmetric(horizontal: itemHorizontalMargin),
                  decoration: BoxDecoration(
                    color: i2 == i ? appTheme.primaryColor : grey_1,
                    borderRadius: BorderRadius.circular(15),
                    //shape: BoxShape.circle,
                  ),
                ),
              ) : defaultLoading(),
            ),
          ),
        );
      },
    );
/*
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(count, (i) => LiveDataObserver<int>(
        liveData: indexController,
        builder: (ctx, i2) => i2 != null ? GestureDetector(
          onTap: () {
            onPreTap?.call();
            indexController.value = i;
          },
          child: Container(
            height: 10,
            width: 25,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: i2 == i ? appTheme.primaryColor : grey_1,
              borderRadius: BorderRadius.circular(15),
              //shape: BoxShape.circle,
            ),
          ),
        ) : defaultLoading(),
      )),
    );
 */
  }
}
