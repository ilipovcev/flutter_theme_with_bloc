import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/core/theme/controller/theme_bloc.dart';
import 'package:theme_bloc/features/counter/controllers/counter_bloc.dart';
import 'package:theme_bloc/features/counter/widgets/counter_control_buttons.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
          actions: [
            _BrightnessButton(
              handleBrightnessChange: (useLightMode) => context.read<ThemeBloc>().add(
                    ThemeEventChangeThemeMode(
                      themeMode: useLightMode ? ThemeMode.light : ThemeMode.dark,
                    ),
                  ),
            ),
            IconButton(
              icon: const Icon(Icons.color_lens_rounded),
              tooltip: 'Color pick',
              onPressed: () => context.read<ThemeBloc>().add(
                    const ThemeEventChangeColorSeed(),
                  ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) => Text(
                  '${state.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: const CounterControlButtons(),
      );
}

class _BrightnessButton extends StatelessWidget {
  const _BrightnessButton({
    required this.handleBrightnessChange,
  });

  final void Function(bool) handleBrightnessChange;

  @override
  Widget build(BuildContext context) {
    final isBright = Theme.of(context).brightness == Brightness.light;
    return Tooltip(
      preferBelow: true,
      message: 'Toggle brightness',
      child: IconButton(
        icon: isBright ? const Icon(Icons.dark_mode_outlined) : const Icon(Icons.light_mode_outlined),
        onPressed: () => handleBrightnessChange(!isBright),
      ),
    );
  }
}
