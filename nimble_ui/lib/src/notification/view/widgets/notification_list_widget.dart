import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class NotificatioListWidget extends StatelessWidget {
  const NotificatioListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        //   color: HexColor("#F8F8F9"),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 48.h,
                  width: 48.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://s3-alpha-sig.figma.com/img/02fc/e6d5/eada0def258fb385a439b529a424c75a?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=j6ANjqpWGpFDLbOCfi7JX3UQddwxsBcSnxNoSWvSUpZEdURROOINA7anvZ1KmGtyNncdi0K7y~PE9iAaUVvYWNvJmuwGrt0MxiWkwMTbWdwse4oOKASDpuqaJUJ~GDGqAdV6nihv8-D10oX~fejNuadr54X1T31NL495kxBc3nKr5LVpjfbkAQszj1ScHoqtns8PXAvFTTapOsGiE7mjmWnuK689pKwtL0G8cY5eRc6i0Xbt432jkfPFyVwZJkKS2BcJdhL-cLkwRWhS5id4YnR23aJZrlboYv3URf4iiqa89c~nzmGIVnx4ZiumZdQmyGJTFtjQMJR3ukQbo6uIOg__")),
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
                10.horizontalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(TextSpan(
                          text: 'Ann Robinson ',
                          style: FontPalette.black_14_600,
                          children: <InlineSpan>[
                            TextSpan(
                                text: 'has accepted the request for cleaning',
                                style: FontPalette.black_14_400)
                          ])),
                      8.verticalSpace,
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 66.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("Yesterday")],
              ),
            )
          ],
        ));
  }
}
