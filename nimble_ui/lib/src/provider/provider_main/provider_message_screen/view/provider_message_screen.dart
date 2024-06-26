import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_message_screen/tab_view/provider_accepted_profile_tab.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_message_screen/tab_view/provider_received_request_tab.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class ProviderMessageScreen extends StatefulWidget {
  const ProviderMessageScreen({super.key});

  @override
  State<ProviderMessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<ProviderMessageScreen> {
  int seletedIndex = 0;
  List tabs = ["Accepted profiles", "Received request"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        //backgroundColor: HexColor("#EEEEF2"),
        backgroundColor: Colors.white,
        body: Column(
          children: [
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
                    padding: EdgeInsets.only(
                        top: 14.h, bottom: 14.h, left: 10.w, right: 10.w),
                    // height: 51.h,
                    margin: EdgeInsets.only(right: index <= 2 ? 10 : 0),
                    decoration: BoxDecoration(
                        color: seletedIndex == index
                            ? Colors.black
                            : HexColor("#EEEEF2"),
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
                children: [
                  ProviderAcceptedProfileTab(),
                  ProviderReceivedRequestTab()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
