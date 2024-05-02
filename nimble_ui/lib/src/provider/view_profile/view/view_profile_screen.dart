import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class ViewProfileScreen extends StatelessWidget {
  const ViewProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: FontPalette.black_18_600,
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 313.h,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              transform: Matrix4.translationValues(0, -32, 0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32.r),
                    topRight: Radius.circular(32.r),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ann Robinson",
                    style: FontPalette.black_18_600
                        .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w700),
                  ),
                  4.verticalSpace,
                  Row(
                    children: [
                      Text(
                        "Talks:",
                        style: FontPalette.black_14_400
                            .copyWith(color: HexColor("#616068")),
                      ),
                      7.horizontalSpace,
                      Text(
                        "English,Malayalam",
                        style: FontPalette.black_14_400
                            .copyWith(color: HexColor("#616068")),
                      )
                    ],
                  ),
                  10.verticalSpace,
                  Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(Assets.locationsvg),
                      ),
                      8.horizontalSpace,
                      Text(
                        "5 Km Away",
                        style: FontPalette.black_14_600,
                      )
                    ],
                  ),
                  20.verticalSpace,
                  Text(
                    "About me",
                    style: FontPalette.black_16_600,
                  ),
                  14.verticalSpace,
                  abouts("Kenparkar@gmail.com", Assets.emailRed),
                  10.verticalSpace,
                  abouts(
                      "Mount Plasent, UT North, 876358", Assets.locationborder),
                  16.verticalSpace,
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("#F2F0FF")),
                    child: Text(
                      "Hi there! I'm Ken, a dedicated and compassionate home nurse with a passion for providing personalized care. With years of experience in nursing, I bring a warm and empathetic approach to every home I visit.",
                      style: FontPalette.black_14_400,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget abouts(String iconcontent, String icon) {
    return Row(
      children: [
        SizedBox(
          height: 18.h,
          width: 18.w,
          child: SvgPicture.asset(
            icon,
            color: Colors.black,
          ),
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
