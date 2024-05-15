import 'package:flutter/material.dart';
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
                  height: 43.h,
                  width: 43.w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
                        ),
                        fit: BoxFit.cover),
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
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("a week ago")],
              ),
            )
          ],
        ));
  }
}
