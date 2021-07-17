import 'package:dicoding_movie_app/core/data/remote/model/movie_images_api_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'img.freezed.dart';

@freezed
class ImgData with _$ImgData {
  const factory ImgData({
    required String link,
    String? package,
    required bool isLocal,
    num? width,
    num? height,
  }) = _ImgData;
  //factory ImgData.fromJson(Map<String, dynamic> map) = _ImgData.fromJson;
  factory ImgData.fromResponse(MovieImageDataResponse response) => ImgData(
    link: response.file_path,
    isLocal: false,
    width: response.width,
    height: response.height,
  );
}