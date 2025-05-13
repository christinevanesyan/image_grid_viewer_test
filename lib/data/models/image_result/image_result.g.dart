// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageResult _$ImageResultFromJson(Map<String, dynamic> json) => ImageResult(
      items: (json['items'] as List<dynamic>)
          .map((e) => ImageItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      continuationToken: json['continuationToken'] as String?,
    );

Map<String, dynamic> _$ImageResultToJson(ImageResult instance) =>
    <String, dynamic>{
      'items': instance.items,
      if (instance.continuationToken case final value?)
        'continuationToken': value,
    };
