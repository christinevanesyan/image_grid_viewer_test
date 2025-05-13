// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageResponse _$ImageResponseFromJson(Map<String, dynamic> json) =>
    ImageResponse(
      json['ok'] as bool,
      json['type'] as String?,
      json['description'] as String?,
      json['traceId'] as String?,
      json['result'] == null
          ? null
          : ImageResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImageResponseToJson(ImageResponse instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'result': instance.result,
      'type': instance.type,
      'description': instance.description,
      'traceId': instance.traceId,
    };
