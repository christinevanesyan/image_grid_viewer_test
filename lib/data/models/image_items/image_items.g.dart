// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageItems _$ImageItemsFromJson(Map<String, dynamic> json) => ImageItems(
      id: json['id'] as String,
      variants: (json['variants'] as List<dynamic>)
          .map((e) => ImageVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ImageItemsToJson(ImageItems instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variants': instance.variants,
    };
