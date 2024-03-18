import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/main/message_screen/tab_view/widget/small_border_text_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class AcceptedProfileListViewWidget extends StatelessWidget {
  const AcceptedProfileListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(10),
            child: Row(
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
                20.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Elizabath",
                        style: FontPalette.black_14_600,
                      ),
                      6.verticalSpace,
                      Text(
                        "Hi Maam! Hope you looking for nadan choru and menare looking for nadan choru and men...",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: HexColor("#616068")),
                      )
                    ],
                  ),
                ),
                30.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallBorderTextWidget(title: "Clean"),
                    15.verticalSpace,
                    Text(
                      "12.00 PM",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: HexColor("#616068")),
                    )
                  ],
                )
              ],
            ),
          );
  }
}