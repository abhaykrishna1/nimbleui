// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

// ignore: must_be_immutable
class ExpertiseScreen extends StatefulWidget {
  final PageController controller;
  const ExpertiseScreen({super.key, required this.controller});

  @override
  State<ExpertiseScreen> createState() => _ExpertiseScreenState();
}

class _ExpertiseScreenState extends State<ExpertiseScreen> {
  List tags = [
    "Arabic",
    "Indian",
    "Vegetarian",
    "North indian",
    "Breakfast",
    "Dessert",
    "Chinese",
    "South indian"
  ];

  List selectedtags = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 15, bottom: 35),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.verticalSpace,
                    Text(
                      Constants.yourExpertise,
                      style: FontPalette.black_24_600,
                    ),
                    8.verticalSpace,
                    Text(
                      Constants.yourExpertiseshort,
                      style: FontPalette.black_14_400,
                    ),
                    24.verticalSpace,
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                Assets.skillet1,
                                color: Colors.black,
                                height: 17.h,
                                width: 21.3.w,
                              ),
                              8.horizontalSpace,
                              Text(
                                Constants.cook,
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                          5.verticalSpace,
                          Wrap(
                            children: [
                              for (var item in tags)
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10.0, top: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (selectedtags.contains(item)) {
                                          selectedtags.remove(item);
                                        } else {
                                          selectedtags.add(item);
                                        }
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 17.w, right: 17.w),
                                      height: 36.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: selectedtags.contains(item)
                                              ? HexColor("#F0EEFD")
                                              : HexColor("#EEEEF2")),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            item,
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    selectedtags.contains(item)
                                                        ? HexColor("#1800B5")
                                                        : Colors.black),
                                          ),
                                          7.horizontalSpace,
                                          Icon(
                                              selectedtags.contains(item)
                                                  ? Icons.done
                                                  : Icons.add,
                                              size: 15.h,
                                              color: selectedtags.contains(item)
                                                  ? HexColor("#1800B5")
                                                  : Colors.black)
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                          SizedBox(
                            height: 30.h,
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
          CustomButton(
              title: Constants.next,
              onpressed: () {
                widget.controller.animateToPage(3,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.linear);
              }),
        ],
      ),
    );
  }
}
