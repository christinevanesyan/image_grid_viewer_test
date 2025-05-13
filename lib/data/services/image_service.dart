import 'package:chopper/chopper.dart';
import 'package:image_grid_viewer_test/data/models/image_response/image_response.dart';

part 'image_service.chopper.dart';

@ChopperApi()
abstract class ImageService extends ChopperService {
  @Get(path: '/jobEvaluation/images')
  Future<Response<ImageResponse>> getJobEvaluationImages(
      {@Query('continuationToken') String? continuationToken});

  static ImageService create([ChopperClient? client]) => _$ImageService(client);
}
