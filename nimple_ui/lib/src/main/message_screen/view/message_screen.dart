import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nimple_ui/src/main/message_screen/tab_view/accepted_profile_tab.dart';
import 'package:nimple_ui/src/main/message_screen/tab_view/received_request_tab.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class MessageScreen extends StatefulWidget {
  MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
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
              height: 75.h,
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
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    height: 51.h,
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
                children: [AcceptedProfileTab(), ReceivedRequestTab()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
