
import 'package:flutter/material.dart';
import 'package:nimple_ui/utils/color_palate.dart';

class ShimmerContainer extends StatelessWidget {
  final double height;
  final double width;
  final double? borderRadius;
  const ShimmerContainer(
      {super.key,
      required this.height,
      required this.width,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                borderRadius == null ? 20 : borderRadius!),
            color: HexColor("#EEEEF2")));
  }
}