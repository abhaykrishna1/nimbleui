import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EEEEF2"),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          Constants.settings,
          style: FontPalette.black_18_600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "App permission",
                    style: FontPalette.black_16_600,
                  ),
                  14.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notification",
                        style: FontPalette.black_14_400,
                      ),
                      Transform.scale(
                        scale: 0.9,
                        child: Switch(
                          value: true,
                          onChanged: (va) {},
                          activeTrackColor: HexColor("#27B67C"),
                          activeColor: Colors.white,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                      )
                    ],
                  ),
                  16.verticalSpace,
                  Text(
                    "Legal",
                    style: FontPalette.black_16_600,
                  ),
                  14.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Terms and conditions",
                        style: FontPalette.black_14_400,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                      )
                    ],
                  ),
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Privacy policy",
                        style: FontPalette.black_14_400,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                      )
                    ],
                  )
                ],
              ),
            ),
            12.verticalSpace,
            Container(
              padding: EdgeInsets.only(
                  left: 16.w, bottom: 20.h, top: 20.h, right: 16.w),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Text(
                "Delete account",
                style: FontPalette.black_16_600
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
