import 'package:flutter/material.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:shimmer/shimmer.dart';

class SeekerBookingScreenShimmer extends StatelessWidget {
  const SeekerBookingScreenShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EEEEF2"),
      body: SafeArea(
        child: Shimmer.fromColors(
            baseColor: const Color(0xFFF4F4F4),
            highlightColor: const Color(0xFFF4F4F4).withOpacity(0.5),
            child: ListView.separated(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                itemBuilder: (ctx, index) {
                  return Container(
                    height: 120,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 6)),
      ),
    );
  }
}
