import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class TypeWidget extends StatelessWidget {
  final String title;
  const TypeWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 34.h,
      width: 60.w,
      decoration: BoxDecoration(
        color: HexColor("#F0EEFD"),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        title,
        style: FontPalette.black_14_400.copyWith(color: HexColor("#1800B5")),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
