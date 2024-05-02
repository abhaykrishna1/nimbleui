import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class MyAccountDialogWidget extends StatelessWidget {
  const MyAccountDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: IntrinsicHeight(
        child: Material(
            color: Colors.transparent,
            child: Container(
              // constraints: BoxConstraints(maxHeight: 400),
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.all(14),
                      height: 4.h,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 56.h,
                                width: 56.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                                        fit: BoxFit.cover))),
                            16.horizontalSpace,
                            Text("Service seeker",
                                style: FontPalette.black_16_600.copyWith(
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                        AnimatedContainer(
                            curve: Curves.easeIn,
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.all(5),
                            height: 24.h,
                            width: 24.w,
                            decoration: BoxDecoration(
                                color: HexColor("#772077"),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(Assets.doneIcon)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0.w, right: 16.w),
                    child: const Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 56.h,
                                width: 56.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                                        fit: BoxFit.cover))),
                            16.horizontalSpace,
                            Text("Service Provider",
                                style: FontPalette.black_16_600.copyWith(
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                        AnimatedContainer(
                            curve: Curves.easeIn,
                            duration: const Duration(milliseconds: 300),
                            padding: const EdgeInsets.all(5),
                            height: 24.h,
                            width: 24.w,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: SvgPicture.asset(Assets.doneIcon)),
                      ],
                    ),
                  ),
                  Container(
                    // height: 200,
                    //  padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
                    width: double.maxFinite,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Divider(
                          height: 0,
                        ),
                        10.verticalSpace,
                        //  2.verticalSpace
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 18),
                      child: Center(
                          child: Text(
                        "Cancel",
                        style: FontPalette.black_16_600,
                      )),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
