import 'package:dicoding_movie_app/di/vm_di.dart';
import 'package:dicoding_movie_app/res/theme.dart';
import 'package:dicoding_movie_app/ui/page/about/about_page.dart';
import 'package:dicoding_movie_app/ui/page/list/list_page.dart';
import 'package:dicoding_movie_app/ui/page/splash/splash_page.dart';
import 'package:dicoding_movie_app/util/const.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:viewmodel/ui/base/view_model.dart';


void main() async {
  await initializeDateFormatting("id_ID");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final scrollControl = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Const.APP_NAME,
      theme: appTheme,
      home: Scaffold(
        body: SplashPage(),
      ),
    );
  }
}
