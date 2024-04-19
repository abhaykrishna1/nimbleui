import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/provider/provider_my_profile_screen.dart/widget/heading_and_textform_widget.dart';
import 'package:nimple_ui/src/provider/provider_my_profile_screen.dart/widget/heading_container_widget.dart';
import 'package:nimple_ui/src/provider/provider_my_profile_screen.dart/widget/provider_myprofile_select_dialog_widget.dart';
import 'package:nimple_ui/src/provider/provider_my_profile_screen.dart/widget/radio_button_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class ProviderMyProfileScreen extends StatelessWidget {
  ProviderMyProfileScreen({super.key});

  List<String> languageList = ["Malayalam", "English", "French", "Hindi"];

  List<String> availablityList = [
    "Every day",
    "Every Monday",
    "Every Tuesday",
    "Every wednesday",
    "Every Thursday",
    "Every Friday",
    "Every Saturday",
    "Every Sunday"
  ];

  final TextEditingController controllerfullname = TextEditingController();

  final TextEditingController controllerphone = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    controllerphone.text = "242424224";
    controllerfullname.text = "AnnRobinson";
    emailController.text = "info@gmail.com";
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: false,
        title: Text(
          "My Profile",
          style: FontPalette.black_18_600,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    20.verticalSpace,
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 100.w,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  child: SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: SvgPicture.asset(Assets.cameraicon),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    15.verticalSpace,
                    HeadingAndTextFormWidget(
                      controller: controllerfullname,
                      hintText: "Ann Robinson",
                      heading: "Full name",
                    ),
                    HeadingAndTextFormWidget(
                      controller: controllerphone,
                      hintText: "810820830",
                      heading: "Phone",
                    ),
                    HeadingAndTextFormWidget(
                      controller: emailController,
                      hintText: "info@gmail.com",
                      heading: "Email",
                    ),
                    10.verticalSpace,
                    10.verticalSpace,
                    Text(
                      "Gender",
                      style: FontPalette.black_14_400.copyWith(
                          fontWeight: FontWeight.w500,
                          color: HexColor("#C7C6CD")),
                    ),
                    Wrap(
                      children: [
                        ProviderRadioButtonWidget(value: 1, title: "Male"),
                        ProviderRadioButtonWidget(value: 2, title: "Female"),
                        ProviderRadioButtonWidget(value: 3, title: "Other")
                      ],
                    ),
                    10.verticalSpace,
                    HeadingContainerWidget(
                      showText: false,
                      heading: "Date of Birth",
                      data: "18/08/2004",
                      ontap: () {},
                    ),
                    10.verticalSpace,
                    Text(
                      "Bio",
                      style: FontPalette.black_14_400.copyWith(
                          fontWeight: FontWeight.w500,
                          color: HexColor("#C7C6CD")),
                    ),
                    8.verticalSpace,
                    Container(
                      padding: EdgeInsets.only(
                          left: 12.w, right: 12.w, top: 12.h, bottom: 40.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: HexColor("#C7C6CD"))),
                      child: Text(
                        "Hi there! I'm Robinson, a dedicated and compassionate home nurse with a passion for providing personalized care. With years of experience in nursing, I bring a warm and empathetic approach to every home I visit.",
                        style: FontPalette.black_16_600.copyWith(
                            fontWeight: FontWeight.w500,
                            color: HexColor("#616068")),
                      ),
                    ),
                    12.verticalSpace,
                    HeadingContainerWidget(
                      showText: false,
                      heading: "Language",
                      data: "Malayalam",
                      ontap: () {
                        showGeneralDialog(
                          barrierLabel: "Label",
                          barrierDismissible: true,
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionDuration: const Duration(milliseconds: 300),
                          context: context,
                          pageBuilder: (context, anim1, anim2) {
                            return ProviderMyProfileSelectWidget(
                              height: 400,
                              selectionList: languageList,
                            );
                          },
                          transitionBuilder: (context, anim1, anim2, child) {
                            return SlideTransition(
                              position: Tween(
                                      begin: const Offset(0, 1),
                                      end: const Offset(0, 0))
                                  .animate(anim1),
                              child: child,
                            );
                          },
                        );
                      },
                    ),
                    12.verticalSpace,
                    HeadingContainerWidget(
                      showText: false,
                      heading: "Availability",
                      data: "Mon, Tue, Wed,Thu and Fri",
                      ontap: () {
                        showGeneralDialog(
                          barrierLabel: "Label",
                          barrierDismissible: true,
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionDuration: const Duration(milliseconds: 300),
                          context: context,
                          pageBuilder: (context, anim1, anim2) {
                            return ProviderMyProfileSelectWidget(
                              height: 500,
                              selectionList: availablityList,
                            );
                          },
                          transitionBuilder: (context, anim1, anim2, child) {
                            return SlideTransition(
                              position: Tween(
                                      begin: const Offset(0, 1),
                                      end: const Offset(0, 0))
                                  .animate(anim1),
                              child: child,
                            );
                          },
                        );
                      },
                    ),
                    12.verticalSpace,
                    HeadingContainerWidget(
                      showText: true,
                      heading: "Service",
                      data: "",
                      ontap: () {
                        showGeneralDialog(
                          barrierLabel: "Label",
                          barrierDismissible: true,
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionDuration: const Duration(milliseconds: 300),
                          context: context,
                          pageBuilder: (context, anim1, anim2) {
                            return const ProviderMyProfileSelectWidget(
                              height: 400,
                              selectionList: ["Care", "Clean", "Cook"],
                            );
                          },
                          transitionBuilder: (context, anim1, anim2, child) {
                            return SlideTransition(
                              position: Tween(
                                      begin: const Offset(0, 1),
                                      end: const Offset(0, 0))
                                  .animate(anim1),
                              child: child,
                            );
                          },
                        );
                      },
                    ),
                    12.verticalSpace,
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6),
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: HexColor("#EEEEF2")),
                              child: SizedBox(
                                height: 20,
                                width: 20,
                                child: SvgPicture.asset(Assets.carebordericon),
                              ),
                            ),
                            10.horizontalSpace,
                            Text(
                              "Care",
                              style: FontPalette.black_16_600,
                            )
                          ],
                        ),
                        12.verticalSpace,
                        HeadingContainerWidget(
                          showText: true,
                          heading: "Type of Service",
                          data: "",
                          ontap: () {
                            showGeneralDialog(
                              barrierLabel: "Label",
                              barrierDismissible: true,
                              barrierColor: Colors.black.withOpacity(0.5),
                              transitionDuration:
                                  const Duration(milliseconds: 300),
                              context: context,
                              pageBuilder: (context, anim1, anim2) {
                                return const ProviderMyProfileSelectWidget(
                                  height: 400,
                                  selectionList: ["Care", "Clean", "Cook"],
                                );
                              },
                              transitionBuilder:
                                  (context, anim1, anim2, child) {
                                return SlideTransition(
                                  position: Tween(
                                          begin: const Offset(0, 1),
                                          end: const Offset(0, 0))
                                      .animate(anim1),
                                  child: child,
                                );
                              },
                            );
                          },
                        ),
                        12.verticalSpace,
                        HeadingContainerWidget(
                          showText: false,
                          heading: "Price",
                          data: "12/hr",
                          ontap: () {
                            showGeneralDialog(
                              barrierLabel: "Label",
                              barrierDismissible: true,
                              barrierColor: Colors.black.withOpacity(0.5),
                              transitionDuration:
                                  const Duration(milliseconds: 300),
                              context: context,
                              pageBuilder: (context, anim1, anim2) {
                                return ProviderMyProfileSelectWidget(
                                  height: 500,
                                  selectionList: availablityList,
                                );
                              },
                              transitionBuilder:
                                  (context, anim1, anim2, child) {
                                return SlideTransition(
                                  position: Tween(
                                          begin: const Offset(0, 1),
                                          end: const Offset(0, 0))
                                      .animate(anim1),
                                  child: child,
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                    12.verticalSpace,
                    HeadingContainerWidget(
                      showText: false,
                      heading: "Location",
                      icon: Assets.locationSearch,
                      data: "",
                      ontap: () {},
                    ),
                    12.verticalSpace,
                    HeadingContainerWidget(
                      showText: false,
                      heading: "Documents",
                      icon: Assets.attachfileicon,
                      data: "",
                      ontap: () {},
                    ),
                    const SizedBox(
                      height: 200,
                    )
                  ],
                ),
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.maxFinite,
              child: CustomButton(title: "Save Changes", onpressed: () {}),
            ),
          )
        ],
      ),
    );
  }
}
