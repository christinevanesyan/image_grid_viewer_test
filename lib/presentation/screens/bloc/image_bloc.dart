import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_grid_viewer_test/data/models/image_items/image_items.dart';

import 'package:image_grid_viewer_test/data/models/image_result/image_result.dart';
import 'package:image_grid_viewer_test/data/models/image_variant/image_variant.dart';
import 'package:image_grid_viewer_test/domain/image_repo/image_repo.dart';
import 'package:image_grid_viewer_test/presentation/vms/image_view_model.dart';
import 'package:rxdart/rxdart.dart';

part 'image_bloc.freezed.dart';
part 'image_event.dart';
part 'image_state.dart';

class ImageBloc extends Bloc<ImageEvent, ImageState> {
  final ImageRepo _imageRepo;
  ImageBloc(this._imageRepo) : super(ImageState()) {
    on<FetchImagesEvent>(_onFetchImagesEventToState,
        transformer: debounceTransformer());
  }
  void _onFetchImagesEventToState(
      FetchImagesEvent event, Emitter<ImageState> emit) async {
    emit(state.copyWith(status: ImageStateStatus.loading));
    List<ImageVariant> images = List.from(state.imageVariantList ?? []);
    try {
      if (images.isNotEmpty && event.continuationToken == null) {
        emit(state.copyWith(status: ImageStateStatus.initial));
      }
      List<ImageVariant> temp = [];
      ImageResult? imageResult = await _imageRepo.getImageVariants(
          screenSize: event.screenSize,
          continuationToken: event.continuationToken);
      if (imageResult != null) {
        List<ImageItems> items = imageResult.items;
        List<ImageVariant> a = items.map((e) => e.variants.first).toList();
        temp = a;
        images.addAll(temp);
        emit(state.copyWith(
            imageVariantList: images,
            continuationToken: imageResult.continuationToken));
      }
    } catch (e) {
      emit(state.copyWith(
          status: ImageStateStatus.error, errorMessage: e.toString()));
    }
  }
}

EventTransformer<E> debounceTransformer<E>(
    [Duration duration = const Duration(milliseconds: 500)]) {
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
}
