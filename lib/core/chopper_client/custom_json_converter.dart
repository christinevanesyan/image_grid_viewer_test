import 'dart:convert';

import 'package:chopper/chopper.dart';

typedef FromJsonFactory<T> = T Function(Map<String, dynamic> json);

class CustomJsonConverter extends JsonConverter {
  final Map<Type, FromJsonFactory> factories;

  const CustomJsonConverter(this.factories);

  @override
  Request convertRequest(Request request) {
    final contentType = request.headers['Content-Type'];
    if (contentType != null && contentType.contains('application/json')) {
      return request.copyWith(
        body: json.encode(request.body),
      );
    }
    return super.convertRequest(request);
  }

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    final decodedJson = json.decode(response.bodyString);

    final factory = factories[InnerType];

    if (factory != null && decodedJson is Map<String, dynamic>) {
      final body = factory(decodedJson) as BodyType;
      return response.copyWith<BodyType>(body: body);
    }

    if (factory != null && decodedJson is List) {
      final body = decodedJson
          .map((item) => factory(item as Map<String, dynamic>))
          .toList() as BodyType;
      return response.copyWith<BodyType>(body: body);
    }

    return response.copyWith<BodyType>(body: decodedJson);
  }
}
