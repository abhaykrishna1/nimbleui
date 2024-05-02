import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/profile_detail_screen/view/widgets/abouts_widget.dart';
import 'package:nimple_ui/src/profile_detail_screen/view/widgets/cooking_service_expansiontile_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class ProfileDetailScreen extends StatefulWidget {
  const ProfileDetailScreen({super.key});

  @override
  State<ProfileDetailScreen> createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  bool onTapContainershow = false;
  List tags = [
    "Arabic",
    "Vegetarian",
    "North indian",
    "Breakfast",
    "Dessert",
  ];
  bool active = false;
  String exTitle = "Sport Categories";
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Profile",
          style: FontPalette.black_14_600.copyWith(fontSize: 18.sp),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 283.h,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  // clipBehavior: Clip.antiAliasWithSaveLayer,
                  transform: Matrix4.translationValues(0, -32, 0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32), bottom: Radius.zero)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            height: 27.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: HexColor("#00B368")),
                            child: Row(
                              children: [
                                Text(
                                  "Overall",
                                  style: FontPalette.black_14_600
                                      .copyWith(color: Colors.white),
                                ),
                                3.horizontalSpace,
                                SizedBox(
                                  height: 16.h,
                                  width: 16.w,
                                  child: SvgPicture.asset(
                                    Assets.staricon,
                                    // ignore: deprecated_member_use
                                    color: Colors.white,
                                  ),
                                ),
                                3.horizontalSpace,
                                Text(
                                  "3.5",
                                  style: FontPalette.black_14_600
                                      .copyWith(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Container(
                              height: 42.h,
                              width: 42.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor("#EEEEF2")),
                              child: Icon(
                                Icons.favorite,
                                size: 24.h,
                                color: HexColor("#D7D7D7"),
                              ))
                        ],
                      ),
                      Text(
                        "Ann Robinson",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.w700),
                        overflow: TextOverflow.ellipsis,
                      ),
                      4.verticalSpace,
                      Row(
                        children: [
                          SizedBox(
                            height: 15.h,
                            width: 15.w,
                            child: SvgPicture.asset(Assets.locationsvg),
                          ),
                          5.horizontalSpace,
                          Text(
                            "5 Km Away ",
                            style: FontPalette.black_14_600,
                          ),
                          5.horizontalSpace,
                          SizedBox(
                            height: 15.h,
                            width: 15.w,
                            child: SvgPicture.asset(Assets.globIcon),
                          ),
                          5.horizontalSpace,
                          Expanded(
                            child: Text(
                              "English,Malayalam",
                              style: FontPalette.black_14_600,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                      20.verticalSpace,
                      Container(
                        padding: const EdgeInsets.all(12),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: HexColor("#F2F0FF"),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 28.h,
                                      width: 28.w,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: HexColor("#772077")),
                                      child: SvgPicture.asset(
                                        Assets.skillet,
                                        color: Colors.white,
                                      ),
                                    ),
                                    4.horizontalSpace,
                                    Text(
                                      Constants.cook,
                                      style: FontPalette.black_14_600
                                          .copyWith(fontSize: 16.sp),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 16.h,
                                          width: 16.w,
                                          child: SvgPicture.asset(
                                            Assets.staricon,
                                            color: HexColor("#00B368"),
                                          ),
                                        ),
                                        3.horizontalSpace,
                                        Text(
                                          "3.0",
                                          style: FontPalette.black_14_600
                                              .copyWith(
                                                  color: Colors.black,
                                                  fontSize: 15.sp),
                                        ),
                                        Text(
                                          "/5 rating",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                    3.verticalSpace,
                                    Text(
                                      "15+ Reviews",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$18.00",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "/day",
                                  style: FontPalette.black_14_600,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      18.verticalSpace,
                  const  AboutsWidget(),
                      14.verticalSpace,
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor("#EEEEF2")),
                        child: Text(
                          "Hi there! I'm Robinson, a dedicated and compassionate home nurse with a passion for providing personalized care. With years of experience in nursing, I bring a warm and empathetic approach to every home I visit.",
                          style: FontPalette.black_14_400,
                        ),
                      ),
                      17.verticalSpace,
                      Text(
                        Constants.availblethisweek,
                        style:
                            FontPalette.black_14_600.copyWith(fontSize: 16.sp),
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          availablethisweeksWidget("Monday"),
                          10.horizontalSpace,
                          availablethisweeksWidget("Tuesday"),
                          10.horizontalSpace,
                          availablethisweeksWidget("Friday"),
                        ],
                      ),
                      10.verticalSpace,
                      Container(
                        height: 47.h,
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(37),
                            border: Border.all(color: HexColor("#C7C6CD"))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Select slot",
                              style: FontPalette.black_14_400,
                            ),
                            SizedBox(
                              height: 23.h,
                              width: 23.w,
                              child: SvgPicture.asset(
                                Assets.calendericon,
                              ),
                            )
                          ],
                        ),
                      ),
                      15.verticalSpace,
                      Text(
                        Constants.ratingsreviews,
                        style:
                            FontPalette.black_14_600.copyWith(fontSize: 16.sp),
                      ),
                      15.verticalSpace,
                      Text("Cooking service", style: FontPalette.black_14_600),
                     CookingServiceExpansiontileWidget(),
                      10.verticalSpace,
                      Text(
                        Constants.expertise,
                        style: 
                            FontPalette.black_14_600.copyWith(fontSize: 16.sp),
                      ),
                      4.verticalSpace,
                      Wrap(
                        children: [
                          for (var item in tags)
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 4.0, top: 10),
                              child: Container(
                                padding:
                                    EdgeInsets.only(left: 17.w, right: 17.w),
                                height: 36.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: HexColor("#F0EEFD")),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      item,
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                          color: HexColor("#1800B5")),
                                    ),
                                    0.horizontalSpace,
                                  ],
                                ),
                              ),
                            )
                        ],
                      ),
                      12.verticalSpace,
                      const Divider(),
                      14.verticalSpace,
                      Text(
                        Constants.certification,
                        style:
                            FontPalette.black_14_600.copyWith(fontSize: 16.sp),
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          SizedBox(
                            height: 18.h,
                            width: 18.w,
                            child: SvgPicture.asset(Assets.tickCertification),
                          ),
                          17.horizontalSpace,
                          Text(
                            "Work Permit",
                            style: FontPalette.black_14_400,
                          )
                        ],
                      ),
                      7.verticalSpace,
                      Row(
                        children: [
                          SizedBox(
                            height: 18.h,
                            width: 18.w,
                            child: SvgPicture.asset(Assets.tickCertification),
                          ),
                          17.horizontalSpace,
                          Text(
                            "Driving license",
                            style: FontPalette.black_14_400,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                  width: double.maxFinite,
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
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
                      padding: const EdgeInsets.only(
                          left: 18, right: 18, bottom: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomButton(
                                textColor: "#1F1E24",
                                color: "#EEEEF2",
                                title: "Skip",
                                onpressed: () {
                                  debugPrint("object");
                                }),
                          ),
                          10.horizontalSpace,
                          CustomButton(
                              title: "Send Request",
                              onpressed: () {
                                debugPrint("object");
                              }),
                        ],
                      ),
                    ),
                    //  2.verticalSpace
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget abouts(String iconcontent, String icon) {
    return Row(
      children: [
        SizedBox(
          height: 18.h,
          width: 18.w,
          child: SvgPicture.asset(icon),
        ),
        10.horizontalSpace,
        Expanded(
          child: Text(
            iconcontent,
            style: FontPalette.black_14_400,
          ),
        )
      ],
    );
  }

  Widget availablethisweeksWidget(String day) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      alignment: Alignment.center,
      height: 27.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: HexColor("#EEEEF2")),
      child: Text(
        day,
        style: FontPalette.black_14_400,
      ),
    );
  }
}
