import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/src/auth/view/widget/service_selector_widget.dart';
import 'package:nimple_ui/src/auth/view_model/welcome_screen_view_model.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatelessWidget {
  final PageController controller;
  const WelcomeScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 15, bottom: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 15.verticalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Constants.welcome, style: FontPalette.black_24_600),
              8.verticalSpace,
              Text(
                Constants.welcomenot,
                style: FontPalette.black_14_400,
              ),
              25.verticalSpace,
              ServiceSelectorWidget(
                title: Constants.serviceseeker,
                subTitle: Constants.serviceseekershot,
                itemIndex: 0,
                onpressed: () {
                  context.read<WelcomeScreenProvider>().selectTypeFunction(0);
                },
              ),
              7.53.verticalSpace,
              ServiceSelectorWidget(
                title: Constants.serviceprovider,
                subTitle: Constants.serviceprovidershot,
                itemIndex: 1,
                onpressed: () {
                  context.read<WelcomeScreenProvider>().selectTypeFunction(1);
                },
              ),
            ],
          ),
          CustomButton(
            title: Constants.next,
            onpressed: () {
              controller.animateToPage(1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear);
            },
          ),
        ],
      ),
    );
  }
}
//  SizedBox(
//               height: 41.h,
//               width: double.maxFinite,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   SizedBox(
//                     height: 21.h,
//                     width: 100.w,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           height: 30.h,
//                           width: 30.w,
//                           child: SvgPicture.asset(
//                             Assets.filter,
//                           ),
//                         ),
//                         Text(
//                           Constants.filter,
//                           style: FontPalette.black_14_600,
//                         )
//                       ],
//                     ),
//                   ),
//                   Container(
//                     height: 21.h,
//                     width: 1,
//                     color: HexColor("#C7C6CD"),
//                   ),
//                   SizedBox(
//                     height: 21.h,
//                     width: 100.w,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           height: 19.h,
//                           width: 19.w,
//                           child: SvgPicture.asset(
//                             Assets.list,
//                           ),
//                         ),
//                         Text(
//                           Constants.list,
//                           style: FontPalette.black_14_600,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),