import 'package:flutter/material.dart';

class ServiceTypeProvider extends ChangeNotifier {
  bool careChecking = false;
  bool cookChecking = false;
  bool cleanChecking = false;

  String clr1 = "#616068";
  String clr2 = "#616068";
  String clr3 = "#616068";

  carefun() {
    if (clr1 == "#616068") {
      clr1 = "#1800B5";
    } else {
      clr1 = "#616068";
    }
    notifyListeners();
  }

  cookfun() {
    if (clr2 == "#616068") {
      clr2 = "##1800B5";
    } else {
      clr2 = "#616068";
    }
    notifyListeners();
  }

  cleanfun() {
    if (clr3 == "#616068") {
      clr3 = "##1800B5";
    } else {
      clr3 = "#616068";
    }
    notifyListeners();
  }
}
