import 'package:flutter/material.dart';
import 'package:nimple_ui/src/auth/auth_screen.dart';
import 'package:nimple_ui/src/auth/view/login/view/login_mobile.dart';
import 'package:nimple_ui/src/auth/view/login/view/login_otp.dart';
import 'package:nimple_ui/src/auth/view/registration/view/register_mobile.dart';
import 'package:nimple_ui/src/auth/view/registration/view/register_otp.dart';
import 'package:nimple_ui/src/chat_screen/view/chat_screen.dart';
import 'package:nimple_ui/src/filter_screen/view/filter_screen.dart';
import 'package:nimple_ui/src/add_post/view/add_post_screen.dart';
import 'package:nimple_ui/src/filterselection_screen/view/filter_selection_screen.dart';
import 'package:nimple_ui/src/help_center_screen/view/help_center_screen.dart';
import 'package:nimple_ui/src/main/view/main_screen.dart';
import 'package:nimple_ui/src/notification/view/notification_screen.dart';
import 'package:nimple_ui/src/profile_detail_screen/view/profile_detail_screen.dart';
import 'package:nimple_ui/src/settings/view/settings_screen.dart';

import 'package:nimple_ui/src/splash_screen/view/splash_screen.dart';
import 'package:nimple_ui/src/task_info/view/task_info_screen.dart';

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
  static const String routeFilterSelectionScreen = "filter_selection_screen";
  static const String routeNotificationScreen = "notification_screen";
  static const String routechatscreen = "chat_screen";
  static const String routehelpcenterscreen = "help_center_screen";
  static const String routesettingsscreen = "settings_screen";
  static const String routetaskinfoscreen = "task_info_screen";

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
        return _buildRoute(
            routeProfileDetailScreen, const ProfileDetailScreen());
      case routeMainScreen:
        return _buildRoute(routeMainScreen, const MainScreen());
      case routefilterScreen:
        return _buildRoute(routefilterScreen, const FilterScreen());
      case routeAddPostScreen:
        return _buildRoute(routeAddPostScreen, const AddPostScreen());
      case routeFilterSelectionScreen:
        return _buildRoute(routeFilterSelectionScreen, FilterSelectionScreen());
      case routeNotificationScreen:
        return _buildRoute(routeNotificationScreen, const NotificationScreen());
      case routechatscreen:
        return _buildRoute(routechatscreen,  ChatScreen());
      case routehelpcenterscreen:
        return _buildRoute(routehelpcenterscreen, HelpCenterScreen());
        case routesettingsscreen:
        return _buildRoute(routesettingsscreen, SettingsScreen());
        case routetaskinfoscreen:
        return _buildRoute(routetaskinfoscreen, TaskInfoScreen());

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
