import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        title: Text(
          "Terms and Conditions",
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
                "Thank you for choosing Nimble, your go-to platform for personalized services, including cooking, caregiving, and cleaning. By using Nimble, you agree to the following terms and conditions.",
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
                          "Acceptance of Terms",
                          style: FontPalette.black_16_600,
                        ),
                        10.verticalSpace,
                        Text(
                          "When you register for Nimble, we may collect personal information such as your name, contact details, and payment information.When you register for Nimble, we may collect personal information such as your name, contact details, and payment information.When you register for Nimble, we may collect personal information such as your name, and payment information.",
                          style: FontPalette.black_14_400,
                        )
                      ],
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                  itemCount: 10)
            ],
          ),
        ),
      ),
    );
  }
}
