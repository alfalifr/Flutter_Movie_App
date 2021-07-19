import 'dart:ui';

import 'package:dicoding_movie_app/core/domain/dummy_data.dart';
import 'package:dicoding_movie_app/di/vm_di.dart';
import 'package:dicoding_movie_app/res/theme.dart';
import 'package:dicoding_movie_app/ui/page/detail/detail_page.dart';
import 'package:dicoding_movie_app/ui/page/list/list_page.dart';
import 'package:dicoding_movie_app/ui/page/splash/splash_page.dart';
import 'package:dicoding_movie_app/ui/widget/_template_widget.dart';
import 'package:dicoding_movie_app/ui/widget/carousel_trending.dart';
import 'package:dicoding_movie_app/ui/widget/default_widget.dart';
import 'package:dicoding_movie_app/ui/widget/movie_list_widget.dart';
import 'package:dicoding_movie_app/util/const.dart';
import 'package:dicoding_movie_app/util/ui_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:viewmodel/ui/base/live_data.dart';
import 'package:viewmodel/ui/base/live_data_observer.dart';
import 'package:viewmodel/ui/base/view_model.dart';
import 'package:viewmodel/util/_consoles.dart';


void main() async {
  await initializeDateFormatting("id_ID");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final scrollControl = ScrollController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
/*
      home: Scaffold(
        body: Builder(
          builder: (ctx) {
            final maxHeight = 100.0;
/*
            final panelHeight = MutableLiveData<double>(maxHeight);
            final scrollControl = ScrollController();
            scrollControl.addListener(() {
              if(panelHeight.isActive) {
                final newOff = maxHeight - scrollControl.offset;
                prind("newOff = $newOff");
                if(newOff >= 0) {
                  panelHeight.value = newOff;
                }
                ///*
                else if(panelHeight.value != 0) {
                  panelHeight.value = 0;
                }
                // */
              }
            });
 */
            return Column(
              children: [

                CollapsingBlur(
                  maxHeight: 200,
                  scrollController: scrollControl,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.blue,
                    child: Align(
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          Text(
                            "Halo",
                            textAlign: TextAlign.center,
                            textScaleFactor: 2,
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: ListView.builder(
                    controller: scrollControl,
                    itemCount: 20,
                    itemBuilder: (ctx, i) => ListTile(
                      title: Text("$i. ${faker.lorem.sentence()}"),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),

// */
/*
    home: Scaffold(
      body: ViewModelProvider(
        creators: [
              (ctx) => VmDi.detailVm,
        ],
        child: DetailPage(movie: dummyMovieList[1]),
      ),
    ),
// */
/*
    home: Scaffold(
      body: MobileCast(dummyCastList[0]),
    ),
 */
///*
    home: Scaffold(
      body: SplashPage(),
    ),
// */
/*
      home: Scaffold(
        body: ViewModelProvider(
          creators: [
            (ctx) => VmDi.listVm,
          ],
          child: ListPage(),
        ),
      ),
// */
      /*
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFBA2121),
                    Color(0xFF07FF00),
                  ]
                )
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 50,
              width: 150,
              color: getColorPointFromLinearGradient(
                first: Color(0xFFBA2121),
                last: Color(0xFF07FF00),
                point: 0.6,
              ),
            )
          ],
        ),
      ),
       */
    );
  }
}

/*

                Builder(
                  builder: (ctx) {
                    return LiveDataObserver<double>(
                      liveData: panelHeight,
                      builder: (ctx, h) {
                        prind("LiveDataObserver<double>() h= $h maxHeight - h = ${maxHeight - (h ?? 0)}");
                        final blur = maxHeight - (h ?? 0);
                        return h != null ? Container(
                          height: h,
                          color: Colors.blue,
                          child: ClipRRect(
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Halo",
                                    textScaleFactor: 2,
                                  ),
                                ),
                                Container(
                                  child: blur > 0 ? BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: blur,
                                      sigmaY: blur,
                                    ),
                                    child: Container(
                                      color: Colors.black.withOpacity(0),
                                    ),
                                  ) : defaultEmptyWidget(),
                                ),
                              ],
                            ),
                          ),
                        ) : defaultLoading();
                      },
                    );
                  },
                ),
 */

/*
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


 */