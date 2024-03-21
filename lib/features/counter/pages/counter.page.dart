import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/features/counter/controllers/counter_bloc.dart';
import 'package:theme_bloc/features/counter/widgets/counter_view.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: const CounterView(title: 'Theme with bloc demo'),
    );
  }
}
