// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

import '../../../generate/assets.dart';

// ignore: must_be_immutable
class EmptyScreen extends StatelessWidget {
  EmptyScreen({super.key, required this.emptyScreensType});
  EmptyScreeens emptyScreensType;
  @override
  Widget build(BuildContext context) {
    switch (emptyScreensType) {
      case EmptyScreeens.noBookingScreen:
        return const EmptyStatusScreen(
          icon: Assets.emptybookingicon,
          buttonShow: true,
          subTitle:
              "Booking list empty? Explore our services and make your first reservation today.",
          mainTitle: "No Booking Yet",
          buttonTitle: "Explore services",
        );
      case EmptyScreeens.nochatScreen:
        return const EmptyStatusScreen(
          icon: Assets.emptymsgicon,
          subTitle:
              "When service providers reach out to you, their messages will appear here.",
          mainTitle: "No chats yet",
          buttonShow: false,
          buttonTitle: "",
        );
      case EmptyScreeens.nopost:
        return const EmptyStatusScreen(
          icon: Assets.emptybookingicon,
          buttonShow: true,
          subTitle:
              "Booking list empty? Explore our services and make your first reservation today.",
          mainTitle: "No Booking Yet",
          buttonTitle: "Find job",
        );
      case EmptyScreeens.noNotification:
        return const EmptyStatusScreen(
          icon: Assets.notification,
          subTitle:
              "Your notification feed is quiet right now. Stay tuned for updates and important messages.",
          mainTitle: "No Notifications Yet",
          buttonShow: false,
          buttonTitle: "",
        );
      case EmptyScreeens.nofavorites:
        return const EmptyStatusScreen(
          icon: Assets.favoriteicon,
          subTitle:
              "When you bookmark a service provider, your list will appear right here.",
          mainTitle: "Your Favorites is Empty",
          buttonShow: false,
          buttonTitle: "",
        );
      case EmptyScreeens.oppsServer:
        return const EmptyStatusScreen(
          icon: Assets.emptyServer,
          subTitle: "We're working to fix the issue. Please try again later.",
          mainTitle: "Oops, Server Error",
          buttonShow: false,
          buttonTitle: "",
        );

      default:
        return const Text("Default");
    }
  }
}

class EmptyStatusScreen extends StatelessWidget {
  final String icon;
  final String mainTitle;
  final String subTitle;
  final bool buttonShow;
  final String buttonTitle;
  const EmptyStatusScreen(
      {super.key,
      required this.icon,
      required this.buttonShow,
      required this.buttonTitle,
      required this.mainTitle,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(35.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(25),
                height: 95.h,
                width: 95.w,
                decoration: BoxDecoration(
                    color: HexColor("#F5F4F8"), shape: BoxShape.circle),
                child: SizedBox(
                  child: SvgPicture.asset(
                    icon,
                    color: HexColor("#772077"),
                  ),
                ),
              ),
              16.verticalSpace,
              Text(
                mainTitle,
                style: FontPalette.black_16_600.copyWith(
                  fontSize: 20.sp,
                ),
              ),
              10.verticalSpace,
              Text(
                subTitle,
                style: FontPalette.black_14_400,
                textAlign: TextAlign.center,
              ),
              25.verticalSpace,
              buttonShow
                  ? CustomButton(title: buttonTitle, onpressed: () {})
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}

enum EmptyScreeens {
  noBookingScreen,
  nochatScreen,
  nopost,
  noNotification,
  oppsServer,
  nofavorites
}
