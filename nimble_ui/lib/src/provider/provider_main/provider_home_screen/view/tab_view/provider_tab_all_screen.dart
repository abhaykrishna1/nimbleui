import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/main/home_screen/view/tab_view/widget/type_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';
import 'package:nimple_ui/widget/small_custom_button.dart';
import 'package:nimple_ui/widget/type_widget.dart';

class ProviderTabAllScreen extends StatelessWidget {
  ProviderTabAllScreen({super.key});

  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
        ),
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
                    onTap: () {
                      showGeneralDialog(
                        barrierLabel: "Label",
                        barrierDismissible: true,
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionDuration: const Duration(milliseconds: 500),
                        context: context,
                        pageBuilder: (context, anim1, anim2) {
                          return Align(
                              alignment: Alignment.bottomCenter,
                              child: IntrinsicHeight(
                                  child: Material(
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  width: double.maxFinite,
                                  color: Colors.white,
                                  child: Container(
                                    height: 300,
                                    width: 200,
                                    color: Colors.black,
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
                            height: 144.h,
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.r),
                                    bottomLeft: Radius.circular(15.r))),
                          ),
                          Padding(
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
                                    const TypeWidgett(title: "Cleen")
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
                                    Text(
                                      " 5 Km Away",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor("#616068")),
                                    ),
                                  ],
                                ),
                                7.verticalSpace,
                                SmallCustomButton(
                                  name: "Send Request",
                                  onpressed: () {},
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return const SizedBox(
                    height: 29,
                  );
                },
                itemCount: 10)
          ],
        ),
      ),
    );
  }
}
