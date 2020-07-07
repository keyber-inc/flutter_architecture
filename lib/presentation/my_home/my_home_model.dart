import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomeModel extends ChangeNotifier {
  final _prefs = SharedPreferences.getInstance();
  int counter = 0;

  MyHomeModel() {
    _loadCounter();
  }

  void _loadCounter() async {
    final prefs = await _prefs;
    counter = prefs.getInt('counter') ?? 0;
    notifyListeners();
  }

  void _saveCounter() async {
    final prefs = await _prefs;
    prefs.setInt('counter', counter);
    notifyListeners();
  }

  void incrementCounter() {
    counter++;
    _saveCounter();
  }

  void resetCounter() {
    counter = 0;
    _saveCounter();
  }
}
