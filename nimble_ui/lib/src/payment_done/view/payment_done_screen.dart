import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generated/assets.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class PaymentDoneScreen extends StatefulWidget {
  const PaymentDoneScreen({super.key});

  @override
  State<PaymentDoneScreen> createState() => _PaymentDoneScreenState();
}

class _PaymentDoneScreenState extends State<PaymentDoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                60.verticalSpace,
                SizedBox(
                  height: 200,
                  width: 200,
                  child: SvgPicture.asset(Assets.paydone),
                ),
                40.verticalSpace,
                Text(
                  "Payment done!",
                  style: FontPalette.black_14_600.copyWith(fontSize: 22.sp),
                ),
                0.verticalSpace,
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Your payment has been successfully completed. Thank you",
                    textAlign: TextAlign.center,
                    style: FontPalette.black_14_400
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                6.verticalSpace,
                SizedBox(
                    width: double.maxFinite,
                    child: CustomButton(
                        title: "Go to home",
                        onpressed: () {
                          Navigator.pushNamedAndRemoveUntil(context,
                              RouteGenerator.routeMainScreen, (_) => false);
                        }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
