import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:image_grid_viewer_test/core/chopper_client/chopper_client.dart';
import 'package:image_grid_viewer_test/data/images_data_source/images_data_source.dart';
import 'package:image_grid_viewer_test/data/images_data_source/images_local_data_source.dart';
import 'package:image_grid_viewer_test/data/images_data_source/images_remote_data_source.dart';
import 'package:image_grid_viewer_test/data/services/file_download_service.dart/file_download_service.dart';
import 'package:image_grid_viewer_test/data/services/image_service.dart';
import 'package:image_grid_viewer_test/domain/image_repo/image_repo.dart';

final getIt = GetIt.I;
void setup() {
  getIt.registerSingleton<ChopperClient>(chopperClient);

  getIt.registerLazySingleton<ImagesLocalDataSource>(
      () => ImagesLocalDataSource());

  getIt.registerLazySingleton<ImagesRemoteDataSource>(
    () => ImagesRemoteDataSource(getIt<ImageService>(), FileDownloadService()),
  );

  getIt.registerLazySingleton<ImagesDataSource>(
    () => ImagesLocalDataSource(),
  );

  getIt.registerLazySingleton<ImageService>(
    () => getIt<ChopperClient>().getService<ImageService>(),
  );

  getIt.registerLazySingleton<ImageRepo>(
    () => ImageRepoImpl(
      getIt<ImagesLocalDataSource>(),
      getIt<ImagesRemoteDataSource>(),
    ),
  );
}
