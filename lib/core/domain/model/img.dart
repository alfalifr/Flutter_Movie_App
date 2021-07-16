import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class ImgData with _$ImgData {
  const factory ImgData({
    required String link,
    String? package,
    required bool isLocal,
  }) = _ImgData;
}