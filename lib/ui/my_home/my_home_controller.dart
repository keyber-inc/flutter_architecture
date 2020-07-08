import 'package:flutter/foundation.dart';
import 'package:flutter_architecture/entity/counter.dart';
import 'package:flutter_architecture/repository/counter_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'my_home_controller.freezed.dart';

@freezed
abstract class MyHomeState with _$MyHomeState {
  const factory MyHomeState({
    Counter counter,
  }) = _MyHomeState;
}

class MyHomeController extends StateNotifier<MyHomeState> with LocatorMixin {
  MyHomeController() : super(MyHomeState(counter: Counter())) {}

  CounterRepository get counterRepository => read<CounterRepository>();

  @override
  void initState() {
    _loadCounter();
  }

  Future<void> _loadCounter() async {
    state = state.copyWith(
      counter: await counterRepository.loadCounter(),
    );
  }

  Future<void> _saveCounter() async {
    counterRepository.saveCounter(state.counter);
  }

  Future<void> incrementCounter() async {
    state = state.copyWith(counter: Counter(count: state.counter.count + 1));
    await _saveCounter();
  }

  Future<void> resetCounter() async {
    state = state.copyWith(counter: Counter(count: 0));
    await _saveCounter();
  }
}
