import 'dart:typed_data';

import 'package:image_grid_viewer_test/data/models/image_result/image_result.dart';

abstract class ImagesDataSource {
  Future<ImageResult?> getImageVariants();

  Future<Uint8List?> getFileBytes({required String url});
}
