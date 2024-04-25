import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';
import 'package:nimple_ui/widget/small_custom_button.dart';
import 'package:nimple_ui/widget/type_widget.dart';

class ProviderTabAllScreen extends StatelessWidget {
  ProviderTabAllScreen({super.key});

  final controller = ScrollController();

  List images = [
    "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg",
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww",
    "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
    "https://www.shutterstock.com/shutterstock/photos/1617540484/display_1500/stock-photo-closeup-photo-of-amazing-short-hairdo-lady-looking-up-empty-space-deep-thinking-creative-person-arm-1617540484.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8iQTGP_fRP4Hug0_8NI6m1PD9XhynUNJO_4kp0--Djw&s",
    "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg",
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww",
    "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
    "https://www.shutterstock.com/shutterstock/photos/1617540484/display_1500/stock-photo-closeup-photo-of-amazing-short-hairdo-lady-looking-up-empty-space-deep-thinking-creative-person-arm-1617540484.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8iQTGP_fRP4Hug0_8NI6m1PD9XhynUNJO_4kp0--Djw&s"
  ];

  @override
  Widget build(BuildContext context) {
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(17),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        color: Colors.white,
                        height: 55.h,
                        width: 100.w,
                        child: Stack(
                          children: [
                            Container(
                              height: 52.h,
                              width: 52.w,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg"),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle),
                            ),
                            Positioned(
                                left: 26.w,
                                bottom: 0,
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  height: 55.h,
                                  width: 55.w,
                                  child: Container(
                                    height: 50.h,
                                    width: 50.w,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww"),
                                            fit: BoxFit.cover),
                                        shape: BoxShape.circle),
                                  ),
                                )),
                            Positioned(
                                left: 56.w,
                                bottom: 0,
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  height: 33.h,
                                  width: 33.w,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30.h,
                                    width: 30.w,
                                    decoration: const BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                    child: Text(
                                      "+3",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                      10.horizontalSpace,
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Alfred bristo, Angel ',
                                  style: FontPalette.black_14_600),
                              TextSpan(
                                  text: 'and 3 other has requested service',
                                  style: FontPalette.black_14_400
                                      .copyWith(color: Colors.black)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  13.verticalSpace,
                  SizedBox(
                      width: double.maxFinite,
                      child: CustomButton(
                        title: "View All",
                        onpressed: () {},
                        color: "#EEEEF2",
                        textColor: "#1F1E24",
                      ))
                ],
              ),
            ),
            13.verticalSpace,
            Text(
              "Find your Job",
              style: FontPalette.black_16_600,
            ),
            13.verticalSpace,
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
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
                                    maxHeight:
                                        MediaQuery.of(context).size.height *
                                            0.8,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Center(
                                                child: Container(
                                                  height: 5,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: Colors.black),
                                                ),
                                              ),
                                              15.verticalSpace,
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 111.h,
                                                    width: 88.w,
                                                    decoration: BoxDecoration(
                                                        image: const DecorationImage(
                                                            image: NetworkImage(
                                                                "https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww"),
                                                            fit: BoxFit.cover),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                  ),
                                                  15.horizontalSpace,
                                                  Expanded(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Peter Shan",
                                                          style: FontPalette
                                                              .black_16_600,
                                                        ),
                                                        7.verticalSpace,
                                                        Row(
                                                          children: [
                                                            const TypeWidgett(
                                                                title: "Cook"),
                                                            10.horizontalSpace,
                                                            const TypeWidgett(
                                                                title: "Clean")
                                                          ],
                                                        ),
                                                        10.verticalSpace,
                                                        Row(
                                                          children: [
                                                            SizedBox(
                                                              height: 16.h,
                                                              width: 16.w,
                                                              child: SvgPicture
                                                                  .asset(
                                                                Assets
                                                                    .locationsvg,
                                                              ),
                                                            ),
                                                            7.horizontalSpace,
                                                            Expanded(
                                                              child: Text(
                                                                  " 5 Km Away  Toronto",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: FontPalette
                                                                      .black_14_600
                                                                      .copyWith(
                                                                          fontWeight:
                                                                              FontWeight.w500)),
                                                            ),
                                                          ],
                                                        ),
                                                        7.verticalSpace,
                                                        Row(
                                                          children: [
                                                            SizedBox(
                                                              height: 16.h,
                                                              width: 16.w,
                                                              child: SvgPicture
                                                                  .asset(
                                                                Assets
                                                                    .calendericon,
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
                                                                              FontWeight.w500)),
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
                                                style: FontPalette.black_14_400
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: HexColor(
                                                            "#616068")),
                                              ),
                                              7.verticalSpace,
                                              Text(
                                                "Chinese cuisine & Home cleaning",
                                                style: FontPalette.black_14_400,
                                              ),
                                              10.verticalSpace,
                                              Text(
                                                "Description",
                                                style: FontPalette.black_14_400
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: HexColor(
                                                            "#616068")),
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
                                                  title: "Send request",
                                                  onpressed: () {})
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
                            position: Tween(
                                    begin: const Offset(0, 1),
                                    end: const Offset(0, 0))
                                .animate(anim1),
                            child: child,
                          );
                        },
                      );
                    },
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 114.w,
                            height: 144.h + (10 * textScaleFactor),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(images[index]),
                                    fit: BoxFit.cover),
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
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      8.horizontalSpace,
                                      SizedBox(
                                        height: 16.h,
                                        width: 16.w,
                                        child: SvgPicture.asset(
                                            Assets.locationborder,
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
                },
                separatorBuilder: (ctx, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 10)
          ],
        ),
      ),
    );
  }
}
