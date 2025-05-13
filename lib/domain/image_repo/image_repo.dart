import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_grid_viewer_test/data/images_data_source/images_local_data_source.dart';
import 'package:image_grid_viewer_test/data/images_data_source/images_remote_data_source.dart';
import 'package:image_grid_viewer_test/data/models/image_result/image_result.dart';

abstract class ImageRepo {
  Future<ImageResult?> getImageVariants(
      {String? continuationToken});
  Future<Uint8List?> getImage({required String url});
}

@immutable
class ImageRepoImpl implements ImageRepo {
  const ImageRepoImpl(
      this._imagesLocalDataSource, this._imagesRemoteDataSource);

  final ImagesLocalDataSource _imagesLocalDataSource;
  final ImagesRemoteDataSource _imagesRemoteDataSource;

  @override
  Future<Uint8List?> getImage({required String url}) async {
    Uint8List? bytes = await _imagesLocalDataSource.getFileBytes(url: url);
    if (bytes == null) {
      bytes = await _imagesRemoteDataSource.getFileBytes(url: url);
      if (bytes != null) {
        await _imagesRemoteDataSource.setImages(url: url, fileBytes: bytes);
      }
    }
    return bytes;
  }

  @override
  Future<ImageResult?> getImageVariants({String? continuationToken}) async {
    ImageResult? imageResult = await _imagesRemoteDataSource.getImageVariants(
        continuationToken: continuationToken);

    return imageResult;
  }
}
