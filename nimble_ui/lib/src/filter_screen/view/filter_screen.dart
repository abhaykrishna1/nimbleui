// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/filter_screen/view/widget/gender_selector_radio_button_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/custom_slider_theme_data/custom_round_range_slider_thumb_shape.dart';
import 'package:nimple_ui/utils/custom_slider_theme_data/custom_round_slider_thumb_shape.dart';
import 'package:nimple_ui/utils/custom_slider_theme_data/custom_rounded_rect_range_slider_track_shape.dart';
import 'package:nimple_ui/utils/custom_slider_theme_data/custom_rounded_rect_slider_track_shape.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double start = 10.0;
  double end = 50.0;
  int age = 10;
  int selectedValue = 1;

  List languageList = [
    "English",
    "Spanish",
    "French",
    "German",
    "Malayalam",
    "Hindi",
  ];
  List categorieslist = [
    "Baby care",
    "Elderly care",
    "tag1",
    "tag 2",
  ];
  List genderlist = [
    "All",
    "Male",
    "Female",
    "Others",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            Constants.filter,
            style: FontPalette.black_18_600,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Constants.pricerange,
                            style: FontPalette.black_16_600,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: HexColor("#F0F0F0")),
                            child: Text(
                              "20 - 200 \$",
                              style: FontPalette.black_14_600,
                            ),
                          )
                        ],
                      ),
                      10.verticalSpace,
                      SliderTheme(
                        data: SliderThemeData(
                            trackHeight: 3,
                            rangeTrackShape:
                                const CustomRoundedRectRangeSliderTrackShape(
                                    activeTrackHeight: 1),
                            rangeThumbShape: CustomRoundRangeSliderThumbShape(
                                enabledThumbRadius: 16.5.r,
                                strokeGap: .5,
                                strokeColor: HexColor("#E5E5E5"),
                                strokeWidth: 1),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 10.0),
                            activeTrackColor: Colors.black,
                            thumbColor:
                                const Color.fromARGB(255, 241, 241, 241)),
                        child: RangeSlider(
                          values: RangeValues(start, end),
                          labels: RangeLabels(start.toString(), end.toString()),
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              start = value.start;
                              end = value.end;
                            });
                          },
                          min: 0.0,
                          max: 100.0,
                        ),
                      ),
                      15.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Constants.distancewithin,
                            style: FontPalette.black_16_600,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: HexColor("#F0F0F0")),
                            child: Text(
                              "10 Km",
                              style: FontPalette.black_14_600,
                            ),
                          )
                        ],
                      ),
                      10.verticalSpace,
                      SliderTheme(
                        data: SliderThemeData(
                            thumbShape: CustomRoundSliderThumbShape(
                                enabledThumbRadius: 16.5.r,
                                strokeGap: .5,
                                strokeColor: HexColor("#E5E5E5"),
                                strokeWidth: 1),
                            trackHeight: 3,
                            trackShape:
                                const CustomRoundedRectSliderTrackShape(),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 10.0),
                            activeTrackColor: Colors.black,
                            thumbColor:
                                const Color.fromARGB(255, 241, 241, 241)),
                        child: Slider(
                          label: "Select Age",
                          value: age.toDouble(),
                          onChanged: (value) {
                            setState(() {
                              age = value.toInt();
                            });
                          },
                          min: 5,
                          max: 100,
                        ),
                      ),
                      15.verticalSpace,
                      Text(
                        Constants.rating,
                        style: FontPalette.black_16_600,
                      ),
                      10.verticalSpace,
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: HexColor("#EEEEF2")),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "2",
                                  style: FontPalette.black_14_400,
                                ),
                                4.horizontalSpace,
                                SizedBox(
                                    height: 11.h,
                                    width: 11.w,
                                    child: SvgPicture.asset(
                                      Assets.staricon,
                                      color: Colors.black,
                                    )),
                                4.horizontalSpace,
                                Text(
                                  "& above",
                                  style: FontPalette.black_14_400,
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: HexColor("#EEEEF2")),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "2",
                                  style: FontPalette.black_14_400,
                                ),
                                4.horizontalSpace,
                                SizedBox(
                                    height: 11.h,
                                    width: 11.w,
                                    child: SvgPicture.asset(
                                      Assets.staricon,
                                      color: Colors.black,
                                    )),
                                4.horizontalSpace,
                                Text(
                                  "& above",
                                  style: FontPalette.black_14_400,
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: HexColor("#EEEEF2")),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "2",
                                  style: FontPalette.black_14_400,
                                ),
                                4.horizontalSpace,
                                SizedBox(
                                    height: 11.h,
                                    width: 11.w,
                                    child: SvgPicture.asset(
                                      Assets.staricon,
                                      color: Colors.black,
                                    )),
                                4.horizontalSpace,
                                Text(
                                  "& above",
                                  overflow: TextOverflow.ellipsis,
                                  style: FontPalette.black_14_400,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      15.verticalSpace,
                      const Divider(),
                      15.verticalSpace,
                      Text(
                        Constants.gender,
                        style: FontPalette.black_16_600,
                      ),
                      10.verticalSpace,
                      const Wrap(
                        children: [
                          RadioButtonWidget(
                            value: 1,
                            title: "All",
                          ),
                          RadioButtonWidget(
                            value: 2,
                            title: "Male",
                          ),
                          RadioButtonWidget(
                            value: 3,
                            title: "Female",
                          ),
                          RadioButtonWidget(
                            value: 4,
                            title: "Others",
                          )
                        ],
                      ),
                      15.verticalSpace,
                      const Divider(),
                      15.verticalSpace,
                      Text(
                        Constants.language,
                        style: FontPalette.black_16_600,
                      ),
                      10.verticalSpace,
                      Wrap(
                        children: [
                          for (var item in languageList)
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 10),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding:
                                      EdgeInsets.only(left: 17.w, right: 17.w),
                                  height: 36.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: HexColor("#EEEEF2")),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        item,
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                      7.horizontalSpace,
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ],
                      ),
                      10.verticalSpace,
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RouteGenerator.routeFilterSelectionScreen,
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              "+5 More",
                              style: FontPalette.black_14_600,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_outlined,
                              size: 14,
                            )
                          ],
                        ),
                      ),
                      15.verticalSpace,
                      Text(
                        Constants.categories,
                        style: FontPalette.black_16_600,
                      ),
                      10.verticalSpace,
                      Wrap(
                        children: [
                          for (var item in categorieslist)
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, top: 10),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding:
                                      EdgeInsets.only(left: 17.w, right: 17.w),
                                  height: 36.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: HexColor("#EEEEF2")),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        item,
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                      7.horizontalSpace,
                                    ],
                                  ),
                                ),
                              ),
                            )
                        ],
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          Text(
                            "+2 More",
                            style: FontPalette.black_14_600,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 14,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // height: 200,
              //  padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
              width: double.maxFinite,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Divider(
                    height: 1,
                  ),
                  10.verticalSpace,
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 18, right: 18, bottom: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CustomButton(
                              textColor: "#1F1E24",
                              color: "#EEEEF2",
                              title: "Clear All",
                              onpressed: () {
                                debugPrint("object");
                              }),
                        ),
                        10.horizontalSpace,
                        Expanded(
                          child: CustomButton(
                              title: "Apply",
                              onpressed: () {
                                debugPrint("object");
                              }),
                        ),
                      ],
                    ),
                  ),
                  //  2.verticalSpace
                ],
              ),
            )
          ],
        ));
  }
}
