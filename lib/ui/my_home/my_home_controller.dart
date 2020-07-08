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

  final _counterRepository = CounterRepository();

  @override
  void initState() {
    _loadCounter();
  }

  Future<void> _loadCounter() async {
    state = state.copyWith(
      counter: await _counterRepository.loadCounter(),
    );
  }

  void incrementCounter() {
    state = state.copyWith(counter: Counter(count: state.counter.count + 1));
  }

  void resetCounter() {
    state = state.copyWith(counter: Counter(count: 0));
  }
}
