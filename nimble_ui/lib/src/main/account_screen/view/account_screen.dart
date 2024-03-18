import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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
                          "https://s3-alpha-sig.figma.com/img/02fc/e6d5/eada0def258fb385a439b529a424c75a?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=j6ANjqpWGpFDLbOCfi7JX3UQddwxsBcSnxNoSWvSUpZEdURROOINA7anvZ1KmGtyNncdi0K7y~PE9iAaUVvYWNvJmuwGrt0MxiWkwMTbWdwse4oOKASDpuqaJUJ~GDGqAdV6nihv8-D10oX~fejNuadr54X1T31NL495kxBc3nKr5LVpjfbkAQszj1ScHoqtns8PXAvFTTapOsGiE7mjmWnuK689pKwtL0G8cY5eRc6i0Xbt432jkfPFyVwZJkKS2BcJdhL-cLkwRWhS5id4YnR23aJZrlboYv3URf4iiqa89c~nzmGIVnx4ZiumZdQmyGJTFtjQMJR3ukQbo6uIOg__")),
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
                    accountListWidget("Settings", Assets.settings, () {}),
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
                    accountListWidget("Help center", Assets.helpIcon, () {}),
                    const Divider(),
                    accountListWidget("Log out", Assets.logoutIcon, () {}),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget accountListWidget(String title, String icon, Function ontap) {
    return Container(
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
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 16,
          )
        ],
      ),
    );
  }
}
