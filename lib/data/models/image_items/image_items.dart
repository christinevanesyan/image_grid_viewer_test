import 'package:image_grid_viewer_test/data/models/image_variant/image_variant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_items.g.dart';

@JsonSerializable()
class ImageItems {
  final String id;
  final List<ImageVariant> variants;

  ImageItems({
    required this.id,
    required this.variants,
  });

  factory ImageItems.fromJson(Map<String, dynamic> json) =>
      _$ImageItemsFromJson(json);
  Map<String, dynamic> toJson() => _$ImageItemsToJson(this);
}
