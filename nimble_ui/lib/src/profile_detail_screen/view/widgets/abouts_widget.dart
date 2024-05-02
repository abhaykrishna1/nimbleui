import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class AboutsWidget extends StatelessWidget {
  const AboutsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Constants.aboutme,
          style: FontPalette.black_14_600.copyWith(fontSize: 16.sp),
        ),
        7.verticalSpace,
        abouts("robinson@gmail.com", Assets.emailicon),
        6.verticalSpace,
        abouts("Mount Plasent, UT North, 876358", Assets.locationborder),
        6.verticalSpace,
        abouts("4 yrs exp.", Assets.workExperienceicon),
      ],
    );
  }

  Widget abouts(String iconcontent, String icon) {
    return Row(
      children: [
        SizedBox(
          height: 18.h,
          width: 18.w,
          child: SvgPicture.asset(icon),
        ),
        10.horizontalSpace,
        Expanded(
          child: Text(
            iconcontent,
            style: FontPalette.black_14_400,
          ),
        )
      ],
    );
  }
}
