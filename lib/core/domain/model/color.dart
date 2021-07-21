import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'color.freezed.dart';

@freezed
class ARGBColor with _$ARGBColor {
  const factory ARGBColor({
    required int a,
    required int r,
    required int g,
    required int b,
  }) = _ARGBColor;

  factory ARGBColor.fromColor(Color color) {
    final val = color.value;
    final a = (val >> 24) & 0xFF;
    final r = (val >> 16) & 0xFF;
    final g = (val >> 8) & 0xFF;
    final b = (val >> 0) & 0xFF;

    return ARGBColor(a: a, r: r, g: g, b: b);
  }
}


