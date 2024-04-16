import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class SmallCustomButton extends StatelessWidget {
  final String name;
  final String? color;
    final VoidCallback onpressed;
  final String? nameColor;
  const SmallCustomButton(
      {super.key, required this.name, this.color, this.nameColor, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onpressed,
      child: Container(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 5.h, bottom: 5.h),
        decoration: BoxDecoration(
            color: HexColor(color ?? "#772077"),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          name,
          overflow: TextOverflow.ellipsis,
          style: FontPalette.black_14_600.copyWith(
              color: nameColor == null ? Colors.white : HexColor(nameColor!)),
        ),
      ),
    );
  }
}
