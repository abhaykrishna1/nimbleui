import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/auth/view_model/welcome_screen_view_model.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:provider/provider.dart';

class ServiceSelectorWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback onpressed;
  final int itemIndex;
  const ServiceSelectorWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onpressed,
      required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Selector<WelcomeScreenProvider, int>(
        selector: (p0, p1) => p1.clickValue,
        builder: (context, value, __) {
          return GestureDetector(
            onTap: onpressed,
            child: Container(
              padding: const EdgeInsets.all(16),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: HexColor("#EEEEF2"),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          subTitle,
                          style: TextStyle(
                              fontSize: 13.sp, fontWeight: FontWeight.w400),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  Transform.scale(
                    scale: 1.2,
                    child: Checkbox(
                      checkColor: Colors.white,
                      value: value == itemIndex,
                      shape: const CircleBorder(),
                      onChanged: (bool? value) {
                        onpressed;
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
