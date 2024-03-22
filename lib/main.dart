import 'package:flutter/material.dart';
import 'package:synaptik_theme_manager/synaptik_theme_manager.dart';
import 'package:theme_bloc/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initThemeStorage();

  runApp(const MyApp());
}
