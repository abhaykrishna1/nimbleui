import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';
import 'package:nimple_ui/widget/small_custom_button.dart';
import 'package:nimple_ui/widget/type_widget.dart';

class ProviderHomeCardWidget extends StatelessWidget {
  final String image;
  const ProviderHomeCardWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        showGeneralDialog(
          barrierLabel: "Label",
          barrierDismissible: true,
          barrierColor: Colors.black.withOpacity(0.5),
          transitionDuration: const Duration(milliseconds: 400),
          context: context,
          pageBuilder: (context, anim1, anim2) {
            return Align(
                alignment: Alignment.bottomCenter,
                child: IntrinsicHeight(
                    child: Material(
                  color: Colors.transparent,
                  child: Container(
                    width: double.maxFinite,
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.8,
                    ),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20.w,
                                right: 20.w,
                                top: 10.h,
                                bottom: 20.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Container(
                                    height: 5,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black),
                                  ),
                                ),
                                15.verticalSpace,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 111.h,
                                      width: 88.w,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(image),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    15.horizontalSpace,
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Peter Shan",
                                            style: FontPalette.black_16_600,
                                          ),
                                          7.verticalSpace,
                                          Row(
                                            children: [
                                              const TypeWidgett(title: "Cook"),
                                              10.horizontalSpace,
                                              const TypeWidgett(title: "Clean")
                                            ],
                                          ),
                                          10.verticalSpace,
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 16.h,
                                                width: 16.w,
                                                child: SvgPicture.asset(
                                                  Assets.locationsvg,
                                                ),
                                              ),
                                              7.horizontalSpace,
                                              Expanded(
                                                child: Text(
                                                    " 5 Km Away  Toronto",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: FontPalette
                                                        .black_14_600
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                              ),
                                            ],
                                          ),
                                          7.verticalSpace,
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 16.h,
                                                width: 16.w,
                                                child: SvgPicture.asset(
                                                  Assets.calendericon,
                                                ),
                                              ),
                                              10.horizontalSpace,
                                              Expanded(
                                                child: Text(
                                                    "Monday, Dec 18  9:00 AM",
                                                    style: FontPalette
                                                        .black_14_600
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500)),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                10.verticalSpace,
                                const Divider(),
                                10.verticalSpace,
                                Text(
                                  "Type of service",
                                  style: FontPalette.black_14_400.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: HexColor("#616068")),
                                ),
                                7.verticalSpace,
                                Text(
                                  "Chinese cuisine & Home cleaning",
                                  style: FontPalette.black_14_400,
                                ),
                                10.verticalSpace,
                                Text(
                                  "Description",
                                  style: FontPalette.black_14_400.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: HexColor("#616068")),
                                ),
                                7.verticalSpace,
                                Text(
                                  "Hello! We're looking for a delightful combination of services for Monday, December 18th. Our cravings include the rich flavors of Chinese cuisine, and we're eager to indulge in a memorable dining experience.Hello! We're looking for a delightful combination of services for Monday, December 18th. Our cravings include the rich flavors of Chinese cuisine, and we're eager to indulge in a memorable dining experience.",
                                  style: FontPalette.black_14_400,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 16.w,
                                right: 16.w,
                                top: 10.h,
                                bottom: 16.h),
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomButton(
                                      title: "Cancel",
                                      onpressed: () {
                                        Navigator.pop(context);
                                      }),
                                ),
                                10.horizontalSpace,
                                CustomButton(
                                    title: "Send request", onpressed: () {})
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )));
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
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15.r)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 114.w,
              height: 144.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.r),
                      bottomLeft: Radius.circular(15.r))),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Peter Shan",
                      style: FontPalette.black_16_600,
                    ),
                    5.verticalSpace,
                    Row(
                      children: [
                        const TypeWidgett(title: "Cook"),
                        10.horizontalSpace,
                        const TypeWidgett(title: "Clean")
                      ],
                    ),
                    5.verticalSpace,
                    Row(
                      children: [
                        4.horizontalSpace,
                        Text(
                          "Monday, Dec 18",
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w500),
                        ),
                        8.horizontalSpace,
                        SizedBox(
                          height: 16.h,
                          width: 16.w,
                          child: SvgPicture.asset(Assets.locationborder,
                              color: HexColor("#616068")),
                        ),
                        Expanded(
                          child: Text(
                            " 5 Km Away",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: HexColor("#616068")),
                          ),
                        ),
                      ],
                    ),
                    7.verticalSpace,
                    Row(
                      children: [
                        SmallCustomButton(
                          name: "Send Request",
                          onpressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
