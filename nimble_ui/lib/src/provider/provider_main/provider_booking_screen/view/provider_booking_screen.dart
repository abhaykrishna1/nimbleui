import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_booking_screen/view/tab_view/provider_compleate_tab.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_booking_screen/view/tab_view/provider_upcoming_tab.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class ProviderBookingScreen extends StatefulWidget {
  const ProviderBookingScreen({super.key});

  @override
  State<ProviderBookingScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<ProviderBookingScreen> {
  int seletedIndex = 0;
  List tabs = ["Upcoming", "Compleated"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: HexColor("#EEEEF2"),
          body: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.11,
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
                tabs: List.generate(2, (index) {
                  return Container(
                    padding: EdgeInsets.only(top: 13.h, bottom: 13.h),
                    // height: 51.h,
                    margin: EdgeInsets.only(right: index <= 2 ? 10 : 0),
                    decoration: BoxDecoration(
                        color:
                            seletedIndex == index ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(32)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              tabs[index],
                              style: FontPalette.black_14_600.copyWith(
                                  color: seletedIndex == index
                                      ? Colors.white
                                      : Colors.black),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            const Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [ProviderUpcomingTab(), ProviderCompleatedTab()],
              ),
            ),
          ]),
        ));
  }
}
