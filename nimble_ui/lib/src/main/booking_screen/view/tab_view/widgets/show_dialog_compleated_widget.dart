// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/main/booking_screen/view/tab_view/widgets/click_here_widget.dart';
import 'package:nimple_ui/src/main/booking_screen/view/tab_view/widgets/feedback_dialog_widget.dart';
import 'package:nimple_ui/src/main/message_screen/tab_view/widget/small_border_text_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';

class ShowDialogCompleatedWidget extends StatelessWidget {
  const ShowDialogCompleatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 16, top: 7, bottom: 7),
          child: IntrinsicHeight(
            child: Material(
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomPaint(
                      painter: CouponPainter(
                          bgColor: Colors.white,
                          cutPosition: .53,
                          cutOutRadius: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            constraints: BoxConstraints(minHeight: 100.h),
                            width: double.maxFinite,
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 7.w, top: 7, bottom: 7),
                                      padding: const EdgeInsets.all(10),
                                      width: 100.w,
                                      height: 100.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg"),
                                              fit: BoxFit.cover)),
                                    ),
                                    20.horizontalSpace,
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    "Ann Robinson",
                                                    style: FontPalette
                                                        .black_14_600
                                                        .copyWith(
                                                            fontSize: 16.sp),
                                                  ),
                                                ),
                                                const SmallBorderTextWidget(
                                                    title: "Clean")
                                              ],
                                            ),
                                            6.verticalSpace,
                                            Text(
                                              "10.00 AM Friday Dec 20,2022",
                                              style: FontPalette.black_14_400
                                                  .copyWith(
                                                      color:
                                                          HexColor("#616068")),
                                            ),
                                            7.verticalSpace,
                                            Row(
                                              children: [
                                                SizedBox(
                                                  height: 15.h,
                                                  width: 15.w,
                                                  child: SvgPicture.asset(
                                                      Assets.locationborder),
                                                ),
                                                4.horizontalSpace,
                                                Expanded(
                                                    child: Text(
                                                  "848 King Street, Denver, CO 80204",
                                                  style:
                                                      FontPalette.black_14_400,
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
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Hourly Rate",
                                            style: FontPalette.black_14_400,
                                          ),
                                          Text(
                                            "15/hr",
                                            style: FontPalette.black_14_600,
                                          )
                                        ],
                                      ),
                                      5.verticalSpace,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Total hours",
                                            style: FontPalette.black_14_400,
                                          ),
                                          Text(
                                            "2.0.hrs",
                                            style: FontPalette.black_14_600,
                                          )
                                        ],
                                      ),
                                      5.verticalSpace,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Promos",
                                            style: FontPalette.black_14_400,
                                          ),
                                          Text(
                                            "2",
                                            style: FontPalette.black_14_600,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  color: HexColor("#F5F4F8"),
                                  width: double.maxFinite,
                                  child: Center(
                                    child: Text(
                                      "Cancellation is only available 48 hours before.",
                                      style:
                                          TextStyle(color: HexColor("#616068")),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Total",
                                        style: FontPalette.black_14_600,
                                      ),
                                      Text(
                                        "15",
                                        style: FontPalette.black_14_600
                                            .copyWith(fontSize: 16.sp),
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
                    10.verticalSpace,
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: HexColor("#FFF5E0")),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 20.h,
                            width: 20.w,
                            child: SvgPicture.asset(Assets.help),
                          ),
                          16.horizontalSpace,
                          Expanded(
                            child: Text(
                              "If the task is not completed",
                              style: FontPalette.black_14_400.copyWith(),
                            ),
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
                                  return const ClickHereWidget();
                                },
                                transitionBuilder:
                                    (context, anim1, anim2, child) {
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
                            child: Text(
                              " Click here",
                              style: FontPalette.black_14_600.copyWith(
                                  decoration: TextDecoration.underline),
                            ),
                          )
                          // InkWell(
                          //   onTap: () {
                          //     showGeneralDialog(
                          //       barrierLabel: "Label",
                          //       barrierDismissible: true,
                          //       barrierColor: Colors.black.withOpacity(0.5),
                          //       transitionDuration:
                          //           const Duration(milliseconds: 300),
                          //       context: context,
                          //       pageBuilder: (context, anim1, anim2) {
                          //         return Align(
                          //             alignment: Alignment.bottomCenter,
                          //             child: IntrinsicHeight(
                          //               child: Material(
                          //                 child: Container(
                          //                   height: 400,
                          //                   width: double.maxFinite,
                          //                   color: Colors.green,
                          //                 ),
                          //               ),
                          //             ));
                          //       },
                          //       transitionBuilder:
                          //           (context, anim1, anim2, child) {
                          //         return SlideTransition(
                          //           position: Tween(
                          //                   begin: const Offset(0, 1),
                          //                   end: const Offset(0, 0))
                          //               .animate(anim1),
                          //           child: child,
                          //         );
                          //       },
                          //     );
                          //   },
                          //   child: Expanded(
                          //     child: Text.rich(
                          //       TextSpan(
                          //         // with no TextStyle it will have default text style
                          //         text: 'If the task is not completed',
                          //         style: FontPalette.black_14_400.copyWith(),
                          //         children: <TextSpan>[
                          //           TextSpan(
                          //               text: ' Clickhere',
                          //               style: TextStyle(
                          //                   fontWeight: FontWeight.bold,
                          //                   fontSize: 14.sp)),
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                    10.verticalSpace,
                    InkWell(
                      onTap: () {
                        showGeneralDialog(
                          barrierLabel: "Label",
                          barrierDismissible: true,
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionDuration: const Duration(milliseconds: 300),
                          context: context,
                          pageBuilder: (context, anim1, anim2) {
                            return const FeedBackDialogWidget();
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
                        padding: const EdgeInsets.all(20),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'How was your service experience?',
                              style: FontPalette.black_16_600,
                            ),
                            4.verticalSpace,
                            Text(
                              "Rate your experience",
                              style: FontPalette.black_14_400,
                            ),
                            10.verticalSpace,
                            const Divider(),
                            10.verticalSpace,
                            Container(
                              padding: const EdgeInsets.only(top: 4, bottom: 4),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: HexColor("#39BF78"),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Text(
                                "Excellent",
                                style: FontPalette.black_14_600
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                            7.verticalSpace,
                            Row(
                              children: [
                                SizedBox(
                                  height: 45.h,
                                  width: 45.w,
                                  child: SvgPicture.asset(Assets.emogiSmile),
                                ),
                                10.horizontalSpace,
                                RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  itemCount: 5,
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 4.0),
                                  itemSize: 20.h,
                                  itemBuilder: (context, _) => SizedBox(
                                      height: 15.h,
                                      width: 15.w,
                                      child: SvgPicture.asset(
                                        Assets.staricon,
                                        color: HexColor("#FFC80D"),
                                      )),
                                  onRatingUpdate: (rating) {},
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    // Container(
                    //   padding: const EdgeInsets.all(17),
                    //   width: double.maxFinite,
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(100),
                    //       color: HexColor("#EEEEF2")),
                    //   child: Center(
                    //       child: Text(
                    //     "View chat history",
                    //     style: FontPalette.black_14_600.copyWith(fontSize: 16.sp),
                    //   )),
                    // ),
                    20.verticalSpace,
                    InkWell(
                      splashColor: Colors.transparent,
                      borderRadius: BorderRadius.circular(100),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 44.h,
                        width: 44.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: HexColor("#FFFFFF"), width: 2)),
                        child: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CouponPainter extends CustomPainter {
  final Color bgColor;
  final double cornerRadius;
  final double cutOutRadius;
  final double cutPosition;

  CouponPainter(
      {required this.bgColor,
      this.cornerRadius = 20.0,
      this.cutOutRadius = 11.0,
      this.cutPosition = 0.5});

  @override
  void paint(Canvas canvas, Size size) {
    final maxWidth = size.width;
    final maxHeight = size.height;
    final cutOutDiameter = cutOutRadius * 2;
    final cutoutStartPos = maxHeight - maxHeight * cutPosition.clamp(.05, .85);
    final leftCutoutStartY = cutoutStartPos;
    final rightCutoutStartY = cutoutStartPos - cutOutDiameter;
    final dottedLineY = cutoutStartPos - cutOutRadius;
    double dottedLineStartX = 17;
    final double dottedLineEndX = maxWidth - 17;
    const double dashWidth = 5;
    const double dashSpace = 4;

    final paintBg = Paint()
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..color = bgColor;

    final paintBorder = Paint()
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..color = Colors.transparent;

    final paintDottedLine = Paint()
      ..color = HexColor("#D8D8D8")
      ..strokeWidth = 1.2;

    var path = Path();

    path.moveTo(cornerRadius, 0);
    path.lineTo(maxWidth - cornerRadius, 0);
    _drawCornerArc(path, maxWidth, cornerRadius);
    path.lineTo(maxWidth, rightCutoutStartY);
    _drawCutout(path, maxWidth, rightCutoutStartY + cutOutDiameter);
    path.lineTo(maxWidth, maxHeight - cornerRadius);
    _drawCornerArc(path, maxWidth - cornerRadius, maxHeight);
    path.lineTo(cornerRadius, maxHeight);
    _drawCornerArc(path, 0, maxHeight - cornerRadius);
    path.lineTo(0, leftCutoutStartY);
    _drawCutout(path, 0.0, leftCutoutStartY - cutOutDiameter);
    path.lineTo(0, cornerRadius);
    _drawCornerArc(path, cornerRadius, 0);

    canvas.drawPath(path, paintBg);
    canvas.drawPath(path, paintBorder);
    canvas.drawShadow(path, Colors.black.withOpacity(.1), -2, false);

    while (dottedLineStartX < dottedLineEndX) {
      canvas.drawLine(
        Offset(dottedLineStartX, dottedLineY),
        Offset(dottedLineStartX + dashWidth, dottedLineY),
        paintDottedLine,
      );
      dottedLineStartX += dashWidth + dashSpace;
    }
  }

  _drawCutout(Path path, double startX, double endY) {
    path.arcToPoint(
      Offset(startX, endY),
      radius: Radius.circular(cutOutRadius),
      clockwise: false,
    );
  }

  _drawCornerArc(Path path, double endPointX, double endPointY) {
    path.arcToPoint(
      Offset(endPointX, endPointY),
      radius: Radius.circular(cornerRadius),
    );
  }

  @override
  bool shouldRepaint(CouponPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CouponPainter oldDelegate) => false;
}
