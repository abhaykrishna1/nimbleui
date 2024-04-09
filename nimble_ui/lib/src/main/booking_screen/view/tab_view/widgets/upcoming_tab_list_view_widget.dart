import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/main/booking_screen/view/tab_view/widgets/show_dialog_widget.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:nimple_ui/widget/type_widget.dart';

class UpComingTabListViewWidget extends StatelessWidget {
  const UpComingTabListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 16.0, right: 16, top: 7, bottom: 7),
            child: CustomPaint(
              painter: CouponPainterTwo(
                  bgColor: Colors.white, cutPosition: 35, cutOutRadius: 10),
              child: Container(
                constraints: BoxConstraints(minHeight: 100.h),
                width: double.maxFinite,
                child: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  splashColor: HexColor("#EEEEF2"),
                  onTap: () {
                    showGeneralDialog(
                      barrierLabel: "Label",
                      barrierDismissible: true,
                      barrierColor: Colors.black.withOpacity(0.5),
                      transitionDuration: const Duration(milliseconds: 200),
                      context: context,
                      pageBuilder: (context, anim1, anim2) {
                        return const ShowDialogWidget();
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 7.w, top: 7, bottom: 7),
                        padding: const EdgeInsets.all(10),
                        width: 100.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "Ann Robinson",
                                      style: FontPalette.black_14_600
                                          .copyWith(fontSize: 16.sp),
                                    ),
                                  ),
                                  const TypeWidgett(title: "Clean")
                                ],
                              ),
                              6.verticalSpace,
                              Text(
                                "10.00 AM Friday Dec 20,2022",
                                style: FontPalette.black_14_400
                                    .copyWith(color: HexColor("#616068")),
                              ),
                              7.verticalSpace,
                              Row(
                                children: [
                                  SizedBox(
                                    height: 15.h,
                                    width: 15.w,
                                    child:
                                        SvgPicture.asset(Assets.locationborder),
                                  ),
                                  4.horizontalSpace,
                                  Expanded(
                                      child: Text(
                                    "848 King Street, Denver, CO 80204",
                                    style: FontPalette.black_14_400,
                                    overflow: TextOverflow.ellipsis,
                                  ))
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (ctx, index) {
          return const SizedBox();
        },
        itemCount: 3);
  }
}

class CouponPainterTwo extends CustomPainter {
  final Color bgColor;
  final double cornerRadius;
  final double cutOutRadius;
  final double cutPosition;

  CouponPainterTwo(
      {required this.bgColor,
      this.cornerRadius = 20.0,
      this.cutOutRadius = 11.0,
      this.cutPosition = 0.5});

  @override
  void paint(Canvas canvas, Size size) {
    final maxWidth = size.width;
    final maxHeight = size.height;
    final cutOutDiameter = cutOutRadius * 2;
    final cutoutStartPos = maxWidth - maxWidth * cutPosition.clamp(.05, .85);
    final leftCutoutStartY = cutoutStartPos;
    final rightCutoutStartY = cutoutStartPos - cutOutDiameter;

    double dottedLineStartX = cutOutRadius + 5;
    final double dottedLineEndX = maxHeight - (cutOutRadius + 5);
    const double dashWidth = 5;
    const double dashSpace = 4;

    final paintBg = Paint()
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..color = bgColor;

    final paintDottedLine = Paint()
      ..color = HexColor("#D8D8D8")
      ..strokeWidth = 1.2;

    var path = Path();

    final firstCutOutPosition =
        ((maxWidth * (cutPosition / 100).clamp(0, 100)) - cutOutRadius);

    path.moveTo(cornerRadius, 0);
    path.lineTo(firstCutOutPosition, 0);
    path.lineTo(firstCutOutPosition, -1);
    path.arcToPoint(
      Offset(firstCutOutPosition + cutOutDiameter, -1),
      // radius: Radius.circular(cutOutRadius),
      radius: Radius.elliptical(cutOutRadius, cutOutRadius),
      clockwise: false,
    );
    path.lineTo(firstCutOutPosition + cutOutDiameter, 0);
    path.lineTo(maxWidth - cornerRadius, 0);
    _drawCornerArc(path, maxWidth, cornerRadius);
    path.lineTo(maxWidth, rightCutoutStartY);
    path.lineTo(maxWidth, maxHeight - cornerRadius);
    _drawCornerArc(path, maxWidth - cornerRadius, maxHeight);
    path.lineTo(firstCutOutPosition + cutOutDiameter, maxHeight);
    path.arcToPoint(
      Offset(firstCutOutPosition, maxHeight),
      radius: Radius.circular(cutOutRadius),
      clockwise: false,
    );
    path.lineTo(cornerRadius, maxHeight);
    _drawCornerArc(path, 0, maxHeight - cornerRadius);
    path.lineTo(0, leftCutoutStartY);
    path.lineTo(0, cornerRadius);
    _drawCornerArc(path, cornerRadius, 0);

    canvas.drawShadow(path, Colors.black.withOpacity(.1), 2, false);
    canvas.drawPath(path, paintBg);

    while (dottedLineStartX < dottedLineEndX) {
      canvas.drawLine(
        Offset(maxWidth * (cutPosition / 100).clamp(0, 100), dottedLineStartX),
        Offset(maxWidth * (cutPosition / 100).clamp(0, 100),
            dottedLineStartX + dashWidth),
        paintDottedLine,
      );
      dottedLineStartX += dashWidth + dashSpace;
    }
  }

  _drawCornerArc(Path path, double endPointX, double endPointY) {
    path.arcToPoint(
      Offset(endPointX, endPointY),
      radius: Radius.circular(cornerRadius),
    );
  }

  @override
  bool shouldRepaint(CouponPainterTwo oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CouponPainterTwo oldDelegate) => false;
}
