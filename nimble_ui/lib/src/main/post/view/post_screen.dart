import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent post",
            style:
                FontPalette.black_14_600.copyWith(color: HexColor("#616068")),
          ),
          10.verticalSpace,
          Expanded(
            child: ListView.separated(
                itemBuilder: (ctx, index) {
                  return Container(
                    padding: const EdgeInsets.all(15),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Cooking & Cleaning",
                              style: FontPalette.black_16_600,
                            ),
                            InkWell(
                              onTap: () {
                                showGeneralDialog(
                                  barrierLabel: "Label",
                                  barrierDismissible: true,
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  transitionDuration:
                                      const Duration(milliseconds: 300),
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
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  10),
                                                          topRight:
                                                              Radius.circular(
                                                                  10))),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(40.0),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            SizedBox(
                                                                height: 17.h,
                                                              width: 17.w,
                                                              child: SvgPicture
                                                                  .asset(Assets
                                                                      .editicon),
                                                            ),
                                                            15.horizontalSpace,
                                                            Text(
                                                              "Edit Post",
                                                              style: FontPalette
                                                                  .black_16_600
                                                                  .copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                            )
                                                          ],
                                                        ),
                                                        const Icon(
                                                          Icons
                                                              .arrow_forward_ios_outlined,
                                                          size: 20,
                                                        )
                                                      ],
                                                    ),
                                                    12.verticalSpace,
                                                    const Divider(),
                                                    12.verticalSpace,
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            SizedBox(
                                                           height: 17.h,
                                                              width: 17.w,
                                                              child: SvgPicture
                                                                  .asset(Assets
                                                                      .deleteicon),
                                                            ),
                                                            15.horizontalSpace,
                                                            Text(
                                                              "Remove Post",
                                                              style: FontPalette
                                                                  .black_16_600
                                                                  .copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                            )
                                                          ],
                                                        ),
                                                        const Icon(
                                                          Icons
                                                              .arrow_forward_ios_outlined,
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
                                  transitionBuilder:
                                      (context, anim1, anim2, child) {
                                    return SlideTransition(
                                      position: Tween(
                                              begin: const Offset(1, 0),
                                              end: const Offset(0, 0))
                                          .animate(anim1),
                                      child: child,
                                    );
                                  },
                                );
                              },
                              child: SizedBox(
                                height: 20.h,
                                width: 20.w,
                                child: SvgPicture.asset(Assets.more),
                              ),
                            )
                          ],
                        ),
                        10.verticalSpace,
                        Text(
                          "Hello! We're looking for a delightful combination of services for Monday, December 18th.",
                          style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: HexColor("#616068")),
                        ),
                        12.verticalSpace,
                        Row(
                          children: [
                            SizedBox(
                              height: 15.h,
                              width: 15.w,
                              child: SvgPicture.asset(
                                Assets.calendericon,
                                color: Colors.black,
                              ),
                            ),
                            10.horizontalSpace,
                            Text(
                              "Monday, Dec 18 9.00 AM",
                              style: FontPalette.black_14_400
                                  .copyWith(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        10.verticalSpace,
                        Row(
                          children: [
                            SizedBox(
                              height: 15.h,
                              width: 15.w,
                              child: SvgPicture.asset(
                                Assets.locationsvg,
                                color: Colors.black,
                              ),
                            ),
                            10.horizontalSpace,
                            Text(
                              "5 Km Away Toronto",
                              style: FontPalette.black_14_400
                                  .copyWith(fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (ctx, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 3),
          )
        ],
      ),
    );
  }
}
