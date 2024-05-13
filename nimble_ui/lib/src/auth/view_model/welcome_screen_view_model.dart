import 'package:flutter/material.dart';

class WelcomeScreenProvider extends ChangeNotifier {
  int clickValue = 0;



  selectTypeFunction(int val) {
    clickValue = val;

    notifyListeners();
  }
}
