import 'dart:typed_data';

import 'package:chopper/chopper.dart';
import 'package:image_grid_viewer_test/data/images_data_source/images_data_source.dart';
import 'package:image_grid_viewer_test/data/models/image_response/image_response.dart';
import 'package:image_grid_viewer_test/data/models/image_result/image_result.dart';
import 'package:image_grid_viewer_test/data/services/file_download_service.dart/file_download_service.dart';
import 'package:image_grid_viewer_test/data/services/image_service.dart';

class ImagesRemoteDataSource extends ImagesDataSource {
  ImagesRemoteDataSource(this._imageService, this._fileDownloadService);
  final ImageService _imageService;
  final FileDownloadService _fileDownloadService;

  Future<ImageResult?> getImageVariants({String? continuationToken}) async {
    try {
      Response<ImageResponse?> response = await _imageService
          .getJobEvaluationImages(continuationToken: continuationToken);
      if (response.statusCode == 200) {
        ImageResponse? imageResponse = response.body;
        if (imageResponse != null) {
          if (imageResponse.ok) {
            return imageResponse.result;
          } else {
            throw Exception(imageResponse.description);
          }
        }
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Uint8List?> getFileBytes({required String url}) async {
    return _fileDownloadService.downloadFile(url: url);
  }
}
