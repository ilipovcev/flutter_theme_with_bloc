part of 'counter_bloc.dart';

class CounterState extends Equatable {
  const CounterState({required this.value});

  final int value;

  @override
  List<Object> get props => [value];

  CounterState copyWith({
    int? value,
  }) {
    return CounterState(
      value: value ?? this.value,
    );
  }
}
