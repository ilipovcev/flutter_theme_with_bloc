import 'package:flutter/material.dart';
import 'package:synaptik_theme_manager/synaptik_theme_manager.dart';
import 'package:theme_bloc/features/counter/pages/counter.page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ThemeWrapperWidget(
        builder: (context, state) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state.lightTheme,
          darkTheme: state.darkTheme,
          themeMode: state.themeMode,
          home: const CounterPage(),
        ),
      );
}
