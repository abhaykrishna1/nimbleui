import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/utils/color_palate.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback onpressed;
  const SkipButton({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onpressed,
      child: Container(
        alignment: Alignment.center,
        height: 31.h,
        width: 53.w,
        decoration: BoxDecoration(
            color: HexColor("#EEEEF2"),
            borderRadius: BorderRadius.circular(100)),
        child: Text(
          Constants.skip,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ),
    );
  }
}
