// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageVariant _$ImageVariantFromJson(Map<String, dynamic> json) => ImageVariant(
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$ImageVariantToJson(ImageVariant instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
    };
