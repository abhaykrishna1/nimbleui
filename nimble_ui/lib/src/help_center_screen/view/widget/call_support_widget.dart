import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class CallSupportWidget extends StatelessWidget {
  const CallSupportWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 19.h, left: 16.w, right: 16.w, bottom: 19.h),
      // height: 200,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Call Support",
            style: FontPalette.black_16_600,
          ),
          4.verticalSpace,
          const Divider(),
          6.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 20.h,
                    width: 20.w,
                    child: SvgPicture.asset(Assets.whatsappicon),
                  ),
                  10.horizontalSpace,
                  Text(
                    "+974 332-29569",
                    style: FontPalette.black_14_600,
                  )
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              )
            ],
          ),
          16.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 20.h,
                    width: 20.w,
                    child: SvgPicture.asset(Assets.callicon),
                  ),
                  10.horizontalSpace,
                  Text(
                    "+974 332-29569",
                    style: FontPalette.black_14_600,
                  )
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
