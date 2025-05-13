part of 'image_bloc.dart';

@freezed
class ImageState with _$ImageState {
  const factory ImageState({
    @Default(null) List<ImageViewModel>? imageViewModel,
    @Default(null) String? continuationToken,
    @Default(null) String? errorMessage,
    @Default(ImageStateStatus.initial) ImageStateStatus status,
  }) = _ImageState;
}

enum ImageStateStatus { initial, loading, firstLoad, error, success }
