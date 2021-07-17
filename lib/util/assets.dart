
import 'package:dicoding_movie_app/core/domain/model/img.dart';
import 'package:dicoding_movie_app/ui/widget/img_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viewmodel/util/_consoles.dart';

class SiImages {
  SiImages._();
  static Widget get(String fileName, {
    String? package,
    double? width,
    double? height,
    BoxFit? fit,
    bool showError = false,
  }){
    final usedFit = fit ?? BoxFit.cover;
    final dir = getDir(fileName);
    if(package != null) {
      if(fileName.endsWith(".svg"))
        return SvgPicture.asset(dir, width: width, height: height, fit: usedFit, package: package,);
      return Image.asset(dir, width: width, height: height, fit: usedFit, package: package,
          errorBuilder: (ctx, error, stackTrace,) {
            prind("SibImages.get() image with file name '$fileName' doesn't exist in package '$package'. Trying to look in default package...");
            return get(fileName, width: width, height: height, fit: usedFit,);
          }
        //The image may be in caller's own package, so call this method again with null package.
      );
    } else {
      if(fileName.endsWith(".svg"))
        return SvgPicture.asset(dir, width: width, height: height, fit: usedFit,);
      return Image.asset(dir, width: width, height: height, fit: usedFit,
        errorBuilder: !showError
            ? defImgBuilder()
            : defImgErrorBuilder(),
      );
    }
  }
  static String getDir(String fileName) => !fileName.contains("/") ? "assets/images/$fileName" : fileName;
  static Widget resolve(ImgData data, {
    BoxFit? fit,
    double? width,
    double? height,
  }) {
    final usedFit = fit ?? BoxFit.cover;
    if(!data.isLocal) {
      return buildImgNetwork(
        data.link, fit: usedFit,
        width: width ?? data.width?.toDouble(),
        height: height ?? data.height?.toDouble(),
      );
    } else {
      return get(
        data.link, package: data.package, fit: usedFit,
        width: width ?? data.width?.toDouble(),
        height: height ?? data.height?.toDouble(),
      );
    }
  }
}