import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Favorites",
          style: FontPalette.black_18_600,
        ),
      ),
      body: ListView.separated(
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16, top: 7, bottom: 7),
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
                            height: 126.h,
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
                                          child: const Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ))
                                    ],
                                  ),
                                  0.verticalSpace,
                                  Row(
                                    children: [
                                      Text(
                                        "\$ 22.00",
                                        style: FontPalette.black_14_600
                                            .copyWith(
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
                                      Text(
                                        "Talks : ",
                                        style: FontPalette.black_14_400
                                            .copyWith(
                                                color: HexColor("#616068")),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "English,Malayalam",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: FontPalette.black_14_400
                                              .copyWith(
                                                  color: HexColor("#616068")),
                                        ),
                                      )
                                    ],
                                  ),
                                  6.verticalSpace,
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        width: 20,
                                        child:
                                            SvgPicture.asset(Assets.staricon),
                                      ),
                                      4.horizontalSpace,
                                      Text(
                                        "4,0",
                                        style: FontPalette.black_14_600
                                            .copyWith(color: Colors.green),
                                      ),
                                      8.horizontalSpace,
                                      SizedBox(
                                        height: 18,
                                        width: 18,
                                        child: SvgPicture.asset(
                                            Assets.locationsvg),
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
          itemCount: 10),
    );
  }
}
