import 'package:image_grid_viewer_test/data/models/image_items/image_items.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_result.g.dart';

@JsonSerializable(includeIfNull: false)
class ImageResult {
  final List<ImageItems> items;
  final String? continuationToken;

  ImageResult({
    required this.items,
    this.continuationToken,
  });

  factory ImageResult.fromJson(Map<String, dynamic> json) =>
      _$ImageResultFromJson(json);
  Map<String, dynamic> toJson() => _$ImageResultToJson(this);
}
