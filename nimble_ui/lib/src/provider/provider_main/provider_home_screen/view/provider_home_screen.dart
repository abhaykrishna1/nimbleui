import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_home_screen/view/tab_view/provider_tab_all_screen.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_home_screen/view/tab_view/provider_tab_clean_screen.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_home_screen/view/tab_view/provider_tab_cook_screen.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class ProviderHomeScreen extends StatefulWidget {
  const ProviderHomeScreen({super.key});

  @override
  State<ProviderHomeScreen> createState() => _ProviderHomeScreenState();
}

class _ProviderHomeScreenState extends State<ProviderHomeScreen> {
  final List<String> tabs = ['All', "Cook", "Clean"];

  final List tabsIcon = [
    "",
    Assets.skillet,
    Assets.cleaning_services,
  ];

  int seletedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: HexColor("#EEEEF2"),
          body: Column(
            children: [
              SizedBox(
                // height: 90.h,
                width: double.maxFinite,
                child: TabBar(
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  onTap: (value) {
                    setState(() {
                      seletedIndex = value;
                    });
                  },
                  padding: const EdgeInsets.all(20),
                  labelPadding: EdgeInsets.zero,
                  indicatorColor: Colors.transparent,
                  dividerHeight: 0,
                  tabs: List.generate(tabs.length, (index) {
                    return Container(
                      // width: index == 1 || index == 2 ? double.maxFinite : 70,
                      // alignment: Alignment.center,
                      padding: EdgeInsets.only(
                        top: 14.h,
                        bottom: 14.h,
                      ),
                      margin: EdgeInsets.only(right: index <= 1 ? 10 : 0),
                      decoration: BoxDecoration(
                          color: seletedIndex == index
                              ? Colors.black
                              : Colors.white,
                          borderRadius: BorderRadius.circular(32)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          index == 0
                              ? 0.horizontalSpace
                              : SizedBox(
                                  height: 17.h,
                                  width: 17.w,
                                  child: SvgPicture.asset(
                                    tabsIcon[index],
                                    color: seletedIndex == index
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                          3.horizontalSpace,
                          Text(
                            tabs[index],
                            style: FontPalette.black_14_600.copyWith(
                                color: seletedIndex == index
                                    ? Colors.white
                                    : Colors.black),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    );
                  }),
                  // tabs: [
                  //   Container(
                  //     padding: EdgeInsets.all(26),
                  //     child: Text("Clean"),
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(10)),
                  //   ),
                  //   Container(
                  //     padding: EdgeInsets.all(26),
                  //     child: Text("Clean"),
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(10)),
                  //   ),
                  //   Container(
                  //     padding: EdgeInsets.all(26),
                  //     child: Text("Clean"),
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(10)),
                  //   )
                  // ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ProviderTabAllScreen(),
                    ProviderTabCookScreen(),
                    ProviderTabCleenScreen(),
                    // const ClipTestWidget(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
