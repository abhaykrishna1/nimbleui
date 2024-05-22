import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/shimmer/widget/shimmer_container.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:shimmer/shimmer.dart';

class SeekerHomeScreenShimmer extends StatelessWidget {
  const SeekerHomeScreenShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 5),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Shimmer.fromColors(
                      baseColor: HexColor("#D5D5D5"),
                      highlightColor: HexColor("#D5D5D5").withOpacity(0.5),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShimmerContainer(
                            height: 65.0,
                            width: 85.0,
                            borderRadius: 30.0,
                          ),
                          ShimmerContainer(
                            height: 65.0,
                            width: 85.0,
                            borderRadius: 30.0,
                          ),
                          ShimmerContainer(
                            height: 65.0,
                            width: 85.0,
                            borderRadius: 30.0,
                          ),
                          ShimmerContainer(
                            height: 65.0,
                            width: 85.0,
                            borderRadius: 30.0,
                          ),
                        ],
                      ),
                    ),
                    27.verticalSpace,
                    Container(
                      height: 530,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(255, 220, 220, 220),
                            width: 2),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(18),
                            alignment: Alignment.bottomCenter,
                            height: 250,
                            width: double.maxFinite,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 243, 243, 243),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            child: Shimmer.fromColors(
                              baseColor: HexColor("#D5D5D5"),
                              highlightColor:
                                  HexColor("#D5D5D5").withOpacity(0.5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const ShimmerContainer(
                                      height: 27, width: 187),
                                  Container(
                                    height: 42,
                                    width: 42,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: HexColor("#D0D0D6")),
                                  )
                                ],
                              ),
                            ),
                          ),
                          10.verticalSpace,
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Shimmer.fromColors(
                                  baseColor: HexColor("#D5D5D5"),
                                  highlightColor:
                                      HexColor("#D5D5D5").withOpacity(0.5),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ShimmerContainer(
                                          height: 27.0, width: 124.0),
                                      ShimmerContainer(
                                          height: 27.0, width: 124.0),
                                    ],
                                  ),
                                ),
                                12.verticalSpace,
                                Shimmer.fromColors(
                                  baseColor: HexColor("#D5D5D5"),
                                  highlightColor:
                                      HexColor("#D5D5D5").withOpacity(0.5),
                                  child: Row(
                                    children: [
                                      const ShimmerContainer(
                                          height: 17.0, width: 55.0),
                                      8.horizontalSpace,
                                      const ShimmerContainer(
                                          height: 17.0, width: 55.0),
                                    ],
                                  ),
                                ),
                                12.verticalSpace,
                                Shimmer.fromColors(
                                  baseColor: HexColor("#D5D5D5"),
                                  highlightColor:
                                      HexColor("#D5D5D5").withOpacity(0.5),
                                  child: const ShimmerContainer(
                                      height: 10.0, width: 280.0),
                                ),
                                30.verticalSpace,
                                Shimmer.fromColors(
                                  baseColor: HexColor("#D5D5D5"),
                                  highlightColor:
                                      HexColor("#D5D5D5").withOpacity(0.5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const ShimmerContainer(
                                          height: 48.0, width: 148.0),
                                      10.horizontalSpace,
                                      const Expanded(
                                        child: ShimmerContainer(
                                            height: 48.0, width: 148.0),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              0.verticalSpace,
              Shimmer.fromColors(
                baseColor: HexColor("#D5D5D5"),
                highlightColor: HexColor("#D5D5D5").withOpacity(0.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const ShimmerContainer(height: 33.0, width: 100.0),
                    10.horizontalSpace,
                    const ShimmerContainer(height: 33.0, width: 100.0),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
