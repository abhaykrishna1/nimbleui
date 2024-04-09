import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/utils/color_palate.dart';

class TypeWidgett extends StatelessWidget {
  final String title;
  const TypeWidgett({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 5.h, bottom: 5.h),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: HexColor("#F0EEFD"), borderRadius: BorderRadius.circular(16)),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: HexColor("#1800B5")),
      ),
    );
  }
}
