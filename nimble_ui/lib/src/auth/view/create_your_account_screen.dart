import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class CreateYourAccountScreen extends StatelessWidget {
  final PageController controller;
  const CreateYourAccountScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.verticalSpace,
                Text(
                  Constants.createYourAccount,
                  style: FontPalette.black_24_600,
                ),
                8.verticalSpace,
                Text(
                  Constants.createYourAccountShort,
                  style: FontPalette.black_14_400,
                ),
                24.verticalSpace,
                const TextAndField(
                  title: Constants.fullName,
                  hintText: Constants.enterFullName,
                  suffixiconshow: false,
                ),
                12.verticalSpace,
                const TextAndField(
                  title: Constants.phoneNumber,
                  hintText: Constants.enterPhoneNumber,
                  suffixiconshow: false,
                ),
                12.verticalSpace,
                const TextAndField(
                  title: Constants.email,
                  hintText: Constants.enterEmailID,
                  suffixiconshow: false,
                ),
                12.verticalSpace,
                const TextAndField(
                  title: Constants.idProof,
                  hintText: Constants.uploadIdProof,
                  suffixiconshow: true,
                ),
                12.verticalSpace,
                const TextAndField(
                  title: Constants.profilePicture,
                  hintText: Constants.uploadProfilePicture,
                  suffixiconshow: true,
                ),
                12.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        activeColor: Colors.black,
                        value: true,
                        onChanged: (va) {}),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.black,
                        ),
                        children: const <TextSpan>[
                          TextSpan(text: 'I have read and understood Nimble '),
                          TextSpan(
                              text: 'Terms and\nConditions',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' and '),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            32.verticalSpace,
            CustomButton(
                title: "Submit",
                onpressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    RouteGenerator.routeMainScreen,
                    (route) => false,
                  );
                }),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Constants.alreadyaccount,
                  style: FontPalette.black_14_400,
                ),
                4.horizontalSpace,
                Text(
                  Constants.login,
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: HexColor("#772077")),
                )
              ],
            ),
            19.verticalSpace,
          ],
        ),
      ),
    );
  }
}

class TextAndField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool suffixiconshow;
  const TextAndField(
      {super.key,
      required this.title,
      required this.hintText,
      required this.suffixiconshow});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
        6.verticalSpace,
        TextFormField(
          decoration: InputDecoration(
              suffixIcon: suffixiconshow
                  ? Transform.scale(
                      scale: 0.5,
                      child: SvgPicture.asset(
                        Assets.uploadSvg,
                        height: 16.h,
                        width: 16.w,
                      ),
                    )
                  : const SizedBox(),
              border: const OutlineInputBorder(),
              hintText: hintText,
              hintStyle:
                  TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp)),
        )
      ],
    );
  }
}
