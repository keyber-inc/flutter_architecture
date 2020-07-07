import 'package:flutter_architecture/entity/counter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterRepository {
  final _prefs = SharedPreferences.getInstance();

  Future<Counter> loadCounter() async {
    final prefs = await _prefs;
    final count = prefs.getInt('counter') ?? 0;
    return Counter(count: count);
  }

  void saveCounter(Counter counter) async {
    final prefs = await _prefs;
    prefs.setInt('counter', counter.count);
  }
}
