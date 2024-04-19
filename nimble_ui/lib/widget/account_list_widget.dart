import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AccountListWidget extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback ontap;
  const AccountListWidget({super.key, required this.title, required this.icon, required this.ontap});

  @override
  Widget build(BuildContext context) {
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