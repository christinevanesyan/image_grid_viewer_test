import 'package:flutter/material.dart';
import 'package:image_grid_viewer_test/app/app.dart';
import 'package:image_grid_viewer_test/core/di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await getIt.allReady();
  runApp(const App());
}
