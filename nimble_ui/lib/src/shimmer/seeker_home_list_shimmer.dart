import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/shimmer/widget/shimmer_container.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:shimmer/shimmer.dart';

class SeekerHomeScreenListShimmer extends StatelessWidget {
  const SeekerHomeScreenListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 5),
          child: Column(
            children: [
              Column(
                children: [
                  Shimmer.fromColors(
                    baseColor: HexColor("#EEEEF2"),
                    highlightColor: HexColor("#EEEEF2").withOpacity(0.5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShimmerContainer(
                          height: 65,
                          width: 85,
                          borderRadius: 30.0,
                        ),
                        ShimmerContainer(
                          height: 65,
                          width: 85,
                          borderRadius: 30.0,
                        ),
                        ShimmerContainer(
                          height: 65,
                          width: 85,
                          borderRadius: 30.0,
                        ),
                        ShimmerContainer(
                          height: 65,
                          width: 85,
                          borderRadius: 30.0,
                        ),
                      ],
                    ),
                  ),
                  2.verticalSpace,
                ],
              ),
              20.verticalSpace,
              Expanded(
                child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (ctx, index) {
                      return SizedBox(
                        height: 130,
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            Shimmer.fromColors(
                              baseColor: HexColor("#EEEEF2"),
                              highlightColor:
                                  HexColor("#EEEEF2").withOpacity(0.5),
                              child: Container(
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)),
                                    color: HexColor("#EEEEF2")),
                              ),
                            ),
                            10.horizontalSpace,
                            Expanded(
                              child: Shimmer.fromColors(
                                baseColor: HexColor("#EEEEF2"),
                                highlightColor:
                                    HexColor("#EEEEF2").withOpacity(0.5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Expanded(
                                          child: ShimmerContainer(
                                              height: 28, width: 157),
                                        ),
                                        15.horizontalSpace,
                                        Container(
                                          height: 34,
                                          width: 34,
                                          decoration: BoxDecoration(
                                              color: HexColor("#EEEEF2"),
                                              shape: BoxShape.circle),
                                        )
                                      ],
                                    ),
                                    10.verticalSpace,
                                    const ShimmerContainer(
                                        height: 18, width: 87),
                                    10.verticalSpace,
                                    Row(
                                      children: [
                                        const ShimmerContainer(
                                            height: 15, width: 55),
                                        10.horizontalSpace,
                                        const ShimmerContainer(
                                            height: 15, width: 55)
                                      ],
                                    ),
                                    10.verticalSpace,
                                    Row(
                                      children: [
                                        const ShimmerContainer(
                                            height: 15, width: 50),
                                        10.horizontalSpace,
                                        const ShimmerContainer(
                                            height: 15, width: 105)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (ctx, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 10),
              ),
              10.verticalSpace,
              const Divider(),
              0.verticalSpace,
              Shimmer.fromColors(
                baseColor: HexColor("#EEEEF2"),
                highlightColor: HexColor("#EEEEF2").withOpacity(0.5),
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
