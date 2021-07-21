import 'package:dicoding_movie_app/core/domain/dummy_data.dart';
import 'package:dicoding_movie_app/res/colors.dart';
import 'package:dicoding_movie_app/ui/widget/text_widget.dart';
import 'package:dicoding_movie_app/util/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final btnBack = SafeArea(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Material(
          color: Colors.transparent,
          child: InkResponse(
            onTap: () => Navigator.pop(context),
            highlightShape: BoxShape.circle,
            child: Ink(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: black_trans_5,
              ),
              child: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );

    return Stack(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  green_trans,
                  yellow_trans,
                ],
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ThemedText.size2Bold(Text(
                "This app is powered by"
            )),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [
                  SiImages.resolve(imgTmdb),
                  FlutterLogo(size: 200,),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "and made with",
                  style: TextStyle(
                    color: grey_4,
                  ),
                ),
                SizedBox(width: 10,),
                Icon(
                  Icons.favorite_rounded,
                  color: red,
                ),
              ],
            ),
          ],
        ),
        btnBack,
      ],
    );
  }
}
