import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EEEEF2"),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          Constants.settings,
          style: FontPalette.black_18_600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "App permission",
                    style: FontPalette.black_16_600,
                  ),
                  14.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notification",
                        style: FontPalette.black_14_400,
                      ),
                      Transform.scale(
                        scale: 0.9,
                        child: Switch(
                          value: true,
                          onChanged: (va) {},
                          activeTrackColor: HexColor("#27B67C"),
                          activeColor: Colors.white,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                        ),
                      )
                    ],
                  ),
                  16.verticalSpace,
                  Text(
                    "Legal",
                    style: FontPalette.black_16_600,
                  ),
                  14.verticalSpace,
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RouteGenerator.routetermsandconditions);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Terms and conditions",
                          style: FontPalette.black_14_400,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                  20.verticalSpace,
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, RouteGenerator.routeprivacypolicyscreen);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Privacy policy",
                          style: FontPalette.black_14_400,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            12.verticalSpace,
            InkWell(
              onTap: () {
                showGeneralDialog(
                  barrierLabel: "Label",
                  barrierDismissible: true,
                  barrierColor: Colors.black.withOpacity(0.5),
                  transitionDuration: const Duration(milliseconds: 300),
                  context: context,
                  pageBuilder: (context, anim1, anim2) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: IntrinsicHeight(
                        child: Material(
                            color: Colors.transparent,
                            child: Container(
                              // constraints: BoxConstraints(maxHeight: 400),
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      margin: const EdgeInsets.all(14),
                                      height: 4.h,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.black),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.w,
                                        right: 16.w,
                                        top: 0.h,
                                        bottom: 0.h),
                                    child: Text(
                                      "Select the account you wish to delete.",
                                      style: FontPalette.black_16_600,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                height: 56.h,
                                                width: 56.w,
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                                                        fit: BoxFit.cover))),
                                            16.horizontalSpace,
                                            Text("Service seeker",
                                                style: FontPalette.black_16_600
                                                    .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ],
                                        ),
                                        AnimatedContainer(
                                            curve: Curves.easeIn,
                                            duration: const Duration(
                                                milliseconds: 300),
                                            padding: const EdgeInsets.all(5),
                                            height: 24.h,
                                            width: 24.w,
                                            decoration: BoxDecoration(
                                                color: HexColor("#772077"),
                                                shape: BoxShape.circle),
                                            child: SvgPicture.asset(
                                                Assets.doneIcon)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.0.w, right: 16.w),
                                    child: Divider(),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                height: 56.h,
                                                width: 56.w,
                                                decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                                                        fit: BoxFit.cover))),
                                            16.horizontalSpace,
                                            Text("Service Provider",
                                                style: FontPalette.black_16_600
                                                    .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ],
                                        ),
                                        AnimatedContainer(
                                            curve: Curves.easeIn,
                                            duration: const Duration(
                                                milliseconds: 300),
                                            padding: const EdgeInsets.all(5),
                                            height: 24.h,
                                            width: 24.w,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle),
                                            child: SvgPicture.asset(
                                                Assets.doneIcon)),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // height: 200,
                                    //  padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
                                    width: double.maxFinite,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Divider(
                                          height: 0,
                                        ),
                                        10.verticalSpace,
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 18, right: 18, bottom: 18),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: CustomButton(
                                                    textColor: "#1F1E24",
                                                    color: "#EEEEF2",
                                                    title: "Cancel",
                                                    onpressed: () {
                                                      debugPrint("object");
                                                    }),
                                              ),
                                              10.horizontalSpace,
                                              Expanded(
                                                child: CustomButton(
                                                    title: "Delete",
                                                    onpressed: () {
                                                      debugPrint("object");
                                                    }),
                                              ),
                                            ],
                                          ),
                                        ),
                                        //  2.verticalSpace
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
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
              child: Container(
                padding: EdgeInsets.only(
                    left: 16.w, bottom: 20.h, top: 20.h, right: 16.w),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Text(
                  "Delete account",
                  style: FontPalette.black_16_600
                      .copyWith(fontWeight: FontWeight.w500, color: Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
