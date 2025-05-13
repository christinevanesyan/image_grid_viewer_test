import 'package:image_grid_viewer_test/data/models/image_result/image_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_response.g.dart';

@JsonSerializable()
class ImageResponse {
  final bool ok;
  final ImageResult? result;
  final String? type;
  final String? description;
  final String? traceId;

  ImageResponse(
    this.ok,
    this.type,
    this.description,
    this.traceId,
    this.result,
  );

  factory ImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ImageResponseToJson(this);
}
