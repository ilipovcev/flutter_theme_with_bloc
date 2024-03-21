part of 'counter_bloc.dart';

sealed class CounterEvent {
  const CounterEvent();
}

class Increment extends CounterEvent {
  const Increment();
}

class Decrement extends CounterEvent {
  const Decrement();
}

class Clear extends CounterEvent {
  const Clear();
}