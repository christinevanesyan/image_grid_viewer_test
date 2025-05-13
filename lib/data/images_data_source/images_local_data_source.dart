import 'dart:typed_data';

import 'package:image_grid_viewer_test/data/images_data_source/images_data_source.dart';
import 'package:image_grid_viewer_test/data/models/image_result/image_result.dart';
import 'package:image_grid_viewer_test/data/models/image_variant/image_variant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImagesLocalDataSource extends ImagesDataSource {
  ImagesLocalDataSource(this._sharedPreferences);
  final SharedPreferences _sharedPreferences;

  @override
  Future<ImageResult?> getImageVariants() async {
    List<String>? data = _sharedPreferences.getStringList('jobEvaluationImage');
    if (data == null) return null;
    return null;
  }

  Future<List<ImageVariant>?> setImageVariants(
      List<ImageVariant> images) async {
    // String? data = await _sharedPreferences.setString('jobEvaluationImage');
    return [];
  }

  @override
  Future<Uint8List?> getFileBytes({required String url}) async {
    return null;
  }
  

}
