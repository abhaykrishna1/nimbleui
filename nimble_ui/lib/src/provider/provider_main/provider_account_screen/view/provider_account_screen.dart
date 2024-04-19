import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/account_list_widget.dart';
import 'package:nimple_ui/widget/my_account_dialog_widget.dart';

class ProviderAccountScreen extends StatelessWidget {
  const ProviderAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#EEEEF2"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              //mainAxisSize: MainAxisSize.max,
              //  crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                30.verticalSpace,
                Container(
                  height: 90,
                  width: 91.w,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww"),
                        fit: BoxFit.cover),
                  ),
                ),
                10.verticalSpace,
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    showGeneralDialog(
                      barrierLabel: "Label",
                      barrierDismissible: true,
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: const Duration(milliseconds: 300),
                      context: context,
                      pageBuilder: (context, anim1, anim2) {
                        return const MyAccountDialogWidget();
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
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ann Robinson",
                        style: FontPalette.black_18_600,
                      ),
                      5.horizontalSpace,
                      Container(
                        height: 27,
                        width: 29.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: HexColor("#EEEEF2")),
                            shape: BoxShape.circle,
                            color: Colors.white),
                        child: const Center(
                          child: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                11.verticalSpace,
                Text(
                  "Toronto, ON M4S 0B8, Canada",
                  style: FontPalette.black_14_400,
                ),
                11.verticalSpace,
                Container(
                  padding: EdgeInsets.only(
                      left: 14.w, right: 14.w, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.black),
                  child: Text(
                    "Service Provider",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                25.verticalSpace,
                Container(
                    padding: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white),
                    child: Column(
                      children: [
                        AccountListWidget(
                            title: "My profile",
                            icon: Assets.accountCircle,
                            ontap: () {
                              Navigator.pushNamed(context,
                                  RouteGenerator.routeprovidermyprofilescreen);
                            }),
                        const Divider(),
                        AccountListWidget(
                            title: "Settings",
                            icon: Assets.settings,
                            ontap: () {
                              Navigator.pushNamed(
                                  context, RouteGenerator.routesettingsscreen);
                            }),
                        const Divider(),
                        AccountListWidget(
                            title: "Bank Account",
                            icon: Assets.privacyPolicy,
                            ontap: () {
                              Navigator.pushNamed(context,
                                  RouteGenerator.routebankaccountscreen);
                            }),
                      ],
                    )),
                10.verticalSpace,
                Container(
                    padding: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white),
                    child: Column(
                      children: [
                        AccountListWidget(
                            title: "Help center",
                            icon: Assets.helpIcon,
                            ontap: () {
                              Navigator.pushNamed(context,
                                  RouteGenerator.routehelpcenterscreen);
                            }),
                        const Divider(),
                        AccountListWidget(
                            title: "Log out",
                            icon: Assets.logoutIcon,
                            ontap: () {}),
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
