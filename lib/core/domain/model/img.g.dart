// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'img.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImgData _$_$_ImgDataFromJson(Map<String, dynamic> json) {
  return _$_ImgData(
    link: json['link'] as String,
    package: json['package'] as String?,
    isLocal: json['isLocal'] as bool,
    width: json['width'] as num?,
    height: json['height'] as num?,
  );
}

Map<String, dynamic> _$_$_ImgDataToJson(_$_ImgData instance) =>
    <String, dynamic>{
      'link': instance.link,
      'package': instance.package,
      'isLocal': instance.isLocal,
      'width': instance.width,
      'height': instance.height,
    };
