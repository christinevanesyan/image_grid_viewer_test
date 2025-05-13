// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ImageService extends ImageService {
  _$ImageService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ImageService;

  @override
  Future<Response<ImageResponse>> getJobEvaluationImages(
      {String? continuationToken}) {
    final Uri $url = Uri.parse('/jobEvaluation/images');
    final Map<String, dynamic> $params = <String, dynamic>{
      'continuationToken': continuationToken
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ImageResponse, ImageResponse>($request);
  }
}
