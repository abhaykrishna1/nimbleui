import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/utils/color_palate.dart';

class SmallBorderTextWidget extends StatelessWidget {
  final String title;
  const SmallBorderTextWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      alignment: Alignment.center,
      height: 23.h,
      decoration: BoxDecoration(
          color: HexColor("#F0EEFD"),
          border: Border.all(color: HexColor("#DDD8FF")),
          borderRadius: BorderRadius.circular(16)),
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
