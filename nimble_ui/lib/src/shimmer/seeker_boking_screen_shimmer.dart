import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_booking_screen/view/tab_view/compleated_tab_list_widget.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_booking_screen/view/tab_view/provider_upcoming_show_dialog.dart';
import 'package:nimple_ui/src/shimmer/widget/shimmer_container.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:shimmer/shimmer.dart';

class SeekerBookingScreenShimmer extends StatelessWidget {
  const SeekerBookingScreenShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            10.verticalSpace,
            Shimmer.fromColors(
              baseColor: const Color(0xFFF4F4F4),
              highlightColor: const Color(0xFFF4F4F4).withOpacity(0.5),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ShimmerContainer(height: 49, width: 167),
                  ShimmerContainer(height: 49, width: 167)
                ],
              ),
            ),
            12.verticalSpace,
            Expanded(
              child: ListView.separated(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 1.0, right: 1, top: 7, bottom: 7),
                      child: CustomPaint(
                        painter: CouponPainterTwo(
                            bgColor: Colors.white,
                            cutPosition: 29,
                            cutOutRadius: 10),
                        child: Container(
                          constraints: BoxConstraints(minHeight: 100.h),
                          width: double.maxFinite,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(120),
                            splashColor: HexColor("#EEEEF2"),
                            onTap: () {
                              ///
                              ///
                              showGeneralDialog(
                                barrierLabel: "Label",
                                barrierDismissible: true,
                                barrierColor: Colors.black.withOpacity(0.5),
                                transitionDuration:
                                    const Duration(milliseconds: 200),
                                context: context,
                                pageBuilder: (context, anim1, anim2) {
                                  return Padding(
                                    padding: EdgeInsets.only(top: 90.h),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16.0,
                                            right: 16,
                                            top: 7,
                                            bottom: 7),
                                        child: IntrinsicHeight(
                                          child: Material(
                                            color: Colors.transparent,
                                            child: Column(
                                              children: [
                                                CustomPaint(
                                                  painter: CouponPainter(
                                                      bgColor: Colors.white,
                                                      cutPosition: .53,
                                                      cutOutRadius: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        constraints:
                                                            BoxConstraints(
                                                                minHeight:
                                                                    100.h),
                                                        width: double.maxFinite,
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Shimmer
                                                                    .fromColors(
                                                                  baseColor:
                                                                      HexColor(
                                                                          "#EEEEF2"),
                                                                  highlightColor: const Color(
                                                                          0xFFF4F4F4)
                                                                      .withOpacity(
                                                                          0.5),
                                                                  child:
                                                                      Container(
                                                                    margin: EdgeInsets.only(
                                                                        left:
                                                                            7.w,
                                                                        top: 7,
                                                                        bottom:
                                                                            7),
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            10),
                                                                    width: 90.w,
                                                                    height:
                                                                        110.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: HexColor(
                                                                          "#EEEEF2"),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                    ),
                                                                  ),
                                                                ),
                                                                20.horizontalSpace,
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child: Shimmer
                                                                        .fromColors(
                                                                      baseColor:
                                                                          HexColor(
                                                                              "#EEEEF2"),
                                                                      highlightColor: const Color(
                                                                              0xFFF4F4F4)
                                                                          .withOpacity(
                                                                              0.5),
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceEvenly,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          10.verticalSpace,
                                                                          const Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              ShimmerContainer(height: 20, width: 136),
                                                                              ShimmerContainer(height: 20, width: 45)
                                                                            ],
                                                                          ),
                                                                          12.verticalSpace,
                                                                          Row(
                                                                            children: [
                                                                              const ShimmerContainer(height: 10, width: 55),
                                                                              10.horizontalSpace,
                                                                              const ShimmerContainer(height: 10, width: 10),
                                                                              12.horizontalSpace,
                                                                              const ShimmerContainer(height: 10, width: 100),
                                                                            ],
                                                                          ),
                                                                          12.verticalSpace,
                                                                          const ShimmerContainer(
                                                                              height: 7,
                                                                              width: 200),
                                                                          12.verticalSpace,
                                                                          const ShimmerContainer(
                                                                              height: 7,
                                                                              width: 50),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                      16.0),
                                                              child: Column(
                                                                children: [
                                                                  const Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      ShimmerContainer(
                                                                          height:
                                                                              10,
                                                                          width:
                                                                              126),
                                                                      ShimmerContainer(
                                                                          height:
                                                                              10,
                                                                          width:
                                                                              70)
                                                                    ],
                                                                  ),
                                                                  10.verticalSpace,
                                                                  const Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      ShimmerContainer(
                                                                          height:
                                                                              10,
                                                                          width:
                                                                              126),
                                                                      ShimmerContainer(
                                                                          height:
                                                                              10,
                                                                          width:
                                                                              70)
                                                                    ],
                                                                  ),
                                                                  10.verticalSpace,
                                                                  const Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      ShimmerContainer(
                                                                          height:
                                                                              10,
                                                                          width:
                                                                              126),
                                                                      ShimmerContainer(
                                                                          height:
                                                                              10,
                                                                          width:
                                                                              50)
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 10,
                                                                        bottom:
                                                                            10),
                                                                color: HexColor(
                                                                    "#F5F4F8"),
                                                                width: double
                                                                    .maxFinite,
                                                                child: Center(
                                                                    child: Shimmer.fromColors(
                                                                        baseColor:
                                                                            HexColor(
                                                                                "#D5D5D5"),
                                                                        highlightColor:
                                                                            const Color(0xFFF4F4F4).withOpacity(
                                                                                0.5),
                                                                        child: Container(
                                                                            height:
                                                                                10,
                                                                            width:
                                                                                195,
                                                                            decoration:
                                                                                BoxDecoration(color: HexColor("#D5D5D5"), borderRadius: BorderRadius.circular(20)))))),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                      18.0),
                                                              child: Shimmer
                                                                  .fromColors(
                                                                baseColor:
                                                                    HexColor(
                                                                        "#EEEEF2"),
                                                                highlightColor:
                                                                    const Color(
                                                                            0xFFF4F4F4)
                                                                        .withOpacity(
                                                                            0.5),
                                                                child:
                                                                    const Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    ShimmerContainer(
                                                                        height:
                                                                            20,
                                                                        width:
                                                                            50),
                                                                    ShimmerContainer(
                                                                        height:
                                                                            20,
                                                                        width:
                                                                            50)
                                                                  ],
                                                                ),
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
                                                  padding:
                                                      const EdgeInsets.all(17),
                                                  width: double.maxFinite,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      color:
                                                          HexColor("#EEEEF2")),
                                                  child: Center(
                                                      child: Text(
                                                    "View chat history",
                                                    style: FontPalette
                                                        .black_14_600
                                                        .copyWith(
                                                            fontSize: 16.sp),
                                                  )),
                                                ),
                                                20.verticalSpace,
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                    height: 44.h,
                                                    width: 44.w,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            color: HexColor(
                                                                "#FFFFFF"),
                                                            width: 2)),
                                                    child: const Icon(
                                                      Icons.close,
                                                      color: Colors.white,
                                                      size: 30,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                transitionBuilder:
                                    (context, anim1, anim2, child) {
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
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Shimmer.fromColors(
                                  baseColor: HexColor("#D5D5D5"),
                                  highlightColor:
                                      HexColor("#D5D5D5").withOpacity(0.5),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 7.w, top: 7, bottom: 7),
                                    padding: const EdgeInsets.all(10),
                                    constraints:
                                        const BoxConstraints(minHeight: 110),
                                    width: 80.w,
                                    decoration: BoxDecoration(
                                      color: HexColor("#EEEEF2"),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                20.horizontalSpace,
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 8.0,
                                        right: 8,
                                        top: 12.h,
                                        bottom: 12.h),
                                    child: Shimmer.fromColors(
                                      baseColor: HexColor("#D5D5D5"),
                                      highlightColor:
                                          HexColor("#D5D5D5").withOpacity(0.5),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ShimmerContainer(
                                                  height: 18, width: 84),
                                              ShimmerContainer(
                                                  height: 18, width: 45)
                                            ],
                                          ),
                                          20.verticalSpace,
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              ShimmerContainer(
                                                  height: 9, width: 80),
                                              ShimmerContainer(
                                                  height: 10, width: 10),
                                              ShimmerContainer(
                                                  height: 9, width: 145)
                                            ],
                                          ),
                                          18.verticalSpace,
                                          const ShimmerContainer(
                                              height: 18,
                                              width: double.maxFinite)
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: 6),
            ),
          ],
        ),
      ),
    );
  }
}
