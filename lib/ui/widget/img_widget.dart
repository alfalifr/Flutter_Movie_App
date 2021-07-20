import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:viewmodel/util/_consoles.dart';

import 'default_widget.dart';

Widget buildImgNetwork(
    String src, {
      Widget Function(BuildContext context, Widget? child, ImageChunkEvent? loadingProgress,)? loadingBuilder,
      Widget Function(BuildContext context, Object error, StackTrace? stackTrace,)? errorBuilder,
      BoxFit? fit,
      double? width,
      double? height,
    }) {
  final usedFit = fit ?? BoxFit.cover;
  if(src.endsWith(".svg")) {
    try {
      return SvgPicture.network(src, fit: usedFit, width: width, height: height,
        placeholderBuilder: (ctx) => loadingBuilder?.call(ctx, null, null) ?? defaultLoading(),
      );
    } catch(e, stack) {
      prine(e);
      prine(stack);
      return defaultError(text: "Svg img Load Error");
    }
  }
  return Image.network(
    src,
    loadingBuilder: loadingBuilder ?? defImgLoadingBuilder(),
    errorBuilder: errorBuilder ?? defImgErrorBuilder(),
    fit: usedFit,
    width: width,
    height: height,
  );
}


Widget Function(BuildContext context,Widget child, ImageChunkEvent? loadingProgress,) defImgLoadingBuilder() =>
        (context, child, loadingProgress) => loadingProgress == null ? child : defaultLoading();

Widget Function(BuildContext context, Object error, StackTrace? stackTrace,) defImgBuilder() =>
        (context, error, stackTrace) => defaultImg();

Widget Function(BuildContext context, Object error, StackTrace? stackTrace,) defImgErrorBuilder() =>
        (context, error, stackTrace,) => defaultError(text: "Img Load Error");

