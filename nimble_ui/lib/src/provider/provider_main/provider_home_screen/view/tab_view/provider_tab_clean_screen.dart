import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nimple_ui/src/provider/provider_main/provider_home_screen/view/tab_view/widget/home_card_widget.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class ProviderTabCleenScreen extends StatelessWidget {
  ProviderTabCleenScreen({super.key});

  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            13.verticalSpace,
            Text(
              "Find your Job",
              style: FontPalette.black_16_600,
            ),
            13.verticalSpace,
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  return const ProviderHomeCardWidget(
                      image:
                          "https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww");
                },
                separatorBuilder: (ctx, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 10)
          ],
        ),
      ),
    );
  }
}
