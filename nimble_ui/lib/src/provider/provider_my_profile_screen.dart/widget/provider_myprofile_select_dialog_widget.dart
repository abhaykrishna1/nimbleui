import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

import '../../../../widget/custome_button.dart';

class ProviderMyProfileSelectWidget extends StatelessWidget {
  final List selectionList;
  final double height;
  const ProviderMyProfileSelectWidget(
      {super.key, required this.selectionList, required this.height});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: IntrinsicHeight(
        child: Material(
            color: Colors.transparent,
            child: Container(
              height: height,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(14),
                    height: 4.h,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16.w, right: 16.w, top: 0.h, bottom: 0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Availability",
                          style: FontPalette.black_16_600,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Close",
                            style: FontPalette.black_14_600
                                .copyWith(color: HexColor("#772077")),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10, left: 16, right: 16),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 17,
                                    width: 17,
                                    child: SvgPicture.asset(
                                      Assets.doneIcon,
                                      color: Colors.black,
                                    ),
                                  ),
                                  19.horizontalSpace,
                                  Text(
                                    selectionList[index],
                                    style: FontPalette.black_16_600
                                        .copyWith(fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (ctx, index) {
                            return const Divider();
                          },
                          itemCount: selectionList.length),
                    ),
                  ),
                  Container(
                    // height: 200,
                    //  padding: const EdgeInsets.only(left: 18, right: 18, bottom: 18),
                    width: double.maxFinite,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Divider(
                          height: 0,
                        ),
                        10.verticalSpace,
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 18, right: 18, bottom: 18),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: CustomButton(
                                    textColor: "#1F1E24",
                                    color: "#EEEEF2",
                                    title: "Cancel",
                                    onpressed: () {
                                      debugPrint("object");
                                      Navigator.pop(context);
                                    }),
                              ),
                              10.horizontalSpace,
                              Expanded(
                                child: CustomButton(
                                    title: "Done",
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
  }
}
