import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/src/auth/auth_screen.dart';
import 'package:nimple_ui/utils/color_palate.dart';

class LoginOtpScreen extends StatelessWidget {
  const LoginOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15.0, right: 15, top: 15, bottom: 35),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Constants.enterOtp,
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.w600),
                    ),
                    8.verticalSpace,
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: HexColor("#616068"),
                        ),
                        children: const <TextSpan>[
                          TextSpan(text: Constants.otpScreenShort),
                          TextSpan(
                              text: ' Change',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    54.verticalSpace,
                    OtpTextField(
                      numberOfFields: 6,
                      borderColor: Colors.red,
                      focusedBorderColor: Colors.black,
                      // enabledBorderColor: Colors.red,
                      fieldWidth: 45.w,
                      fillColor: Colors.black,
                      cursorColor: Colors.black,
                      showFieldAsBox: true,

                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationCode) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AuthScreen()),
                        );
                        // showDialog(
                        //     context: context,
                        //     builder: (context) {
                        //       return AlertDialog(
                        //         title: const Text("Verification Code"),
                        //         content:
                        //             Text('Code entered is $verificationCode'),
                        //       );
                        //     });
                      },
                    ),
                    11.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          Constants.resendCode,
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w400),
                        ),
                        6.horizontalSpace,
                        Text(
                          "0.40",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "Login with Email ID",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
