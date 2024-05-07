import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_home_screen/view/tab_view/widget/home_card_widget.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_home_screen/view/tab_view/widget/home_requests_card_widget.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class ProviderTabAllScreen extends StatelessWidget {
  ProviderTabAllScreen({super.key});

  final controller = ScrollController();

  List images = [
    "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg",
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww",
    "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
    "https://www.shutterstock.com/shutterstock/photos/1617540484/display_1500/stock-photo-closeup-photo-of-amazing-short-hairdo-lady-looking-up-empty-space-deep-thinking-creative-person-arm-1617540484.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8iQTGP_fRP4Hug0_8NI6m1PD9XhynUNJO_4kp0--Djw&s",
    "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg",
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fHww",
    "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-55958-614810.jpg&fm=jpg",
    "https://www.shutterstock.com/shutterstock/photos/1617540484/display_1500/stock-photo-closeup-photo-of-amazing-short-hairdo-lady-looking-up-empty-space-deep-thinking-creative-person-arm-1617540484.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8iQTGP_fRP4Hug0_8NI6m1PD9XhynUNJO_4kp0--Djw&s"
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeRequestsCardWidget(),
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
                  return ProviderHomeCardWidget(
                    image: images[index],
                  );
                },
                separatorBuilder: (ctx, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 4)
          ],
        ),
      ),
    );
  }
}
