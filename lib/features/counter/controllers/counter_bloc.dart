import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(value: 0)) {
    on<Increment>(
      (event, emit) => _changeValue(state.value + 1, emit: emit),
    );
    on<Decrement>(
      (event, emit) => _changeValue(state.value - 1, emit: emit),
    );
  }

  void _changeValue(int value, {required Emitter<CounterState> emit}) =>
      emit(state.copyWith(value: value));
}
