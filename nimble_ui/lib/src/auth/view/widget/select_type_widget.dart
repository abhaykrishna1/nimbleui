// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/utils/color_palate.dart';

class SelectTypeWidget extends StatelessWidget {
  final String icon;
  final String title;

  final String colorr;

  const SelectTypeWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.colorr});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 65.h,
        width: 109.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: HexColor("#EEEEF2"),
            borderRadius: BorderRadius.circular(16),
            border: colorr != "#616068"
                ? Border.all(width: 2, color: HexColor(colorr))
                : null),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: 16.h,
              width: 13.w,
              color: HexColor(colorr),
            ),
            3.verticalSpace,
            Text(
              title,
              style: TextStyle(
                  color: HexColor(colorr),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600),
            )
          ],
        ));
  }
}
