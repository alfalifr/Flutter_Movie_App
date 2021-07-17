import 'package:flutter/cupertino.dart';

extension TxtExt on Text {
  Text copy({
    String? data,
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) => Text(
    data ?? this.data ?? "",
    style: style ?? this.style,
    strutStyle: strutStyle ?? this.strutStyle,
    textAlign: textAlign ?? this.textAlign,
    textDirection: textDirection ?? this.textDirection,
    locale: locale ?? this.locale,
    softWrap: softWrap ?? this.softWrap,
    overflow: overflow ?? this.overflow,
    textScaleFactor: textScaleFactor ?? this.textScaleFactor,
    maxLines: maxLines ?? this.maxLines,
    semanticsLabel: semanticsLabel ?? this.semanticsLabel,
    textWidthBasis: textWidthBasis ?? this.textWidthBasis,
    textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
  );
}