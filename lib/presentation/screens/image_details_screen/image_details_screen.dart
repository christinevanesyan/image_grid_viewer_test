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
          scaleEnabled: true,
          panEnabled: false,
          boundaryMargin: EdgeInsets.all(100),
          minScale: 0.5,
          maxScale: 2,
          child: NetworkImageWidget(
            imageBytes: bytes,
          ),
        ),
      ),
    );
  }
}
