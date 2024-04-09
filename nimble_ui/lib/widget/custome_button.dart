import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/utils/color_palate.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onpressed;
  final String? color;
  final String? textColor;
  const CustomButton(
      {super.key,
      required this.title,
      required this.onpressed,
      this.color,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      borderRadius: BorderRadius.circular(80),
      child: Ink(
        child: Container(
          padding:
              EdgeInsets.only(left: 30.w, right: 30.w, top: 16.h, bottom: 16.h),
          decoration: BoxDecoration(
              color: HexColor(color ?? "#772077"),
              borderRadius: BorderRadius.circular(80)),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: textColor == null ? Colors.white : HexColor(textColor!)),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
