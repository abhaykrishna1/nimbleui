import 'package:flutter/material.dart';
import 'package:nimple_ui/src/auth/auth_screen.dart';
import 'package:nimple_ui/src/auth/view/login/view/login_mobile.dart';
import 'package:nimple_ui/src/auth/view/login/view/login_otp.dart';
import 'package:nimple_ui/src/auth/view/registration/view/register_mobile.dart';
import 'package:nimple_ui/src/auth/view/registration/view/register_otp.dart';
import 'package:nimple_ui/src/filter_screen/view/filter_screen.dart';
import 'package:nimple_ui/src/main/add_post/view/add_post_screen.dart';
import 'package:nimple_ui/src/main/view/main_screen.dart';
import 'package:nimple_ui/src/profile_detail_screen/view/profile_detail_screen.dart';

import 'package:nimple_ui/src/splash_screen/view/splash_screen.dart';

class RouteGenerator {
  static RouteGenerator? _instance;
  static RouteGenerator get instance {
    _instance ??= RouteGenerator();
    return _instance!;
  }

  static const String routeInitial = "/";
  static const String routeAuthScreen = "auth_screen";
  static const String routeWelcomeScreen = "welcome_screen";
  static const String routeServiceTypeScreen = "service_type_screen";
  static const String routeExpertiseScreen = "expertise_screen";
  static const String routeCreateYourAccountScreen =
      "create_your_account_screen";
  static const String routeMobileRegistrationScreen =
      "mobile_registration_screen";
  static const String routeMobileRegistrationOtpScreen =
      "mobile_registration_otp_screen";
  static const String routeLoginMobileScreen = "login_mobile_screen";
  static const String routeLoginOtpScreen = "login_otp_screen";
  static const String routeProfileDetailScreen = "profile_detail_screen";
  static const String routeMainScreen = "main_screen";
  static const String routefilterScreen = "filter_screen";
  static const String routeAddPostScreen = "add_post_screen";

  Route generateRoute(RouteSettings settings, {var routeBuilder}) {
    switch (settings.name) {
      case routeInitial:
        return _buildRoute(routeInitial, const SplashScreen());

      case routeAuthScreen:
        return _buildRoute(routeAuthScreen, const AuthScreen());

      case routeMobileRegistrationScreen:
        return _buildRoute(
            routeMobileRegistrationScreen, const MobileRegistrationScreenn());
      case routeMobileRegistrationOtpScreen:
        return _buildRoute(
            routeMobileRegistrationOtpScreen, const RegisterOtpScreen());
      case routeLoginMobileScreen:
        return _buildRoute(routeLoginMobileScreen, const LoginMobileScreen());
      case routeLoginOtpScreen:
        return _buildRoute(routeLoginOtpScreen, const LoginOtpScreen());
      case routeProfileDetailScreen:
        return _buildRoute(routeProfileDetailScreen, ProfileDetailScreen());
      case routeMainScreen:
        return _buildRoute(routeMainScreen, const MainScreen());
      case routefilterScreen:
        return _buildRoute(routefilterScreen, const FilterScreen());
        case routeAddPostScreen :
        return _buildRoute(routeAddPostScreen, AddPostScreen());

      default:
        return _buildRoute(routeInitial, const SplashScreen());
    }
  }

  Route _buildRoute(String route, Widget widget,
      {bool enableFullScreen = false}) {
    return MaterialPageRoute(
        builder: (_) => widget,
        fullscreenDialog: enableFullScreen,
        settings: RouteSettings(name: route));
  }
}
