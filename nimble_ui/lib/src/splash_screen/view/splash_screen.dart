import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // splash to login

    // Future.delayed(const Duration(seconds: 2)).then((value) {
    //   Navigator.pushNamedAndRemoveUntil(
    //       context, RouteGenerator.routeLoginMobileScreen, (_) => false);
    // });

    // splash to home

    // Future.delayed(const Duration(seconds: 2)).then((value) {
    //   Navigator.pushNamedAndRemoveUntil(
    //       context, RouteGenerator.routeMainScreen, (_) => false);
    // });

    // splash to provider home

    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushNamedAndRemoveUntil(
          context, RouteGenerator.routeprovidermainscreen, (_) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: Center(
                child: Text(
              Constants.name,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 50.sp,
                  color: HexColor("#772077")),
            )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              Constants.splashBottmText,
              style: TextStyle(color: HexColor("#6D6D6D")),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "V.0.01",
              style: TextStyle(color: HexColor("#6D6D6D")),
            ),
          )
        ],
      ),
    ));
  }
}
