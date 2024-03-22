import 'package:flutter/material.dart';
import 'package:theme_bloc/app.dart';
import 'package:theme_manager/theme_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initThemeStorage();

  runApp(const MyApp());
}
