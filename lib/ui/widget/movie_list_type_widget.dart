import 'package:dicoding_movie_app/res/colors.dart';
import 'package:dicoding_movie_app/ui/widget/default_widget.dart';
import 'package:dicoding_movie_app/ui/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:viewmodel/ui/base/live_data.dart';
import 'package:viewmodel/ui/base/live_data_observer.dart';
import 'package:viewmodel/util/_consoles.dart';

class TabItemMovieType extends StatelessWidget {
  final String text;
  final int index;
  final MutableLiveData<int> selectedIndex;

  TabItemMovieType({
    required this.text,
    required this.index,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return LiveDataObserver<int>(
      liveData: selectedIndex,
      builder: (ctx, data) {
        prind("TabItemMovieType data= $data");
        return data != null ? Container(
          decoration: BoxDecoration(
            color: data == index ? primarySwatch.shade500 : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () => selectedIndex.value = index,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: ThemedText.size1Bold(Text(
                    text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: data == index ? yellow : primarySwatch.shade700,
                    ),
                  )),
                ),
              ),
            ),
          ),
        ) : defaultLoading();
      },
    );
  }
}


class TabGroupMovieType extends StatelessWidget {
  final MutableLiveData<int> selectedIndex;
  final List<String> names;

  TabGroupMovieType({
    required this.selectedIndex,
    required this.names,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      //direction: Axis.horizontal,
      //alignment: WrapAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: List<TabItemMovieType>.generate(names.length, (i) => TabItemMovieType(
        text: names[i],
        index: i,
        selectedIndex: selectedIndex,
      )).toList(growable: false),
    );
  }
}
