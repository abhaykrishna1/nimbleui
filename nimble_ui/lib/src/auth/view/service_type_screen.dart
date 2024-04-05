import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/auth/view/widget/select_type_widget.dart';
import 'package:nimple_ui/src/auth/view_model/service_type_view_model.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ServiceTypeScreen extends StatefulWidget {
  final PageController controller;
  ServiceTypeScreen({super.key, required this.controller});

  @override
  State<ServiceTypeScreen> createState() => _ServiceTypeScreenState();
}

class _ServiceTypeScreenState extends State<ServiceTypeScreen> {
  String? clr1;

  String? clr2;

  String? clr3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 15.0, right: 15, top: 15, bottom: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.verticalSpace,
              Text(
                Constants.selectyourservicetype,
                style: FontPalette.black_24_600,
              ),
              8.verticalSpace,
              Text(
                Constants.selectyourservicetypeshot,
                style: FontPalette.black_14_400,
              ),
              24.verticalSpace,
              Consumer<ServiceTypeProvider>(builder: (__, provider, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        provider.carefun();
                      },
                      child: SelectTypeWidget(
                        icon: Assets.heart_plus,
                        title: "Care",
                        colorr: provider.clr1,
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        provider.cookfun();
                      },
                      child: SelectTypeWidget(
                        icon: Assets.skillet,
                        title: "Cook",
                        colorr: provider.clr2,
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        provider.cleanfun();
                      },
                      child: SelectTypeWidget(
                        icon: Assets.cleaning_services,
                        title: "Clean",
                        colorr: provider.clr3,
                      ),
                    ),
                  ],
                );
              })
            ],
          ),
          CustomButton(
              title: Constants.next,
              onpressed: () {
                widget.controller.animateToPage(2,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              })
        ],
      ),
    );
  }
}
