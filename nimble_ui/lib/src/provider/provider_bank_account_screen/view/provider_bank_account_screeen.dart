import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class ProviderBankAccountScreen extends StatelessWidget {
  const ProviderBankAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#EEEEF2"),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Bank Account",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 25),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                showGeneralDialog(
                  barrierLabel: "Label",
                  barrierDismissible: true,
                  barrierColor: Colors.black.withOpacity(0.5),
                  transitionDuration: const Duration(milliseconds: 400),
                  context: context,
                  pageBuilder: (context, anim1, anim2) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: IntrinsicHeight(
                        child: Material(
                            color: Colors.transparent,
                            child: Container(
                              width: double.maxFinite,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        Navigator.pushNamed(
                                            context,
                                            RouteGenerator
                                                .routeaddbankaccountscreen);
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 17.h,
                                                width: 17.w,
                                                child: SvgPicture.asset(
                                                    Assets.editicon),
                                              ),
                                              15.horizontalSpace,
                                              Text(
                                                "Edit Account",
                                                style: FontPalette.black_16_600
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w500),
                                              )
                                            ],
                                          ),
                                          const Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 20,
                                          )
                                        ],
                                      ),
                                    ),
                                    12.verticalSpace,
                                    const Divider(),
                                    12.verticalSpace,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 17.h,
                                              width: 17.w,
                                              child: SvgPicture.asset(
                                                  Assets.deleteicon),
                                            ),
                                            15.horizontalSpace,
                                            Text(
                                              "Remove account",
                                              style: FontPalette.black_16_600
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w500),
                                            )
                                          ],
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ),
                    );
                  },
                  transitionBuilder: (context, anim1, anim2, child) {
                    return SlideTransition(
                      position: Tween(
                              begin: const Offset(0, 1),
                              end: const Offset(0, 0))
                          .animate(anim1),
                      child: child,
                    );
                  },
                );
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: SvgPicture.asset(Assets.bankaccountIcon),
                        ),
                        20.horizontalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "bank of Toronto",
                              style: FontPalette.black_16_600
                                  .copyWith(fontWeight: FontWeight.w500),
                            ),
                            7.verticalSpace,
                            Text(
                              "******3456",
                              style: FontPalette.black_14_400,
                            )
                          ],
                        )
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
