import 'package:flutter/material.dart';
import 'package:flutter_architecture/entity/counter.dart';
import 'package:flutter_architecture/repository/counter_repository.dart';

class MyHomeViewModel extends ChangeNotifier {
  final counterRepository = CounterRepository();
  Counter counter = Counter();

  Future<void> loadCounter() async {
    counter = await counterRepository.loadCounter();
    notifyListeners();
  }

  void incrementCounter() {
    counter.count++;
    counterRepository.saveCounter(counter);
    notifyListeners();
  }

  void resetCounter() {
    counter.count = 0;
    counterRepository.saveCounter(counter);
    notifyListeners();
  }
}
