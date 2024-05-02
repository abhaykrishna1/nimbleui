import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/type_widget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 16.0, right: 16, top: 7, bottom: 7),
            child: Column(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RouteGenerator.routeProfileDetailScreen,
                    );
                  },
                  child: Container(
                    // height: 126.h,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: 114.w,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Ann Robinson",
                                      style: FontPalette.black_14_600,
                                    ),
                                    Container(
                                        height: 32.h,
                                        width: 32.w,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: HexColor("#EEEEF2")),
                                        child: Icon(
                                          Icons.favorite,
                                          color: HexColor("#D7D7D7"),
                                        ))
                                  ],
                                ),
                                0.verticalSpace,
                                Row(
                                  children: [
                                    Text(
                                      "22.00",
                                      style: FontPalette.black_14_600.copyWith(
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      " /day",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                5.verticalSpace,
                                Row(
                                  children: [
                                    const TypeWidgett(title: "Cook"),
                                    5.horizontalSpace,
                                    const TypeWidgett(title: "Clean")
                                  ],
                                ),
                                6.verticalSpace,
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: SvgPicture.asset(Assets.staricon),
                                    ),
                                    4.horizontalSpace,
                                    Text(
                                      "4,0",
                                      style: FontPalette.black_14_600,
                                    ),
                                    8.horizontalSpace,
                                    SizedBox(
                                      height: 18,
                                      width: 18,
                                      child:
                                          SvgPicture.asset(Assets.locationsvg),
                                    ),
                                    Expanded(
                                      child: Text(
                                        " 23 Km Away",
                                        style: FontPalette.black_14_600,
                                        overflow: TextOverflow.ellipsis,
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
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return const SizedBox();
        },
        itemCount: 10);
  }
}
