import 'dart:math';

import 'package:dicoding_movie_app/di/vm_di.dart';
import 'package:dicoding_movie_app/res/colors.dart';
import 'package:dicoding_movie_app/res/fonts.dart';
import 'package:dicoding_movie_app/res/img.dart';
import 'package:dicoding_movie_app/ui/page/list/list_page.dart';
import 'package:dicoding_movie_app/ui/widget/text_widget.dart';
import 'package:dicoding_movie_app/util/assets.dart';
import 'package:dicoding_movie_app/util/const.dart';
import 'package:dicoding_movie_app/util/ui_util.dart';
import 'package:flutter/material.dart';
import 'package:viewmodel/ui/base/view_model.dart';


class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 800),
        transitionsBuilder: (ctx, anim, secAnim, child) {
          final begin = Offset(0.2, 1.0);
          final end = Offset.zero;
          final tw = Tween(begin: begin, end: end,);
          final cTw = tw.chain(CurveTween(curve: Curves.elasticOut));
          final an = anim.drive(cTw);

          return SlideTransition(
            position: an,
            child: child,
          );
        },
        pageBuilder: (ctx, anim, secAnim) {
          return Scaffold(
            body: ViewModelProvider(
              creators: [
                    (ctx) => VmDi.listVm,
              ],
              child: ListPage(),
            ),
          );
        }
      ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LayoutBuilder(
            builder: (ctx, constr) {
              final minLen = getMinProvidedLen(context: ctx, constr: constr);
              final len = minLen * 5/10;
              return Container(
                width: len,
                height: len,
                child: SiImages.resolve(appLogo),
              );
            },
          ),
          SizedBox(height: 20,),
          ThemedText.size4Bold(Text(
            Const.APP_NAME,
          )),
        ],
      ),
    );
  }
}
