import 'package:json_annotation/json_annotation.dart';

part 'image_variant.g.dart';

@JsonSerializable()
class ImageVariant {
  final int width;
  final int height;
  final String url;

  ImageVariant({
    required this.width,
    required this.height,
    required this.url,
  });

  factory ImageVariant.fromJson(Map<String, dynamic> json) =>
      _$ImageVariantFromJson(json);
  Map<String, dynamic> toJson() => _$ImageVariantToJson(this);
}
