import 'package:dicoding_movie_app/res/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:dicoding_movie_app/util/widget_util.dart';

class ThemedText extends StatelessWidget {
  final Text text;
  ThemedText._(this.text);

  @override
  Widget build(BuildContext context) => text;

  ThemedText.size0Italic(Text text) : this._(
    text.copy(
      style: toItalic(text.style),
    ),
  );
  ThemedText.size0Bold(Text text) : this._(
    text.copy(
      style: toBold(text.style),
    ),
  );
  ThemedText.size0BoldItalic(Text text) : this._(
    text.copy(
      style: toBoldItalic(text.style),
    ),
  );


  ThemedText.sizeM1(Text text) : this._(
    text.copy(
      textScaleFactor: size_min_1,
    ),
  );
  ThemedText.sizeM1Italic(Text text) : this._(
    text.copy(
      textScaleFactor: size_min_1,
      style: toItalic(text.style),
    ),
  );
  ThemedText.sizeM1Bold(Text text) : this._(
    text.copy(
      textScaleFactor: size_min_1,
      style: toBold(text.style),
    ),
  );
  ThemedText.sizeM1BoldItalic(Text text) : this._(
    text.copy(
      textScaleFactor: size_min_1,
      style: toBoldItalic(text.style),
    ),
  );


  ThemedText.sizeM2(Text text) : this._(
    text.copy(
      textScaleFactor: size_min_2,
    ),
  );
  ThemedText.sizeM2Italic(Text text) : this._(
    text.copy(
      textScaleFactor: size_min_2,
      style: toItalic(text.style),
    ),
  );
  ThemedText.sizeM2Bold(Text text) : this._(
    text.copy(
      textScaleFactor: size_min_2,
      style: toBold(text.style),
    ),
  );
  ThemedText.sizeM2BoldItalic(Text text) : this._(
    text.copy(
      textScaleFactor: size_min_2,
      style: toBoldItalic(text.style),
    ),
  );


  ThemedText.sizeM3(Text text) : this._(
    text.copy(
      textScaleFactor: size_min_3,
    ),
  );
  ThemedText.sizeM3Italic(Text text) : this._(
    text.copy(
      textScaleFactor: size_min_3,
      style: toItalic(text.style),
    ),
  );
  ThemedText.sizeM3Bold(Text text) : this._(
    text.copy(
      textScaleFactor: size_min_3,
      style: toBold(text.style),
    ),
  );
  ThemedText.sizeM3BoldItalic(Text text) : this._(
    text.copy(
      textScaleFactor: size_min_3,
      style: toBoldItalic(text.style),
    ),
  );


  ThemedText.size1(Text text) : this._(
    text.copy(
      textScaleFactor: size_1,
    ),
  );
  ThemedText.size1Bold(Text text) : this._(
    text.copy(
      textScaleFactor: size_1,
      style: toBold(text.style),
    ),
  );
  ThemedText.size1Italic(Text text) : this._(
    text.copy(
      textScaleFactor: size_1,
      style: toItalic(text.style),
    ),
  );
  ThemedText.size1BoldItalic(Text text) : this._(
    text.copy(
      textScaleFactor: size_1,
      style: toBoldItalic(text.style),
    ),
  );


  ThemedText.size2(Text text) : this._(
    text.copy(
      textScaleFactor: size_2,
    ),
  );
  ThemedText.size2Bold(Text text) : this._(
    text.copy(
      textScaleFactor: size_2,
      style: toBold(text.style),
    ),
  );
  ThemedText.size2Italic(Text text) : this._(
    text.copy(
      textScaleFactor: size_2,
      style: toItalic(text.style),
    ),
  );
  ThemedText.size2BoldItalic(Text text) : this._(
    text.copy(
      textScaleFactor: size_1,
      style: toBoldItalic(text.style),
    ),
  );


  ThemedText.size3(Text text) : this._(
    text.copy(
      textScaleFactor: size_3,
    ),
  );
  ThemedText.size3Bold(Text text) : this._(
    text.copy(
      textScaleFactor: size_3,
      style: toBold(text.style),
    ),
  );
  ThemedText.size3Italic(Text text) : this._(
    text.copy(
      textScaleFactor: size_3,
      style: toItalic(text.style),
    ),
  );
  ThemedText.size3BoldItalic(Text text) : this._(
    text.copy(
      textScaleFactor: size_3,
      style: toBoldItalic(text.style),
    ),
  );


  ThemedText.size4(Text text) : this._(
    text.copy(
      textScaleFactor: size_4,
    ),
  );
  ThemedText.size4Bold(Text text) : this._(
    text.copy(
      textScaleFactor: size_4,
      style: toBold(text.style),
    ),
  );
  ThemedText.size4Italic(Text text) : this._(
    text.copy(
      textScaleFactor: size_4,
      style: toItalic(text.style),
    ),
  );
  ThemedText.size4BoldItalic(Text text) : this._(
    text.copy(
      textScaleFactor: size_4,
      style: toBoldItalic(text.style),
    ),
  );


  ThemedText.size5(Text text) : this._(
    text.copy(
      textScaleFactor: size_5,
    ),
  );
  ThemedText.size5Bold(Text text) : this._(
    text.copy(
      textScaleFactor: size_5,
      style: toBold(text.style),
    ),
  );
  ThemedText.size5Italic(Text text) : this._(
    text.copy(
      textScaleFactor: size_5,
      style: toItalic(text.style),
    ),
  );
  ThemedText.size5BoldItalic(Text text) : this._(
    text.copy(
      textScaleFactor: size_5,
      style: toBoldItalic(text.style),
    ),
  );


  ThemedText.size6(Text text) : this._(
    text.copy(
      textScaleFactor: size_6,
    ),
  );
  ThemedText.size6Bold(Text text) : this._(
    text.copy(
      textScaleFactor: size_6,
      style: toBold(text.style),
    ),
  );
  ThemedText.size6Italic(Text text) : this._(
    text.copy(
      textScaleFactor: size_6,
      style: toItalic(text.style),
    ),
  );
  ThemedText.size6BoldItalic(Text text) : this._(
    text.copy(
      textScaleFactor: size_6,
      style: toBoldItalic(text.style),
    ),
  );
}