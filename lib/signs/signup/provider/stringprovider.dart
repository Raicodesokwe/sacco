import 'package:flutter/material.dart';

class StringProvider with ChangeNotifier {
  String value = '';
  void changeVal(String newValue) {
    value = newValue;

    notifyListeners();
  }

  String get getValue {
    return value;
  }
}
