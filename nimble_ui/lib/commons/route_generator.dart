import 'package:flutter/material.dart';
import 'package:nimple_ui/src/auth/auth_screen.dart';
import 'package:nimple_ui/src/auth/view/login/view/login_mobile.dart';
import 'package:nimple_ui/src/auth/view/login/view/login_otp.dart';
import 'package:nimple_ui/src/auth/view/registration/view/register_mobile.dart';
import 'package:nimple_ui/src/auth/view/registration/view/register_otp.dart';
import 'package:nimple_ui/src/chat_screen/model/chat_screen_model.dart';
import 'package:nimple_ui/src/chat_screen/view/chat_screen.dart';
import 'package:nimple_ui/src/filter_screen/view/filter_screen.dart';
import 'package:nimple_ui/src/add_post/view/add_post_screen.dart';
import 'package:nimple_ui/src/filterselection_screen/view/filter_selection_screen.dart';
import 'package:nimple_ui/src/help_center_screen/view/help_center_screen.dart';
import 'package:nimple_ui/src/location/view/location_screen.dart';
import 'package:nimple_ui/src/main/view/main_screen.dart';
import 'package:nimple_ui/src/notification/view/notification_screen.dart';
import 'package:nimple_ui/src/payment_done/view/payment_done_screen.dart';
import 'package:nimple_ui/src/privacy_policy_screen/view/privacy_policy_screen.dart';
import 'package:nimple_ui/src/profile_detail_screen/view/profile_detail_screen.dart';
import 'package:nimple_ui/src/provider/create_ticket/view/create_ticker_screen.dart';
import 'package:nimple_ui/src/provider/provider_add_bank_account_screen/view/provider_add_bank_account_screen.dart';
import 'package:nimple_ui/src/provider/provider_bank_account_screen/view/provider_bank_account_screeen.dart';
import 'package:nimple_ui/src/provider/provider_main/view/provider_main_screen.dart';
import 'package:nimple_ui/src/provider/provider_my_profile_screen.dart/view/provider_myprofile_screen.dart';
import 'package:nimple_ui/src/provider/view_profile/view/view_profile_screen.dart';
import 'package:nimple_ui/src/settings/view/settings_screen.dart';

import 'package:nimple_ui/src/splash_screen/view/splash_screen.dart';
import 'package:nimple_ui/src/task_info/view/task_info_screen.dart';
import 'package:nimple_ui/src/terms_and_conditions/view/terms_and_conditions_screen.dart';

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
  static const String routelocationScreen = "location_screen";
  static const String routepaymentdonescreen = "payment_done_screen";
  static const String routeprovidermyprofilescreen =
      "provider_myprofile_screen";
  static const String routebankaccountscreen = "provider_bank_account_screen";
  static const String routeaddbankaccountscreen =
      "provider_add_bank_account_screen";

  static const String routeprivacypolicyscreen = "privacy_policy_screen";
  static const String routetermsandconditions = "terms_and_conditions";
  static const String routeviewprofilescreen = "view_profile_screen";
  static const String routecreatetickerscreen = "create_ticket_screen";

  /// provider route

  static const String routeprovidermainscreen = "provider_main_screen";

  Route generateRoute(RouteSettings settings, {var routeBuilder}) {
    var args = settings.arguments;
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
      // case routechatscreen:
      //   return _buildRoute(routechatscreen, ChatScreen());
      case routehelpcenterscreen:
        return _buildRoute(routehelpcenterscreen, HelpCenterScreen());
      case routesettingsscreen:
        return _buildRoute(routesettingsscreen, SettingsScreen());
      case routetaskinfoscreen:
        return _buildRoute(routetaskinfoscreen, TaskInfoScreen());
      case routelocationScreen:
        return _buildRoute(routelocationScreen, LocationScreen());
      case routepaymentdonescreen:
        return _buildRoute(routepaymentdonescreen, PaymentDoneScreen());

      case routeprovidermainscreen:
        return _buildRoute(routeprovidermainscreen, ProviderMainScreen());
      case routeprovidermyprofilescreen:
        return _buildRoute(
            routeprovidermyprofilescreen, ProviderMyProfileScreen());

      case routebankaccountscreen:
        return _buildRoute(routebankaccountscreen, ProviderBankAccountScreen());
      case routeaddbankaccountscreen:
        return _buildRoute(
            routeaddbankaccountscreen, ProviderAddBankAccountScreen());

      case routeprivacypolicyscreen:
        return _buildRoute(routeprivacypolicyscreen, PrivacyPolicyScreen());
      case routetermsandconditions:
        return _buildRoute(routetermsandconditions, TermsAndConditionsScreen());
      case routeviewprofilescreen:
        return _buildRoute(routeviewprofilescreen, ViewProfileScreen());
      case routecreatetickerscreen:
        return _buildRoute(routecreatetickerscreen, CreateTickerScreen());

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
