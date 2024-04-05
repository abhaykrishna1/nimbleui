import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/main/account_screen/view/account_screen.dart';
import 'package:nimple_ui/src/main/booking_screen/view/booking_screen.dart';
import 'package:nimple_ui/src/main/home_screen/view/home_screen.dart';
import 'package:nimple_ui/src/main/message_screen/view/message_screen.dart';
import 'package:nimple_ui/src/main/post/view/post_screen.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List pages = [
    const HomeScreen(),
    const BookingScreen(),
    const PostScreen(),
    MessageScreen(),
    const AccountScreen()
  ];

  int pageindex = 0;
  String appbarTitile = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EEEEF2"),
      // backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: pageindex == 3 ? 1 : 0,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: pageindex == 0
              ? Text(
                  Constants.name,
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w800,
                      color: HexColor("#772077")),
                )
              : Text(
                  appbarTitile,
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
          actions: pageindex == 0
              ? [
                  SizedBox(
                    height: 30.h,
                    width: 100.w,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: SvgPicture.asset(Assets.locationsvg),
                        ),
                        3.horizontalSpace,
                        Flexible(
                          child: Text(
                            "Thrissur kerala",
                            style: FontPalette.black_14_600,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  12.horizontalSpace,
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        RouteGenerator.routeNotificationScreen,
                      );
                    },
                    child: SizedBox(
                      height: 20.h,
                      width: 20.w,
                      child: SvgPicture.asset(Assets.notification),
                    ),
                  ),
                  17.horizontalSpace
                ]
              : [
                  pageindex == 2
                      ? InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RouteGenerator.routeAddPostScreen,
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 19,
                                ),
                                4.horizontalSpace,
                                Text(
                                  "Create a Post",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        )
                      : const SizedBox(),
                  const SizedBox(
                    width: 10,
                  )
                ]),
      body: pages[pageindex],
      bottomNavigationBar: Container(
        // height: 63.h,
        width: double.maxFinite,
        decoration: const BoxDecoration(color: Colors.white),
        child: Container(
          height: 69.h,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
              const Divider(
                height: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        pageindex = 0;
                      });
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          pageindex == 0
                              ? Container(
                                  width: 24.w,
                                  height: 3.h,
                                  decoration: BoxDecoration(
                                      color: HexColor("#772077"),
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                )
                              : const SizedBox(),
                          pageindex == 0 ? 6.verticalSpace : 9.verticalSpace,
                          SizedBox(
                            height: 24.h,
                            width: 24.w,
                            child: SvgPicture.asset(
                              Assets.homeicon,
                              color: pageindex == 0
                                  ? HexColor("#772077")
                                  : HexColor("#616068"),
                            ),
                          ),
                          3.verticalSpace,
                          Expanded(
                            child: Text(
                              "Home",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                  color: pageindex == 0
                                      ? HexColor("#772077")
                                      : HexColor("#616068")),
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        pageindex = 1;
                        appbarTitile = Constants.booking;
                      });
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          pageindex == 1
                              ? Container(
                                  width: 24.w,
                                  height: 3.h,
                                  decoration: BoxDecoration(
                                      color: HexColor("#772077"),
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                )
                              : const SizedBox(),
                          pageindex == 1 ? 1.verticalSpace : 4.verticalSpace,
                          SizedBox(
                            height: 32.h,
                            width: 32.w,
                            child: SvgPicture.asset(
                              Assets.bookingsicon,
                              color: pageindex == 1
                                  ? HexColor("#772077")
                                  : HexColor("#616068"),
                            ),
                          ),
                          0.verticalSpace,
                          Expanded(
                            child: Text(
                              "Bookings",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                  color: pageindex == 1
                                      ? HexColor("#772077")
                                      : HexColor("#616068")),
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        pageindex = 2;
                        appbarTitile = Constants.post;
                        setState(() {});
                      });
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          pageindex == 2
                              ? Container(
                                  width: 24.w,
                                  height: 3.h,
                                  decoration: BoxDecoration(
                                      color: HexColor("#772077"),
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                )
                              : const SizedBox(),
                          pageindex == 2 ? 6.verticalSpace : 9.verticalSpace,
                          SizedBox(
                            height: 24.h,
                            width: 24.w,
                            child: SvgPicture.asset(
                              Assets.posticon,
                              color: pageindex == 2
                                  ? HexColor("#772077")
                                  : HexColor("#616068"),
                            ),
                          ),
                          3.verticalSpace,
                          Expanded(
                            child: Text(
                              "Post",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                  color: pageindex == 2
                                      ? HexColor("#772077")
                                      : HexColor("#616068")),
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        pageindex = 3;
                        appbarTitile = Constants.message;
                      });
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          pageindex == 3
                              ? Container(
                                  width: 24.w,
                                  height: 3.h,
                                  decoration: BoxDecoration(
                                      color: HexColor("#772077"),
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                )
                              : const SizedBox(),
                          pageindex == 3 ? 6.verticalSpace : 9.verticalSpace,
                          SizedBox(
                            height: 24.h,
                            width: 24.w,
                            child: SvgPicture.asset(
                              Assets.messageicon,
                              color: pageindex == 3
                                  ? HexColor("#772077")
                                  : HexColor("#616068"),
                            ),
                          ),
                          3.verticalSpace,
                          Expanded(
                            child: Text(
                              "Message",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                  color: pageindex == 3
                                      ? HexColor("#772077")
                                      : HexColor("#616068")),
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        pageindex = 4;
                        appbarTitile = Constants.account;
                      });
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          pageindex == 4
                              ? Container(
                                  width: 24.w,
                                  height: 3.h,
                                  decoration: BoxDecoration(
                                      color: HexColor("#772077"),
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                )
                              : const SizedBox(),
                          pageindex == 4 ? 6.verticalSpace : 9.verticalSpace,
                          SizedBox(
                              height: 24.h,
                              width: 24.w,
                              child: Image.asset(Assets.accounticon)),
                          3.verticalSpace,
                          Expanded(
                            child: Text(
                              "Account",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.sp,
                                  color: pageindex == 4
                                      ? HexColor("#772077")
                                      : HexColor("#616068")),
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
