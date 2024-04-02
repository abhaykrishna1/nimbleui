import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/main/message_screen/tab_view/widget/small_border_text_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class AcceptedProfileListViewWidget extends StatelessWidget {
  const AcceptedProfileListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            height: 56.h,
            width: 56.w,
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
          20.horizontalSpace,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Elizabath",
                  style: FontPalette.black_14_600,
                ),
                6.verticalSpace,
                Text(
                  "Hi Maam! Hope you looking for nadan choru and menare looking for nadan choru and men...",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: HexColor("#616068")),
                )
              ],
            ),
          ),
          30.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmallBorderTextWidget(title: "Clean"),
              15.verticalSpace,
              Text(
                "12.00 PM",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: HexColor("#616068")),
              )
            ],
          )
        ],
      ),
    );
  }
}
