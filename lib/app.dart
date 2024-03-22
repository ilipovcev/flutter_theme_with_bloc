import 'package:flutter/material.dart';
import 'package:theme_bloc/features/counter/pages/counter.page.dart';
import 'package:theme_manager/theme_manager.dart';

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
