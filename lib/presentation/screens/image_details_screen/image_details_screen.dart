import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_grid_viewer_test/presentation/screens/widgets/network_image_widget.dart';

class ImageDetailScreen extends StatelessWidget {
  final Uint8List bytes;

  const ImageDetailScreen({super.key, required this.bytes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Просмотр')),
      body: Center(
        child: InteractiveViewer(
            panEnabled: false,
            boundaryMargin: EdgeInsets.all(double.infinity),
            minScale: 0.5,
            maxScale: 2,
            child: Center(
              child: NetworkImageWidget(
                imageBytes: bytes,
              ),
            )),
      ),
    );
  }
}
