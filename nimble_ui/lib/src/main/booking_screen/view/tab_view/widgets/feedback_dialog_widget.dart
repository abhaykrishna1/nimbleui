import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class FeedBackDialogWidget extends StatefulWidget {
  const FeedBackDialogWidget({super.key});

  @override
  State<FeedBackDialogWidget> createState() => _ClickHereWidgetState();
}

class _ClickHereWidgetState extends State<FeedBackDialogWidget> {
  int selectedOption = 1;
  List tags = [
    "TastyTreat",
    "Eatwell",
    "Yummy",
    "Delicious",
    "Flavorful",
    "FoodJoy",
    "Tastybites",
    "Hashtag"
  ];

  List selectedtags = [];
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: IntrinsicHeight(
          child: Material(
            color: Colors.transparent,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(
                        20.r,
                      ))),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 5.h,
                      width: 77.w,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Align(
                          //   alignment: Alignment.topCenter,
                          //   child: Container(
                          //     margin: const EdgeInsets.all(10),
                          //     height: 5.h,
                          //     width: 77.w,
                          //     decoration: BoxDecoration(
                          //         color: Colors.black,
                          //         borderRadius: BorderRadius.circular(10)),
                          //   ),
                          // ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16, right: 16.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    Constants.feedback,
                                    style: FontPalette.black_18_600,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Close",
                                    style: FontPalette.black_14_600
                                        .copyWith(color: HexColor("#772077")),
                                  ),
                                )
                              ],
                            ),
                          ),
                          5.verticalSpace,
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(20),
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: HexColor("#EEEEF2")),
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'How was your service experience?',
                                        style: FontPalette.black_16_600,
                                      ),
                                      4.verticalSpace,
                                      Text(
                                        "Rate your experience",
                                        style: FontPalette.black_14_400,
                                      ),
                                      10.verticalSpace,
                                      const Divider(),
                                      10.verticalSpace,
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 4,
                                            bottom: 4,
                                            right: 10.w,
                                            left: 10.w),
                                        decoration: BoxDecoration(
                                            color: HexColor("#39BF78"),
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: Text(
                                          "Excellent",
                                          style: FontPalette.black_14_600
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                      7.verticalSpace,
                                      Row(
                                        children: [
                                          SizedBox(
                                            height: 45.h,
                                            width: 45.w,
                                            child: SvgPicture.asset(
                                                Assets.emogiSmile),
                                          ),
                                          10.horizontalSpace,
                                          RatingBar.builder(
                                            initialRating: 4,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            itemCount: 5,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 4.0),
                                            itemSize: 20.h,
                                            itemBuilder: (context, _) =>
                                                SizedBox(
                                                    height: 15.h,
                                                    width: 15.w,
                                                    child: SvgPicture.asset(
                                                      Assets.staricon,
                                                      color:
                                                          HexColor("#FFC80D"),
                                                    )),
                                            onRatingUpdate: (rating) {},
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                10.verticalSpace,
                                Text("What you think about the service?",
                                    style: FontPalette.black_16_600),
                                4.verticalSpace,
                                Text(
                                  "Express yourself with tags!",
                                  style: FontPalette.black_14_400,
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
                                                left: 13.w,
                                                right: 13.w,
                                                top: 9,
                                                bottom: 9),
                                            //  height: 36.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                color:
                                                    selectedtags.contains(item)
                                                        ? HexColor("#F0EEFD")
                                                        : HexColor("#EEEEF2")),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  item,
                                                  style: TextStyle(
                                                      fontSize: 13.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: selectedtags
                                                              .contains(item)
                                                          ? HexColor("#1800B5")
                                                          : Colors.black),
                                                ),
                                                6.horizontalSpace,
                                                Icon(
                                                    selectedtags.contains(item)
                                                        ? Icons.done
                                                        : Icons.add,
                                                    size: 15.h,
                                                    color: selectedtags
                                                            .contains(item)
                                                        ? HexColor("#1800B5")
                                                        : Colors.black)
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                  ],
                                ),
                                17.verticalSpace,
                                Row(
                                  children: [
                                    Text(
                                      "Care to share more?",
                                      style: FontPalette.black_16_600,
                                    ),
                                    Text(
                                      "(Optional)",
                                      style: FontPalette.black_14_400
                                          .copyWith(color: HexColor("#616068")),
                                    )
                                  ],
                                ),
                                10.verticalSpace,
                                Container(
                                  height: 150.h,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                      border: Border.all(
                                          color: HexColor("#EEEEF2"))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            maxLines: 10,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText:
                                                  'Type your feedbacks...',
                                            ),
                                          ),
                                        ),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: SizedBox(
                                              height: 22.h,
                                              width: 22.w,
                                              child: SvgPicture.asset(
                                                  Assets.twoline),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                10.verticalSpace,
                                Text("Upload Images",
                                    style: FontPalette.black_16_600),
                                10.verticalSpace,
                                DottedBorder(
                                  strokeWidth: 1,
                                  borderType: BorderType.RRect,
                                  radius: const Radius.circular(12),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                    child: Container(
                                      height: 100.h,
                                      width: 110.w,
                                      color: HexColor("#EEEEF2"),
                                      child: Icon(
                                        Icons.add,
                                        size: 30.r,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
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
                          padding: EdgeInsets.only(
                              left: 18.w, right: 18.w, bottom: 18.h),
                          child: SizedBox(
                            width: double.maxFinite,
                            child: CustomButton(
                                textColor: "#FFFFFF",
                                color: "#772077",
                                title: "Submit",
                                onpressed: () {
                                  debugPrint("object");
                                }),
                          ),
                        ),
                        //  2.verticalSpace
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class ResonsWidget extends StatefulWidget {
  final int valueIndex;
  final String title;
  const ResonsWidget(
      {super.key, required this.valueIndex, required this.title});

  @override
  State<ResonsWidget> createState() => _ResonsWidgetState();
}

class _ResonsWidgetState extends State<ResonsWidget> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<int>(
          activeColor: Colors.black,
          splashRadius: 1,
          value: widget.valueIndex,
          groupValue: selectedOption,
          onChanged: (value) {
            setState(() {
              selectedOption = value!;
            });
          },
        ),
        Expanded(
          child: Text(
            widget.title,
            style: FontPalette.black_14_400,
          ),
        ),
      ],
    );
  }
}
