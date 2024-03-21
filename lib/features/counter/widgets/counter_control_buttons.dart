import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/core/theme/styles/constants.dart';
import 'package:theme_bloc/features/counter/controllers/counter_bloc.dart';

class CounterControlButtons extends StatelessWidget {
  const CounterControlButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<CounterBloc>().add(
                  const Increment(),
                ),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          heightSizedBox,
          FloatingActionButton(
            onPressed: () => context.read<CounterBloc>().add(
                  const Decrement(),
                ),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          heightSizedBox,
          FloatingActionButton(
            onPressed: () => context.read<CounterBloc>().add(
                  const Clear(),
                ),
            tooltip: 'Clear',
            child: const Icon(Icons.clear),
          ),
        ],
      );
}
