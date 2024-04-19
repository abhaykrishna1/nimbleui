import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class HeadingContainerWidget extends StatelessWidget {
  final String heading;
  final VoidCallback ontap;
  final String data;
  final bool showText;
  final String? icon;

  HeadingContainerWidget(
      {super.key,
      this.icon,
      required this.heading,
      required this.ontap,
      required this.showText,
      required this.data});

  List<String> listofText = [
    "Care",
    "Cook",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: FontPalette.black_14_400.copyWith(
              fontWeight: FontWeight.w500, color: HexColor("#C7C6CD")),
        ),
        10.verticalSpace,
        InkWell(
          onTap: ontap,
          child: Container(
            padding:
                EdgeInsets.only(left: 10.w, right: 10.w, bottom: 22, top: 17),
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: HexColor("#C7C6CD")),
            ),
            child: showText
                ? Row(
                    children: [
                      Expanded(
                        child: Wrap(
                          children: [
                            for (var item in listofText)
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10.0, top: 3),
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 10,
                                          top: 5,
                                          bottom: 5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: HexColor("#F0EEFD")),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            item,
                                            style: FontPalette.black_14_400
                                                .copyWith(
                                                    color: HexColor("#1800B5")),
                                          ),
                                          2.horizontalSpace,
                                          Icon(
                                            Icons.close,
                                            size: 20,
                                            color: HexColor("#1800B5"),
                                          )
                                        ],
                                      ),
                                    )),
                              )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(Assets.arrow_douwn),
                      )
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                            icon == null ? Assets.arrow_douwn : icon!),
                      )
                    ],
                  ),
          ),
        ),
      ],
    );
  }
}
