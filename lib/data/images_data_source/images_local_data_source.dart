import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:image_grid_viewer_test/data/images_data_source/images_data_source.dart';
import 'package:path_provider/path_provider.dart';

class ImagesLocalDataSource extends ImagesDataSource {
  Future<void> setImages(
      {required String url, required Uint8List fileBytes}) async {
    final String fileName = '${md5.convert(utf8.encode(url))}.img';
    final Directory dir = await getApplicationDocumentsDirectory();
    final File file = File('${dir.path}/$fileName');
    await file.writeAsBytes(fileBytes);
  }

  @override
  Future<Uint8List?> getFileBytes({required String url}) async {
    final String fileName = '${md5.convert(utf8.encode(url))}.img';
    final Directory dir = await getApplicationDocumentsDirectory();
    final File file = File('${dir.path}/$fileName');
    if (await file.exists()) {
      return file.readAsBytes();
    } else {
      return null;
    }
  }
}
