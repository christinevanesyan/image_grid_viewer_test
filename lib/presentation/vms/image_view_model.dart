import 'dart:typed_data';
import 'dart:ui';

class ImageViewModel {
  ImageViewModel(this.model,
      {required this.name, required this.imageBytes, required this.size});
  final Uint8List imageBytes;
  final String name;
  final Size size;
  final ImageViewModel model;

  // ImageViewModel.fromImageVariant(ImageViewModel model) {
  //   return ImageViewModel(name: '', imageBytes: null, size: null);
  // }
}
