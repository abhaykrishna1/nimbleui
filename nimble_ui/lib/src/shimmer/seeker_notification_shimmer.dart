import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/shimmer/widget/shimmer_container.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:shimmer/shimmer.dart';

class NotificationShimmerScreen extends StatelessWidget {
  const NotificationShimmerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return Container(
                  width: double.maxFinite,
                  //   color: HexColor("#F8F8F9"),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Shimmer.fromColors(
                            baseColor: HexColor("#EEEEF2"),
                            highlightColor:
                                HexColor("#EEEEF2").withOpacity(0.5),
                            child: Container(
                              height: 43.h,
                              width: 43.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: HexColor("#EEEEF2"),
                              ),
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
                                  const ShimmerContainer(height: 7, width: 227),
                                  10.verticalSpace,
                                  const ShimmerContainer(height: 7, width: 227),
                                  8.verticalSpace,
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 66.w),
                        child: Shimmer.fromColors(
                          baseColor: HexColor("#EEEEF2"),
                          highlightColor: HexColor("#EEEEF2").withOpacity(0.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const ShimmerContainer(
                                height: 27,
                                width: 70,
                              ),
                              20.horizontalSpace,
                              const ShimmerContainer(
                                height: 7,
                                width: 100,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ));
            },
            separatorBuilder: (ctx, index) {
              return const Divider();
            },
            itemCount: 10),
      ),
    );
  }
}
