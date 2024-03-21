part of 'counter_bloc.dart';

class CounterState extends Equatable {
  const CounterState({required this.value});

  factory CounterState.fromMap(Map<String, dynamic> map) => CounterState(
        value: map['value'] as int,
      );

  final int value;

  @override
  List<Object> get props => [value];

  CounterState copyWith({
    int? value,
  }) =>
      CounterState(
        value: value ?? this.value,
      );

  Map<String, dynamic> toMap() => {
        'value': value,
      };
}
