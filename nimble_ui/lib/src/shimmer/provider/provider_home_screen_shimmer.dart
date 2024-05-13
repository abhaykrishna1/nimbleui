import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProviderHomeScreenShimmer extends StatelessWidget {
  const ProviderHomeScreenShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Shimmer.fromColors(
          baseColor: const Color(0xFFF4F4F4),
          highlightColor: const Color(0xFFF4F4F4).withOpacity(0.5),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 5),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 65,
                            width: 85,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          Container(
                            height: 65,
                            width: 125,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          Container(
                            height: 65,
                            width: 125,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ],
                      ),
                      27.verticalSpace,
                      Container(
                        height: 180,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade400,
                        ),
                      ),
                      10.verticalSpace,
                      Expanded(
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (ctx, index) {
                              return Container(
                                height: 120,
                                width: double.maxFinite,
                                color: Colors.grey,
                              );
                            },
                            separatorBuilder: (ctx, index) {
                              return const SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: 3),
                      )
                    ],
                  ),
                ),
                20.verticalSpace,
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                    10.horizontalSpace,
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.grey.shade400,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
