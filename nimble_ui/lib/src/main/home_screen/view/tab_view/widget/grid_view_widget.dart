import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/main/home_screen/view/tab_view/widget/type_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 15,
          child: PageView.builder(
              controller: pageController,
              itemCount: 10,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        RouteGenerator.routeProfileDetailScreen,
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            height: MediaQuery.of(context).size.height * 0.28,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                                    fit: BoxFit.fill)),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 0.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 27.h,
                                        width: 57.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: HexColor("#00B368")),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 18,
                                              width: 18,
                                              child: SvgPicture.asset(
                                                Assets.staricon,
                                                // ignore: deprecated_member_use
                                                color: Colors.white,
                                              ),
                                            ),
                                            2.horizontalSpace,
                                            Text("3.5",
                                                style: FontPalette.black_14_600
                                                    .copyWith(
                                                        color: Colors.white)),
                                          ],
                                        ),
                                      ),
                                      10.horizontalSpace,
                                      SizedBox(
                                        child: SvgPicture.asset(
                                          Assets.locationsvg,
                                          // ignore: deprecated_member_use
                                          color: Colors.white,
                                        ),
                                      ),
                                      5.horizontalSpace,
                                      Text("5 Km Away",
                                          style: FontPalette.black_14_600
                                              .copyWith(color: Colors.white)),
                                    ],
                                  ),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: 40.h,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white, width: 2)),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                        size: 21.h,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 24.0, right: 24, top: 16),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Ann Robinson",
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "22.00",
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          "/Hr",
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                13.verticalSpace,
                                Row(
                                  children: [
                                    const TypeWidget(title: "Cook"),
                                    5.horizontalSpace,
                                    const TypeWidget(title: "Clean")
                                  ],
                                ),
                                10.verticalSpace,
                                Row(
                                  children: [
                                    Text(
                                      "Talks:",
                                      style: FontPalette.black_14_400,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "  English,Malayalam,French",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: FontPalette.black_14_400,
                                      ),
                                    )
                                  ],
                                ),
                                10.verticalSpace,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 48.h,
                                      width: 118.w,
                                      child: CustomButton(
                                          textColor: "#000000",
                                          color: "#EEEEF2",
                                          title: "Skip",
                                          onpressed: () {
                                            debugPrint("object");
                                          }),
                                    ),
                                    SizedBox(
                                      height: 48.h,
                                      width: 166.w,
                                      child: CustomButton(
                                          title: "Send Request",
                                          onpressed: () {
                                            debugPrint("object");
                                          }),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: SmoothPageIndicator(
              controller: pageController,
              count: 10,
              effect: ScrollingDotsEffect(
                  strokeWidth: 1.0,
                  activeStrokeWidth: 1.0,
                  paintStyle: PaintingStyle.fill,
                  activeDotColor: HexColor("#845684"),
                  dotColor: HexColor("#C7C6CD"),
                  dotHeight: 6.r,
                  dotWidth: 6.r),
            ),
          ),
        ),
        // 20.verticalSpace
      ],
    );
  }
}
