import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class CustomDropDownButton extends StatefulWidget {
  final bool isVisible;
  final String? title;
  const CustomDropDownButton({
    super.key,
    required this.isVisible,
    this.title,
  });

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
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
  List serviceType = ["Care", "Clean", "Cook"];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showGeneralDialog(
          barrierLabel: "Label",
          barrierDismissible: true,
          barrierColor: Colors.black.withOpacity(0.5),
          transitionDuration: const Duration(milliseconds: 300),
          context: context,
          pageBuilder: (context, anim1, anim2) {
            return Align(
              alignment: Alignment.bottomCenter,
              child: IntrinsicHeight(
                child: Material(
                    color: Colors.transparent,
                    child: Container(
                      height: 400,
                      // constraints: BoxConstraints(maxHeight: 400),
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(14),
                            height: 4.h,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 0.h, bottom: 0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Availability",
                                  style: FontPalette.black_16_600,
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
                         const  Divider(),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.separated(
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (ctx, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, bottom: 10),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.close,
                                            size: 22,
                                          ),
                                          10.horizontalSpace,
                                          Text(
                                            serviceType[index],
                                            style: FontPalette.black_16_600
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.w400),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                  separatorBuilder: (ctx, index) {
                                    return const Divider();
                                  },
                                  itemCount: serviceType.length),
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
                                  height: 0,
                                ),
                                10.verticalSpace,
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18, right: 18, bottom: 18),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: SizedBox(
                                          height: 48.h,
                                          child: CustomButton(
                                              textColor: "#1F1E24",
                                              color: "#EEEEF2",
                                              title: "Cancel",
                                              onpressed: () {
                                                debugPrint("object");
                                              }),
                                        ),
                                      ),
                                      10.horizontalSpace,
                                      Expanded(
                                        child: SizedBox(
                                          height: 48.h,
                                          child: CustomButton(
                                              title: "Done",
                                              onpressed: () {
                                                debugPrint("object");
                                              }),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //  2.verticalSpace
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            );
          },
          transitionBuilder: (context, anim1, anim2, child) {
            return SlideTransition(
              position:
                  Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
                      .animate(anim1),
              child: child,
            );
          },
        );
      },
      child: Container(
        padding:
            EdgeInsets.only(left: 15.w, right: 13.w, top: 15.h, bottom: 13.h),
        width: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: HexColor("#C7C6CD"))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.isVisible
                ? Expanded(
                    child: Wrap(
                      children: [
                        for (var item in tags)
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10.0, top: 10),
                            child: GestureDetector(
                                onTap: () {},
                                child: serviceTypeWidget("Clean")),
                          )
                      ],
                    ),
                  )
                : Expanded(
                    child: Text(
                      widget.title ?? "",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: HexColor("#C7C6CD")),
                    ),
                  ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              size: 25.sp,
              color: HexColor("#616068"),
            )
          ],
        ),
      ),
    );
  }

  Widget serviceTypeWidget(String title) {
    return Container(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 3.h, bottom: 3.h),
      decoration: BoxDecoration(
          color: HexColor("#F0EEFD"), borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style:
                FontPalette.black_14_400.copyWith(color: HexColor("#1800B5")),
          ),
          3.horizontalSpace,
          InkWell(
            onTap: () {
              debugPrint("Clicked Delete Button");
            },
            child: Icon(
              Icons.close,
              size: 20,
              color: HexColor("#1800B5"),
            ),
          )
        ],
      ),
    );
  }
}
