import 'package:flutter/material.dart';
import 'package:nimple_ui/src/empty_status/view/empty_status_screen.dart';
import 'package:nimple_ui/utils/color_palate.dart';

import '../../../../generate/assets.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<BookingScreen> {
  int seletedIndex = 0;
  List tabs = ["Upcoming", "Compleated"];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: HexColor("#EEEEF2"),
          // body: Column(
          //   children: [
          //     SizedBox(
          //       height: MediaQuery.of(context).size.height * 0.11,
          //       width: double.maxFinite,
          //       child: TabBar(
          //         overlayColor:
          //             MaterialStateProperty.all<Color>(Colors.transparent),
          //         onTap: (value) {
          //           setState(() {
          //             seletedIndex = value;
          //           });
          //         },
          //         padding: const EdgeInsets.all(20),
          //         labelPadding: EdgeInsets.zero,
          //         indicatorColor: Colors.transparent,
          //         dividerHeight: 0,
          //         tabs: List.generate(2, (index) {
          //           return Container(
          //             padding: const EdgeInsets.only(left: 10, right: 10),
          //             height: 51.h,
          //             margin: EdgeInsets.only(right: index <= 2 ? 10 : 0),
          //             decoration: BoxDecoration(
          //                 color:
          //                     seletedIndex == index ? Colors.black : Colors.white,
          //                 borderRadius: BorderRadius.circular(32)),
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 Expanded(
          //                   child: Center(
          //                     child: Text(
          //                       tabs[index],
          //                       style: FontPalette.black_14_600.copyWith(
          //                           color: seletedIndex == index
          //                               ? Colors.white
          //                               : Colors.black),
          //                       overflow: TextOverflow.ellipsis,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           );
          //         }),
          //       ),
          //     ),
          //     const Expanded(
          //       child: TabBarView(
          //         physics: NeverScrollableScrollPhysics(),
          //         children: [UpcomingTab(), CompleatedTab()],
          //       ),
          //     ),
          //   ],
          // ),
          body: const EmptyStatusScreen(
            icon: Assets.emptyServer,
            subTitle: "We're working to fix the issue. Please try again later.",
            mainTitle: "Oops, Server Error",
            buttonShow: false,
            buttonTitle: "",
          )),
    );
  }
}
