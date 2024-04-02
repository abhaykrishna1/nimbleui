import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/src/help_center_screen/view/widget/call_support_widget.dart';
import 'package:nimple_ui/src/help_center_screen/view/widget/email_support_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class HelpCenterScreen extends StatelessWidget {
  HelpCenterScreen({super.key});

  List<String> faqTitileList = [
    "How do I book a service on Nimble?",
    "Can I communicate with the service provider before booking?",
    "How can I track my orders & payments?",
    "How do I pay for the services booked on Nimble?",
    "What are the payment methods Available?",
    "What if I have a problem or issue with a service?"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EEEEF2"),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          Constants.helpcenter,
          style: FontPalette.black_18_600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const EmailSupportWidget(),
              14.verticalSpace,
              const CallSupportWidget(),
              10.verticalSpace,
              Container(
                padding: const EdgeInsets.all(18),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "FAQ",
                      style: FontPalette.black_16_600,
                    ),
                    ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) {
                          return Theme(
                            data: ThemeData()
                                .copyWith(dividerColor: Colors.transparent),
                            child: ListTileTheme(
                              contentPadding: const EdgeInsets.all(0),
                              child: ExpansionTile(
                                tilePadding: EdgeInsets.zero,
                                childrenPadding: EdgeInsets.zero,
                                title: Text(faqTitileList[index]),
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                expandedAlignment: Alignment.centerLeft,
                                children: const <Widget>[
                                  ListTile(
                                      title: Text(
                                          'Yes, Nimble provides a built-in chat feature that allows users to communicate directly with service providers. Users can ask questions, discuss specific requirements, and clarify any details before finalizing the booking.')),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (ctx, index) {
                          return const Divider();
                        },
                        itemCount: faqTitileList.length),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
