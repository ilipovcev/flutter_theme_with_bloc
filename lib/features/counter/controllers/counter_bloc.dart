import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends HydratedBloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(value: 0)) {
    on<Increment>(
      (event, emit) => _changeValue(state.value + 1, emit: emit),
    );
    on<Decrement>(
      (event, emit) => _changeValue(state.value - 1, emit: emit),
    );
    on<Clear>(
      (event, emit) => _changeValue(0, emit: emit),
    );
  }

  void _changeValue(int value, {required Emitter<CounterState> emit}) => emit(state.copyWith(value: value));

  @override
  CounterState? fromJson(Map<String, dynamic> json) => CounterState.fromMap(json);

  @override
  Map<String, dynamic>? toJson(CounterState state) => state.toMap();
}
