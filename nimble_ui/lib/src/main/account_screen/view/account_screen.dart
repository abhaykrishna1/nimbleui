import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            10.verticalSpace,
            Center(
              child: Container(
                height: 91.h,
                width: 91.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://t3.ftcdn.net/jpg/02/68/56/00/360_F_268560006_F2fIixDnlVRNGwCyne9EMQJhaAxalKTq.jpg",
                      ),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "Ken parker",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
            4.verticalSpace,
            Text(
              "Toronto, ON M4S 0B8, Canada",
              style:
                  FontPalette.black_14_400.copyWith(color: HexColor("#616068")),
            ),
            20.verticalSpace,
            Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 22, bottom: 22),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: const DecorationImage(
                      image: AssetImage(Assets.accountScreenNeedJobBaground),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Need a job",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  6.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Want to become a service provider?",
                          style: FontPalette.black_14_400,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        alignment: Alignment.center,
                        height: 41.sp,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.black),
                        child: Text(
                          "Registor Now",
                          style: FontPalette.black_14_600
                              .copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            10.verticalSpace,
            Container(
                padding: const EdgeInsets.all(20),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white),
                child: Column(
                  children: [
                    accountListWidget(
                        "My profile", Assets.accountCircle, () {}),
                    const Divider(),
                    accountListWidget(
                        "Favorites", Assets.favoriteBorder, () {}),
                    const Divider(),
                    accountListWidget("Payment information",
                        Assets.paymentInformationIcon, () {}),
                    const Divider(),
                    accountListWidget("Settings", Assets.settings, () {
                      Navigator.pushNamed(
                          context, RouteGenerator.routesettingsscreen);
                    }),
                    const Divider(),
                    accountListWidget(
                        "Privacy policy", Assets.privacyPolicy, () {}),
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
                    accountListWidget("Help center", Assets.helpIcon, () {
                      Navigator.pushNamed(
                          context, RouteGenerator.routehelpcenterscreen);
                    }),
                    const Divider(),
                    accountListWidget("Log out", Assets.logoutIcon, () {}),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget accountListWidget(String title, String icon, VoidCallback ontap) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: SvgPicture.asset(icon),
                ),
                20.horizontalSpace,
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
