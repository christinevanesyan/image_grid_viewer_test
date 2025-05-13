import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_grid_viewer_test/core/di/di.dart';
import 'package:image_grid_viewer_test/presentation/dialogs/dialogs.dart';
import 'package:image_grid_viewer_test/presentation/screens/image_details_screen/image_details_screen.dart';
import 'package:image_grid_viewer_test/presentation/screens/image_grid_screen/bloc/image_bloc.dart';
import 'package:image_grid_viewer_test/presentation/screens/widgets/network_image_widget.dart';
import 'package:image_grid_viewer_test/presentation/vms/image_view_model.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _imageBloc.add(FetchImagesEvent(
        screenSize: MediaQuery.of(context).size,
      ));
    });
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
      create: (context) => _imageBloc = ImageBloc(getIt()),
      child: BlocConsumer<ImageBloc, ImageState>(
        listener: _listener,
        builder: (context, state) {
          List<ImageViewModel>? images = state.imageViewModel;
          return Stack(
            children: [
              Scaffold(
                  body: SafeArea(
                child: CustomScrollView(
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
                            ? _NoDataWidget()
                            : SliverPadding(
                                padding: const EdgeInsets.all(18),
                                sliver: SliverGrid(
                                  delegate: SliverChildBuilderDelegate(
                                    (context, index) {
                                      final item = images[index];
                                      return NetworkImageWidget(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ImageDetailScreen(
                                                            bytes: item
                                                                .imageBytes)));
                                          },
                                          imageBytes: item.imageBytes);
                                    },
                                    childCount: images.length,
                                  ),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 1,
                                    mainAxisSpacing: 20,
                                    crossAxisSpacing: 20,
                                  ),
                                ),
                              ),
                    if (state.status == ImageStateStatus.loading)
                      SliverToBoxAdapter(child: _LoadingWidget())
                  ],
                ),
              )),
              if (state.status == ImageStateStatus.firstLoad)
                Positioned.fill(child: _LoadingWidget())
            ],
          );
        },
      ),
    );
  }

  _listener(BuildContext context, ImageState state) {
    if (state.status == ImageStateStatus.error) {
      Dialogs.show(context,
          content: state.errorMessage ?? 'Что-то пошло не так');
    }
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}

class _NoDataWidget extends StatelessWidget {
  const _NoDataWidget();

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: Text(
          'Нет данных',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      ),
    );
  }
}
