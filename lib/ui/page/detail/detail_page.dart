import 'package:dicoding_movie_app/core/domain/model/movie.dart';
import 'package:dicoding_movie_app/core/domain/model/movie_detail.dart';
import 'package:dicoding_movie_app/res/colors.dart';
import 'package:dicoding_movie_app/res/dimes.dart';
import 'package:dicoding_movie_app/ui/page/detail/detail_vm.dart';
import 'package:dicoding_movie_app/ui/widget/default_widget.dart';
import 'package:dicoding_movie_app/ui/widget/text_widget.dart';
import 'package:dicoding_movie_app/util/assets.dart';
import 'package:dicoding_movie_app/util/data_mapper.dart';
import 'package:dicoding_movie_app/util/times.dart';
import 'package:flutter/material.dart';
import 'package:viewmodel/ui/base/async_view_model_observer.dart';
import 'package:viewmodel/ui/base/view_model.dart';

part 'detail_page_mobile.dart';

class DetailPage extends StatelessWidget {
  final Movie movie;
  DetailPage({
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    final vm = ViewModelProvider.of<DetailVm>(context)
      ..getDetail(movie: movie);

    return _MobilePage(vm: vm);
  }
}


class _Genres extends StatelessWidget {
  final MovieDetail data;
  _Genres(this.data);

  @override
  Widget build(BuildContext context) {
    return data.genres.isNotEmpty ? Container(
      margin: EdgeInsets.only(top: 10,),
      height: 30,
      //width: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: data.genres.map<Widget>((e) => Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: grey_3,
          ),
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10,),
          child: Align(
            alignment: Alignment.center,
            child: ThemedText.sizeM1Bold(Text(
              e, style: TextStyle(color: Colors.white),
            )),
          ),
        )).toList(growable: false),
      ),
    ) : defaultEmptyWidget();
  }
}