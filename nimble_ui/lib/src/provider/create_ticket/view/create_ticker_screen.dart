import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/src/provider/provider_main/provider_booking_screen/view/tab_view/provider_upcoming_show_dialog.dart';
import 'package:nimple_ui/src/provider/provider_my_profile_screen.dart/widget/heading_and_textform_widget.dart';
import 'package:nimple_ui/src/provider/provider_my_profile_screen.dart/widget/heading_container_widget.dart';
import 'package:nimple_ui/src/provider/provider_my_profile_screen.dart/widget/provider_myprofile_select_dialog_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/custome_button.dart';

import '../../../../generate/assets.dart';

class CreateTickerScreen extends StatelessWidget {
  const CreateTickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Create Ticket",
          style: FontPalette.black_18_600,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    1.verticalSpace,
                    const HeadingAndTextFormWidget(
                      hintText: "Ann Robinson",
                      heading: "Service provider name",
                    ),
                    4.verticalSpace,
                    const HeadingAndTextFormWidget(
                      hintText: "Enter Seeker name",
                      heading: "Seeker name",
                    ),
                    12.verticalSpace,
                    HeadingContainerWidget(
                      showText: false,
                      heading: "Service",
                      data: "Cook",
                      ontap: () {
                        showGeneralDialog(
                          barrierLabel: "Label",
                          barrierDismissible: true,
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionDuration: const Duration(milliseconds: 300),
                          context: context,
                          pageBuilder: (context, anim1, anim2) {
                            return const ProviderMyProfileSelectWidget(
                              height: 400,
                              selectionList: [],
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
                    ),
                    12.verticalSpace,
                    HeadingContainerWidget(
                      showText: false,
                      heading: "Type of service",
                      data: "",
                      ontap: () {
                        showGeneralDialog(
                          barrierLabel: "Label",
                          barrierDismissible: true,
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionDuration: const Duration(milliseconds: 300),
                          context: context,
                          pageBuilder: (context, anim1, anim2) {
                            return const ProviderMyProfileSelectWidget(
                              height: 400,
                              selectionList: [],
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
                    ),
                    12.verticalSpace,
                    HeadingContainerWidget(
                      showText: false,
                      heading: "Date",
                      icon: Assets.calendericon,
                      data: "",
                      ontap: () {},
                    ),
                    12.verticalSpace,
                    HeadingContainerWidget(
                      showText: false,
                      heading: "Time",
                      data: "",
                      ontap: () {
                        showGeneralDialog(
                          barrierLabel: "Label",
                          barrierDismissible: true,
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionDuration: const Duration(milliseconds: 300),
                          context: context,
                          pageBuilder: (context, anim1, anim2) {
                            return const ProviderMyProfileSelectWidget(
                              height: 400,
                              selectionList: [],
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
                    ),
                    12.verticalSpace,
                    HeadingContainerWidget(
                      showText: false,
                      heading: "Service",
                      data: "15/hr",
                      ontap: () {
                        showGeneralDialog(
                          barrierLabel: "Label",
                          barrierDismissible: true,
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionDuration: const Duration(milliseconds: 300),
                          context: context,
                          pageBuilder: (context, anim1, anim2) {
                            return const ProviderMyProfileSelectWidget(
                              height: 400,
                              selectionList: [],
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
                    ),
                    12.verticalSpace,
                    12.verticalSpace,
                    HeadingContainerWidget(
                      showText: false,
                      heading: "Schedule",
                      data: "",
                      ontap: () {
                        showGeneralDialog(
                          barrierLabel: "Label",
                          barrierDismissible: true,
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionDuration: const Duration(milliseconds: 300),
                          context: context,
                          pageBuilder: (context, anim1, anim2) {
                            return const ProviderMyProfileSelectWidget(
                              height: 400,
                              selectionList: [],
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
                    ),
                    12.verticalSpace,
                    12.verticalSpace,
                    HeadingContainerWidget(
                      showText: false,
                      heading: "Location",
                      icon: Assets.locationSearch,
                      data: "",
                      ontap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
                width: double.maxFinite,
                child: CustomButton(
                    title: "Create Ticket",
                    onpressed: () {
                      showGeneralDialog(
                        barrierLabel: "Label",
                        barrierDismissible: true,
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionDuration: const Duration(milliseconds: 200),
                        context: context,
                        pageBuilder: (context, anim1, anim2) {
                          return Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: IntrinsicHeight(
                                child: Material(
                                  color: Colors.transparent,
                                  child: Container(
                                    width: double.maxFinite,
                                    color: Colors.transparent,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: CustomPaint(
                                                  painter: CouponPainter(
                                                      bgColor: Colors.white,
                                                      cutPosition: .53,
                                                      cutOutRadius: 10),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        constraints:
                                                            BoxConstraints(
                                                                minHeight:
                                                                    100.h),
                                                        width: double.maxFinite,
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left: 7
                                                                              .w,
                                                                          top:
                                                                              7,
                                                                          bottom:
                                                                              7),
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          10),
                                                                  width: 85.w,
                                                                  height: 100.h,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      color: HexColor(
                                                                          "#3D3752")),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      SizedBox(
                                                                        height:
                                                                            30,
                                                                        width:
                                                                            30,
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          Assets
                                                                              .cleaning_services,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                      5.verticalSpace,
                                                                      Text(
                                                                        "Clean",
                                                                        style: FontPalette.black_14_400.copyWith(
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                            color: Colors.white),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                20.horizontalSpace,
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          "Ann Robinson",
                                                                          style:
                                                                              FontPalette.black_16_600,
                                                                        ),
                                                                        10.verticalSpace,
                                                                        Text(
                                                                          "10.00 AM Friday Dec 20,2022",
                                                                          style: FontPalette
                                                                              .black_14_400
                                                                              .copyWith(color: HexColor("#616068")),
                                                                        ),
                                                                        7.verticalSpace,
                                                                        Row(
                                                                          children: [
                                                                            SizedBox(
                                                                              height: 15.h,
                                                                              width: 15.w,
                                                                              child: SvgPicture.asset(Assets.locationborder),
                                                                            ),
                                                                            4.horizontalSpace,
                                                                            Expanded(
                                                                                child: Text(
                                                                              "848 King Street, Denver, CO 80204",
                                                                              style: FontPalette.black_14_400,
                                                                            ))
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                      16.0),
                                                              child: Column(
                                                                children: [
                                                                  const SizedBox(
                                                                    height: 20,
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        "Hourly Rate",
                                                                        style: FontPalette
                                                                            .black_14_400,
                                                                      ),
                                                                      Text(
                                                                        "15/hr",
                                                                        style: FontPalette
                                                                            .black_14_600,
                                                                      )
                                                                    ],
                                                                  ),
                                                                  5.verticalSpace,
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        "Total hours",
                                                                        style: FontPalette
                                                                            .black_14_400,
                                                                      ),
                                                                      Text(
                                                                        "2.0.hrs",
                                                                        style: FontPalette
                                                                            .black_14_600,
                                                                      )
                                                                    ],
                                                                  ),
                                                                  5.verticalSpace,
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        "Promos",
                                                                        style: FontPalette
                                                                            .black_14_400,
                                                                      ),
                                                                      Text(
                                                                        "2",
                                                                        style: FontPalette
                                                                            .black_14_600,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              color: HexColor(
                                                                  "#F5F4F8"),
                                                              width: double
                                                                  .maxFinite,
                                                              child: Center(
                                                                child: Text(
                                                                  "Cancellation is only available 48 hours before.",
                                                                  style: TextStyle(
                                                                      color: HexColor(
                                                                          "#616068")),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                      18.0),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    "Total",
                                                                    style: FontPalette
                                                                        .black_14_600,
                                                                  ),
                                                                  Text(
                                                                    "15",
                                                                    style: FontPalette
                                                                        .black_14_600
                                                                        .copyWith(
                                                                            fontSize:
                                                                                16.sp),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              20.verticalSpace,
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height: 44.h,
                                                  width: 44.w,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                          color: HexColor(
                                                              "#FFFFFF"),
                                                          width: 2)),
                                                  child: const Icon(
                                                    Icons.close,
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 200,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: CustomButton(
                                              title: "Send", onpressed: () {}),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
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
                    })),
          )
        ],
      ),
    );
  }
}
