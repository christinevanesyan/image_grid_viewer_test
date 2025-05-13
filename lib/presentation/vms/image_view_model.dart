import 'dart:typed_data';
import 'package:image_grid_viewer_test/data/models/image_variant/image_variant.dart';

class ImageViewModel {
  ImageViewModel(
      {required this.url, required this.imageBytes, required this.model});
  final Uint8List imageBytes;
  final String url;
  final ImageVariant model;

  factory ImageViewModel.fromImageVariant(
      {required ImageVariant model, required Uint8List imageBytes}) {
    return ImageViewModel(url: model.url, imageBytes: imageBytes, model: model);
  }
}
