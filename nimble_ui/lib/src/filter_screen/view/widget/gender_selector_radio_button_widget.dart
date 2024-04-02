import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class RadioButtonWidget extends StatefulWidget {
  final int value;
  final String title;
  const RadioButtonWidget(
      {super.key, required this.value, required this.title});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio(
            value: widget.value,
            groupValue: selectedValue,
            onChanged: (val) {
              print(val);
              setState(() {
                selectedValue = val!;
              });
            }),
        0.horizontalSpace,
        Text(
          widget.title,
          style: FontPalette.black_14_400,
        )
      ],
    );
  }
}
