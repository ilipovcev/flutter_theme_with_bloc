import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:theme_bloc/core/utils/utils_functions.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(
          ThemeState(
            themeMode: ThemeMode.system,
            colorSeed: getRandomColor(),
          ),
        ) {
    on<ThemeEventChangeThemeMode>(
      (event, emit) => emit(
        state.copyWith(themeMode: event.themeMode),
      ),
    );

    on<ThemeEventChangeColorSeed>(
      (event, emit) => emit(
        state.copyWith(colorSeed: getRandomColor()),
      ),
    );
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) => ThemeState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(ThemeState state) => state.toMap();
}
