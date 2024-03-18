import 'package:flutter/material.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          Constants.filter,
          style: FontPalette.black_18_600,
        ),
      ),
      body: const Center(
        child: Center(
          child: Text("Filter Screen"),
        ),
      ),
    );
  }
}
