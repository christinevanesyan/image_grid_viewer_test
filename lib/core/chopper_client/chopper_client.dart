import 'package:chopper/chopper.dart';
import 'package:image_grid_viewer_test/core/chopper_client/custom_json_converter.dart';
import 'package:image_grid_viewer_test/core/consts/app_consts.dart';
import 'package:image_grid_viewer_test/data/models/image_response/image_response.dart';
import 'package:image_grid_viewer_test/data/models/image_result/image_result.dart';
import 'package:image_grid_viewer_test/data/models/image_variant/image_variant.dart';
import 'package:image_grid_viewer_test/data/services/image_service.dart';
import 'dart:developer' as dev;

var chopperClient = ChopperClient(
  baseUrl: Uri.parse('${AppConsts.appBaseUrl}/${AppConsts.appVersion}'),
  services: [
    ImageService.create(),
  ],
  converter: CustomJsonConverter({
    ImageResponse: ImageResponse.fromJson,
    ImageResult: ImageResult.fromJson,
    ImageVariant: ImageVariant.fromJson,
  }),
  interceptors: [
    HttpLoggingInterceptor(),
    (Request request) async {
      dev.log('➡️ ${request.method} ${request.url}');
      dev.log('Headers: ${request.headers}');
      dev.log('Body: ${request.body}');
      return request;
    },
    (Response response) async {
      dev.log('⬅️ ${response.statusCode} ${response.base.request?.url}');
      dev.log('Body: ${response.body}');
      return response;
    },
  ],
);
