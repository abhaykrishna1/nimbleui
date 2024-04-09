import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/main/booking_screen/view/tab_view/widgets/show_dialog_widget.dart';
import 'package:nimple_ui/src/main/message_screen/tab_view/widget/small_border_text_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class TaskInfoScreen extends StatelessWidget {
  const TaskInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EEEEF2"),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Task Info",
          style: FontPalette.black_18_600,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(29.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomPaint(
                      painter: CouponPainter(
                          bgColor: Colors.white,
                          cutPosition: .53,
                          cutOutRadius: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            constraints: BoxConstraints(minHeight: 100.h),
                            width: double.maxFinite,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 7.w, top: 7, bottom: 7),
                                      padding: const EdgeInsets.all(10),
                                      width: 100.w,
                                      height: 100.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                    20.horizontalSpace,
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    "Ann Robinson",
                                                    style: FontPalette
                                                        .black_14_600
                                                        .copyWith(
                                                            fontSize: 16.sp),
                                                  ),
                                                ),
                                                const SmallBorderTextWidget(
                                                    title: "Clean")
                                              ],
                                            ),
                                            6.verticalSpace,
                                            Text(
                                              "10.00 AM Friday Dec 20,2022",
                                              style: FontPalette.black_14_400
                                                  .copyWith(
                                                      color:
                                                          HexColor("#616068")),
                                            ),
                                            7.verticalSpace,
                                            Row(
                                              children: [
                                                SizedBox(
                                                  height: 15.h,
                                                  width: 15.w,
                                                  child: SvgPicture.asset(
                                                      Assets.locationborder),
                                                ),
                                                4.horizontalSpace,
                                                Expanded(
                                                    child: Text(
                                                  "848 King Street, Denver, CO 80204",
                                                  style:
                                                      FontPalette.black_14_400,
                                                ))
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Hourly Rate",
                                            style: FontPalette.black_14_400,
                                          ),
                                          Text(
                                            "15/hr",
                                            style: FontPalette.black_14_600,
                                          )
                                        ],
                                      ),
                                      5.verticalSpace,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Total hours",
                                            style: FontPalette.black_14_400,
                                          ),
                                          Text(
                                            "2.0.hrs",
                                            style: FontPalette.black_14_600,
                                          )
                                        ],
                                      ),
                                      5.verticalSpace,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Promos",
                                            style: FontPalette.black_14_400,
                                          ),
                                          Text(
                                            "2",
                                            style: FontPalette.black_14_600,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  color: HexColor("#F5F4F8"),
                                  width: double.maxFinite,
                                  child: Center(
                                    child: Text(
                                      "Cancellation is only available 48 hours before.",
                                      style:
                                          TextStyle(color: HexColor("#616068")),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total",
                                        style: FontPalette.black_14_600,
                                      ),
                                      Text(
                                        "15",
                                        style: FontPalette.black_14_600
                                            .copyWith(fontSize: 16.sp),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    10.verticalSpace,
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: HexColor("#9ED4FB")),
                          color: HexColor("#EBF7FF"),
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.h,
                            width: 20.w,
                            child: SvgPicture.asset(Assets.infoicon),
                          ),
                          11.horizontalSpace,
                          Expanded(
                              child: Text(
                            "Cancellation or rescheduling of a task is only allowed within a 48-hour.",
                            style: FontPalette.black_14_400,
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 20.h, left: 16.w, right: 16.w, bottom: 20.h),
            width: double.maxFinite,
            color: Colors.white,
            child: CustomButton(
              title: "Cancel Task",
              onpressed: () {
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
                              // constraints: BoxConstraints(maxHeight: 400),
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.w,
                                          right: 20.w,
                                          top: 53.h,
                                          bottom: 42.h),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Are you sure want to cancel booking?",
                                            style: FontPalette.black_16_600,
                                          ),
                                          4.verticalSpace,
                                          Text(
                                            "Once you cancel you need to generate another ticket",
                                            textAlign: TextAlign.center,
                                            style: FontPalette.black_14_400,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // height: 200,
                                    //  padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
                                    width: double.maxFinite,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                child: CustomButton(
                                                    textColor: "#1F1E24",
                                                    color: "#EEEEF2",
                                                    title: "No",
                                                    onpressed: () {
                                                      debugPrint("object");
                                                    }),
                                              ),
                                              10.horizontalSpace,
                                              Expanded(
                                                child: CustomButton(
                                                    title: "Yes,Cancel",
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
                              ),
                            )),
                      ),
                    );
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
              color: "#EEEEF2",
              textColor: "#1F1E24",
            ),
          )
        ],
      ),
    );
  }
}
