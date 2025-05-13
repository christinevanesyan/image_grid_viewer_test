part of 'image_bloc.dart';

@freezed
class ImageEvent with _$ImageEvent {
  const factory ImageEvent.fetchImages(
      {required Size screenSize, String? continuationToken}) = FetchImagesEvent;
}
