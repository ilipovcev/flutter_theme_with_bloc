import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/core/theme/controller/theme_bloc.dart';
import 'package:theme_bloc/features/counter/pages/counter.page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => ThemeBloc(),
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) => MaterialApp(
            title: 'Flutter Demo',
            theme: state.lightTheme,
            darkTheme: state.darkTheme,
            themeMode: state.themeMode,
            home: const CounterPage(),
          ),
        ),
      );
}
