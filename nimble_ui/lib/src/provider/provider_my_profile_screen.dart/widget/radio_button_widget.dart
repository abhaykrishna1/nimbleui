import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class ProviderRadioButtonWidget extends StatelessWidget {
  final int value;
  final String title;
  ProviderRadioButtonWidget(
      {super.key, required this.value, required this.title});

  int selectedValue = 2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio(value: value, groupValue: selectedValue, onChanged: (val) {}),
        0.horizontalSpace,
        Text(
          title,
          style: FontPalette.black_14_400,
        )
      ],
    );
  }
}
