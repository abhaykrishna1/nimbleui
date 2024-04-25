import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        title: Text(
          "Privacy Policy",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.verticalSpace,
              Text(
                "Last modified: 20/12/2023",
                style: FontPalette.black_14_400
                    .copyWith(color: HexColor("#616068")),
              ),
              20.verticalSpace,
              Text(
                "Thank you for choosing Nimble, where we provide personalized services such as cooking, caregiving, and cleaning. This Privacy Policy outlines how we collect, use, disclose, and protect your information when you use our services.",
                style: FontPalette.black_14_400,
              ),
              24.verticalSpace,
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Information we collect",
                          style: FontPalette.black_18_600,
                        ),
                        ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (ctx, index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 15),
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black),
                                          height: 7,
                                          width: 7,
                                        ),
                                        12.horizontalSpace,
                                        Text(
                                          "Personal information",
                                          style: FontPalette.black_16_600,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Text(
                                      "When you register for Nimble, we may collect personal information such as your name, contact details, and payment information.When you register for Nimble, we may collect personal information such as your name, contact details, and payment information.When you register for Nimble, we may collect personal informatio",
                                      style: FontPalette.black_14_400,
                                    ),
                                  )
                                ],
                              );
                            },
                            separatorBuilder: (ctx, index) {
                              return const SizedBox();
                            },
                            itemCount: 3),
                      ],
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return const SizedBox();
                  },
                  itemCount: 3),
              0.verticalSpace,
              Text(
                "Contact us",
                style: FontPalette.black_18_600,
              ),
              10.verticalSpace,
              Text(
                "If you have any questions or concerns about our Privacy Policy, please contact us at [contact@nimbleapp.com].By using Nimble, you agree to the terms outlined in this Privacy Policy.",
                style: FontPalette.black_14_400,
              ),
              30.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
