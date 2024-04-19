import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class HeadingAndTextFormWidget extends StatelessWidget {
  final String heading;
  final String hintText;
  final TextEditingController? controller;
  const HeadingAndTextFormWidget(
      {super.key,
      required this.heading,
      required this.hintText,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.verticalSpace,
        Text(
          heading,
          style: FontPalette.black_14_400.copyWith(
              fontWeight: FontWeight.w500, color: HexColor("#C7C6CD")),
        ),
        10.verticalSpace,
        TextFormField(
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: Colors.black),
          controller: controller,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: HexColor("#C7C6CD")),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: HexColor("#C7C6CD")),
              ),
              border: const OutlineInputBorder(),
              hintText: hintText,
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: HexColor("#C7C6CD"))),
        )
      ],
    );
  }
}
