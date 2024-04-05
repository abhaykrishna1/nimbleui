import 'package:flutter/material.dart';

class FilterProvider extends ChangeNotifier{
  int selectedValue = 1;

  valuechangeSelected(int value){
    selectedValue = value;
    notifyListeners();
  }
}