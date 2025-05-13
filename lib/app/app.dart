import 'package:flutter/material.dart';
import 'package:image_grid_viewer_test/presentation/screens/image_grid_screen/image_grid_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ImageGridScreen(),
    );
  }
}
