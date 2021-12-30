import 'package:flutter/material.dart';

class FirstNotifier with ChangeNotifier {
  double value = 0.0;
  void changeVal(double newValue) {
    value = newValue;

    notifyListeners();
  }

  double get getValue {
    return value;
  }

  double credit = 30000;
  double panti = 0.0;
  void subLimit() {
    panti = credit - value;
    notifyListeners();
  }

  double get subValue {
    return panti;
  }

  double get credValue {
    return credit;
  }
}
