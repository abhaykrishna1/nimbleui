import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/main/message_screen/tab_view/widget/small_border_text_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class ReceivedRequestListViewWidget extends StatelessWidget {
  const ReceivedRequestListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: double.maxFinite,
              color: HexColor("#F8F8F9"),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 56.h,
                        width: 56.w,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://s3-alpha-sig.figma.com/img/02fc/e6d5/eada0def258fb385a439b529a424c75a?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=j6ANjqpWGpFDLbOCfi7JX3UQddwxsBcSnxNoSWvSUpZEdURROOINA7anvZ1KmGtyNncdi0K7y~PE9iAaUVvYWNvJmuwGrt0MxiWkwMTbWdwse4oOKASDpuqaJUJ~GDGqAdV6nihv8-D10oX~fejNuadr54X1T31NL495kxBc3nKr5LVpjfbkAQszj1ScHoqtns8PXAvFTTapOsGiE7mjmWnuK689pKwtL0G8cY5eRc6i0Xbt432jkfPFyVwZJkKS2BcJdhL-cLkwRWhS5id4YnR23aJZrlboYv3URf4iiqa89c~nzmGIVnx4ZiumZdQmyGJTFtjQMJR3ukQbo6uIOg__")),
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                      10.horizontalSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ann Robinson",
                            style: FontPalette.black_14_600,
                          ),
                          8.verticalSpace,
                          Row(
                            children: [
                              const SmallBorderTextWidget(
                                title: "Clean",
                              ),
                              5.horizontalSpace,
                              const SmallBorderTextWidget(
                                title: "Clean",
                              )
                            ],
                          ),
                          10.verticalSpace,
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 66.w),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 19.h,
                          width: 19.w,
                          child: SvgPicture.asset(Assets.staricon),
                        ),
                        5.horizontalSpace,
                        Text(
                          "3.5",
                          style: FontPalette.black_14_600
                              .copyWith(color: Colors.green),
                        ),
                        10.horizontalSpace,
                        SizedBox(
                          height: 15.h,
                          width: 15.w,
                          child: SvgPicture.asset(Assets.locationsvg),
                        ),
                        5.horizontalSpace,
                        Expanded(
                          child: Text(
                            "5 Km Away",
                            style: FontPalette.black_14_600,
                          ),
                        ),
                        // 48.horizontalSpace,
                        Text(
                          "12 hours ago",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  )
                ],
              ));
  }
}
