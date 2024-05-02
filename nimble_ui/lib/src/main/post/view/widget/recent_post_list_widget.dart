import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/src/main/post/view/widget/edit_remove_dialog_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

import '../../../../../generate/assets.dart';

class RecentPostListWidget extends StatelessWidget {
  const RecentPostListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cooking & Cleaning",
                style: FontPalette.black_16_600,
              ),
              InkWell(
                onTap: () {
                  showGeneralDialog(
                    barrierLabel: "Label",
                    barrierDismissible: true,
                    barrierColor: Colors.black.withOpacity(0.5),
                    transitionDuration: const Duration(milliseconds: 300),
                    context: context,
                    pageBuilder: (context, anim1, anim2) {
                      return const EditRemoveDialogWidget();
                    },
                    transitionBuilder: (context, anim1, anim2, child) {
                      return SlideTransition(
                        position: Tween(
                                begin: const Offset(1, 0),
                                end: const Offset(0, 0))
                            .animate(anim1),
                        child: child,
                      );
                    },
                  );
                },
                child: SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: SvgPicture.asset(Assets.more),
                ),
              )
            ],
          ),
          10.verticalSpace,
          Text(
            "Hello! We're looking for a delightful combination of services for Monday, December 18th.",
            style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: HexColor("#616068")),
          ),
          12.verticalSpace,
          Row(
            children: [
              SizedBox(
                height: 15.h,
                width: 15.w,
                child: SvgPicture.asset(
                  Assets.calendericon,
                  color: Colors.black,
                ),
              ),
              10.horizontalSpace,
              Text(
                "Monday, Dec 18 9.00 AM",
                style: FontPalette.black_14_400
                    .copyWith(fontWeight: FontWeight.w500),
              )
            ],
          ),
          10.verticalSpace,
          Row(
            children: [
              SizedBox(
                height: 15.h,
                width: 15.w,
                child: SvgPicture.asset(
                  Assets.locationsvg,
                  color: Colors.black,
                ),
              ),
              10.horizontalSpace,
              Text(
                "5 Km Away Toronto",
                style: FontPalette.black_14_400
                    .copyWith(fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
