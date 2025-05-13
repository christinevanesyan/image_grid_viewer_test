import 'dart:typed_data';

abstract class ImagesDataSource {
  Future<Uint8List?> getFileBytes({required String url});
}
