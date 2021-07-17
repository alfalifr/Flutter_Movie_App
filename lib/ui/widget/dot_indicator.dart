import 'package:dicoding_movie_app/res/colors.dart';
import 'package:dicoding_movie_app/res/theme.dart';
import 'package:dicoding_movie_app/ui/widget/default_widget.dart';
import 'package:flutter/material.dart';
import 'package:viewmodel/ui/base/live_data.dart';
import 'package:viewmodel/ui/base/live_data_observer.dart';

class DotIndicator extends StatelessWidget {
  final int count;
  final MutableLiveData<int> indexController;
  final void Function()? onPreTap;

  DotIndicator({
    required this.count,
    required this.indexController,
    this.onPreTap,
  });

  @override
  Widget build(BuildContext context) {
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
  }
}
