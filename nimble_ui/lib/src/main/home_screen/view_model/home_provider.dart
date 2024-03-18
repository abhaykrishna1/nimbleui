import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  bool listAndGridBool = false;

  onClick(bool val) {
    listAndGridBool = val;
    notifyListeners();
  }
}
