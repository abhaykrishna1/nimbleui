import 'package:flutter/material.dart';
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
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushNamedAndRemoveUntil(
          context, RouteGenerator.routeLoginMobileScreen, (_) => false);
    });
    // Future.delayed(const Duration(seconds: 2)).then((value) {
    //   Navigator.pushNamedAndRemoveUntil(
    //       context, RouteGenerator.routeMainScreen, (_) => false);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(bottom: 28.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(Constants.name, style: FontPalette.bold_50_772077),
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
