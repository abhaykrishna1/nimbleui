import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/utils/font_palette.dart';

import '../../../../../generate/assets.dart';

class EditRemoveDialogWidget extends StatelessWidget {
  const EditRemoveDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}