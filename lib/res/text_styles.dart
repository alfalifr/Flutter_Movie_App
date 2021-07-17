import 'package:flutter/cupertino.dart';

const regular = TextStyle();
const bold = TextStyle(fontWeight: FontWeight.bold,);
const italic = TextStyle(fontStyle: FontStyle.italic,);
const boldItalic = TextStyle(
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
);

TextStyle toBold(TextStyle? style) => style?.copyWith(fontWeight: FontWeight.bold,) ?? bold;
TextStyle toItalic(TextStyle? style) => style?.copyWith(fontStyle: FontStyle.italic,) ?? italic;
TextStyle toBoldItalic(TextStyle? style) => style?.copyWith(
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
) ?? boldItalic;

const size_min_6 = 0.09;
const size_min_5 = 0.125;
const size_min_4 = 0.25;
const size_min_3 = 0.5;
const size_min_2 = 0.7;
const size_min_1 = 0.9;
const size_0 = 1.0;
const size_1 = 1.2;
const size_2 = 1.5;
const size_3 = 1.8;
const size_4 = 2.0;
const size_5 = 2.3;
const size_6 = 2.5;
const size_7 = 2.7;
const size_8 = 3.0;