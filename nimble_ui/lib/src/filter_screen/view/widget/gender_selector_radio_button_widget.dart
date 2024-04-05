import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/filter_screen/view_model/filter_provider.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:provider/provider.dart';

class RadioButtonWidget extends StatefulWidget {
  final int value;
  final String title;
  const RadioButtonWidget(
      {super.key, required this.value, required this.title});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  int selectedValue = 3;

  @override
  Widget build(BuildContext context) {
    return Consumer<FilterProvider>(builder: (context, data, _) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio(
              value: widget.value,
              groupValue: data.selectedValue,
              onChanged: (val) {
                print(val);
                context.read<FilterProvider>().valuechangeSelected(val!);
              }),
          0.horizontalSpace,
          Text(
            widget.title,
            style: FontPalette.black_14_400,
          )
        ],
      );
    });
  }
}
