import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theme_bloc/core/utils/utils_functions.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(
          themeMode: ThemeMode.system,
          colorSeed: getRandomColor(),
        )) {
    on<ThemeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
