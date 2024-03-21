part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  const ThemeState({
    required this.themeMode,
    required this.colorSeed,
  });

  final ThemeMode themeMode;
  final Color colorSeed;

  ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorSeed,
      );

  ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorSeed,
        brightness: Brightness.dark,
      );

  @override
  List<Object?> get props => [
        themeMode,
        colorSeed,
      ];

  ThemeState copyWith({
    ThemeMode? themeMode,
    Color? colorSeed,
  }) {
    return ThemeState(
      themeMode: themeMode ?? this.themeMode,
      colorSeed: colorSeed ?? this.colorSeed,
    );
  }
}
