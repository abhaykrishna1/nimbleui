import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/chat_screen/view/chat_screen.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/small_custom_button.dart';
import 'package:nimple_ui/widget/type_widget.dart';

class ProviderRequestScreen extends StatelessWidget {
  const ProviderRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    // final textScaleFactor = MediaQuery.of(context).textScaleFactor;
    // print(textScaleFactor);
    // TextScaler scaledFontSize = MediaQuery.textScalerOf(context);

    // print(scaledFontSize);
    return Scaffold(
        backgroundColor: HexColor("#EEEEF2"),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return Container(
                  // height: maxWidth * 0.304,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: maxWidth * 0.304,
                        height: maxWidth * 0.390,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.r),
                                bottomLeft: Radius.circular(15.r))),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Peter Shan",
                                style: FontPalette.black_16_600,
                              ),
                              5.verticalSpace,
                              Row(
                                children: [
                                  const TypeWidgett(title: "Cook"),
                                  10.horizontalSpace,
                                  const TypeWidgett(title: "Cleen")
                                ],
                              ),
                              5.verticalSpace,
                              Row(
                                children: [
                                  4.horizontalSpace,
                                  Text(
                                    "Monday, Dec 18",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  8.horizontalSpace,
                                  SizedBox(
                                    height: 16.h,
                                    width: 16.w,
                                    child: SvgPicture.asset(
                                        Assets.locationborder,
                                        color: HexColor("#616068")),
                                  ),
                                  Expanded(
                                    child: Text(
                                      " 5 Km Away",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                          color: HexColor("#616068")),
                                    ),
                                  ),
                                ],
                              ),
                              7.verticalSpace,
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                children: [
                                  SmallCustomButton(
                                    name: "Decline",
                                    color: "#EEEEF2",
                                    nameColor: "#000000",
                                    onpressed: () {},
                                  ),
                                  7.horizontalSpace,
                                  Expanded(
                                    child: SmallCustomButton(
                                      name: "Accept",
                                      onpressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => ChatScreen(
                                                    acceptCheckingbool: true,
                                                    seekerOrProviderChecking:
                                                        false,
                                                  )),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return SizedBox(
                  height: 10.h,
                );
              },
              itemCount: 3),
        ));
  }
}
