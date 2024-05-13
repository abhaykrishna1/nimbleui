import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SeekerProfileScreenShimmer extends StatelessWidget {
  const SeekerProfileScreenShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Shimmer.fromColors(
        baseColor: const Color(0xFFF4F4F4),
        highlightColor: const Color(0xFFF4F4F4).withOpacity(0.5),
        child: ListView(
          children: [
            Container(
              height: 400,
              width: double.maxFinite,
              color: Colors.grey,
            ),
            10.verticalSpace,
            // Container(
            //   clipBehavior: Clip.antiAliasWithSaveLayer,
            //   transform: Matrix4.translationValues(0, -32, 0),
            //   height: 1000,
            //   width: double.maxFinite,
            //   decoration: const BoxDecoration(color: Colors.black),
            // )

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        height: 60,
                        width: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                      )
                    ],
                  ),
                  10.verticalSpace,
                  Container(
                    height: 100,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  10.verticalSpace,
                  Container(
                    height: 100,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
