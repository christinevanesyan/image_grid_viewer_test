import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_grid_viewer_test/core/di/di.dart';
import 'package:image_grid_viewer_test/data/models/image_variant/image_variant.dart';
import 'package:image_grid_viewer_test/presentation/dialogs/dialogs.dart';
import 'package:image_grid_viewer_test/presentation/screens/bloc/image_bloc.dart';

class ImageGridScreen extends StatefulWidget {
  const ImageGridScreen({super.key});

  @override
  ImageGridScreenState createState() => ImageGridScreenState();
}

class ImageGridScreenState extends State<ImageGridScreen> {
  late ImageBloc _imageBloc;
  final ScrollController _scrollController = ScrollController();
  @override
  void initState() {
    _scrollController.addListener(_load);
    super.initState();
  }

  void _load() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent) {
      String? continuationToken = _imageBloc.state.continuationToken;
      _imageBloc.add(FetchImagesEvent(
          screenSize: MediaQuery.sizeOf(context),
          continuationToken: continuationToken));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ImageBloc>(
      create: (context) => _imageBloc = ImageBloc(getIt())
        ..add(FetchImagesEvent(screenSize: Size(100, 100))),
      child: BlocConsumer<ImageBloc, ImageState>(
        listener: (context, state) {
          if (state.status == ImageStateStatus.error) {
            Dialogs.show(context,
                content: state.errorMessage ?? 'Что-то пошло не так');
          }
        },
        builder: (context, state) {
          List<ImageVariant>? images = state.imageVariantList;
          return Scaffold(
              body: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                pinned: true,
                title: Icon(Icons.photo),
              ),
              images == null
                  ? SliverFillRemaining(
                      hasScrollBody: false,
                    )
                  : images.isEmpty
                      ? SliverFillRemaining(
                          hasScrollBody: false,
                          child: Center(
                            child: Text(
                              'Нет данных',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                        )
                      : SliverPadding(
                          padding: const EdgeInsets.all(8),
                          sliver: SliverGrid(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                final item = state.imageVariantList![index];
                                return Image.network(
                                  item.url,
                                );
                              },
                              childCount: state.imageVariantList!.length,
                            ),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1,
                            ),
                          ),
                        ),
              if (state.status == ImageStateStatus.loading)
                SliverToBoxAdapter(
                    child: Center(
                        child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                )))
            ],
          ));
        },
      ),
    );
  }
}
