import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class LoginMobileScreen extends StatelessWidget {
  const LoginMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // leading: GestureDetector(
            //     onTap: () {
            //       Navigator.pop(context);
            //     },
            //     child: const Icon(Icons.arrow_back_ios)),
            ),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 15.0, right: 15, top: 15, bottom: 35),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Constants.getStarted,
                      style: TextStyle(
                          fontSize: 24.sp, fontWeight: FontWeight.w600),
                    ),
                    8.verticalSpace,
                    Text(
                      Constants.getStartShot,
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ),
                    24.verticalSpace,
                    Text(
                      "Mobile",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w500),
                    ),
                    6.verticalSpace,
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 20.h,
                                  width: 20.h,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://5.imimg.com/data5/SELLER/Default/2022/7/JC/AR/QT/3917006/govt-approved-national-flag-500x500.png"),
                                          fit: BoxFit.fill)),
                                ),
                                4.horizontalSpace,
                                Text(
                                  "+91",
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                                4.horizontalSpace,
                                GestureDetector(
                                    onTap: () {
                                      showCountryPicker(
                                          context: context,
                                          // ignore: prefer_const_constructors
                                          countryListTheme:
                                              CountryListThemeData(
                                            flagSize: 25,
                                            bottomSheetHeight: 400.h,
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                          ),
                                          onSelect: (data) {
                                            debugPrint(data.countryCode);
                                          });
                                    },
                                    child: Icon(
                                      Icons.keyboard_arrow_down_outlined,
                                      size: 23.h,
                                    )),
                                Container(
                                  height: 20.h,
                                  width: 1,
                                  color: HexColor("#D3D3D3"),
                                )
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New to Nimble?",
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                  ),
                  4.horizontalSpace,
                  Text(
                    Constants.register,
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: HexColor("#772077")),
                  )
                ],
              ),
              15.verticalSpace,
              SizedBox(
                width: double.maxFinite,
                child: CustomButton(
                    title: "Continue",
                    onpressed: () {
                      Navigator.pushNamed(
                        context,
                        RouteGenerator.routeLoginOtpScreen,
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
