import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/commons/route_generator.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/src/main/home_screen/view/tab_view/tab_all_screen.dart';
import 'package:nimple_ui/src/main/home_screen/view/tab_view/tab_care_screen.dart';
import 'package:nimple_ui/src/main/home_screen/view/tab_view/tab_clean_screen.dart';
import 'package:nimple_ui/src/main/home_screen/view/tab_view/tab_cook_screen.dart';
import 'package:nimple_ui/src/main/home_screen/view_model/home_provider.dart';
import 'package:nimple_ui/src/shimmer/provider/provider_home_screen_shimmer.dart';
import 'package:nimple_ui/src/shimmer/seeker_home_list_shimmer.dart';
import 'package:nimple_ui/src/shimmer/seeker_home_shimmer.dart';
import 'package:nimple_ui/utils/color_palate.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> tabs = ['All', "Care", "Cook", "Clean"];
  final List tabsIcon = [
    "",
    Assets.heart_plus,
    Assets.skillet,
    Assets.cleaning_services
  ];

  int seletedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 4,
    //   child: Scaffold(
    //     backgroundColor: HexColor("#EEEEF2"),
    //     body: Column(
    //       children: [
    //         SizedBox(
    //           height: 88.h,
    //           width: double.maxFinite,
    //           child: TabBar(
    //             overlayColor:
    //                 MaterialStateProperty.all<Color>(Colors.transparent),
    //             onTap: (value) {
    //               setState(() {
    //                 seletedIndex = value;
    //               });
    //             },
    //             padding: const EdgeInsets.all(20),
    //             labelPadding: EdgeInsets.zero,
    //             indicatorColor: Colors.transparent,
    //             dividerHeight: 0,
    //             tabs: List.generate(tabs.length, (index) {
    //               return Container(
    //                 // alignment: Alignment.center,
    //                 padding: EdgeInsets.only(top: 14.h, bottom: 14.h),
    //                 margin: EdgeInsets.only(right: index <= 2 ? 10 : 0),
    //                 decoration: BoxDecoration(
    //                     color:
    //                         seletedIndex == index ? Colors.black : Colors.white,
    //                     borderRadius: BorderRadius.circular(32)),
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     index == 0
    //                         ? 0.horizontalSpace
    //                         : SizedBox(
    //                             height: 17.h,
    //                             width: 17.w,
    //                             child: SvgPicture.asset(
    //                               tabsIcon[index],
    //                               color: seletedIndex == index
    //                                   ? Colors.white
    //                                   : Colors.black,
    //                             ),
    //                           ),
    //                     3.horizontalSpace,
    //                     Text(
    //                       tabs[index],
    //                       style: FontPalette.black_14_600.copyWith(
    //                           color: seletedIndex == index
    //                               ? Colors.white
    //                               : Colors.black),
    //                       overflow: TextOverflow.ellipsis,
    //                     ),
    //                   ],
    //                 ),
    //               );
    //             }),
    //           ),
    //         ),
    //         Expanded(
    //           child: TabBarView(
    //             physics: const NeverScrollableScrollPhysics(),
    //             children: [
    //               TabAllScreen(),
    //               const TabCareScreen(),
    //               const TabCookScreen(),
    //               const TabCleanScreen()
    //               // const ClipTestWidget(),
    //             ],
    //           ),
    //         ),
    //         Container(
    //           color: Colors.white,
    //           height: 41.h,
    //           width: double.maxFinite,
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: [
    //               InkWell(
    //                 onTap: () {
    //                   Navigator.pushNamed(
    //                     context,
    //                     RouteGenerator.routefilterScreen,
    //                   );
    //                 },
    //                 child: SizedBox(
    //                   height: 21.h,
    //                   width: 100.w,
    //                   child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: [
    //                       SizedBox(
    //                         height: 30.h,
    //                         width: 30.w,
    //                         child: SvgPicture.asset(
    //                           Assets.filter,
    //                         ),
    //                       ),
    //                       10.horizontalSpace,
    //                       Text(
    //                         Constants.filter,
    //                         style: FontPalette.black_14_600,
    //                       )
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //               Container(
    //                 height: 21.h,
    //                 width: 1,
    //                 color: HexColor("#C7C6CD"),
    //               ),
    //               InkWell(
    //                 onTap: () {
    //                   if (context.read<HomeProvider>().listAndGridBool) {
    //                     context.read<HomeProvider>().onClick(false);
    //                   } else {
    //                     context.read<HomeProvider>().onClick(true);
    //                   }
    //                 },
    //                 child: Selector<HomeProvider, bool>(
    //                     selector: (p0, p1) => p1.listAndGridBool,
    //                     builder: (context, data, _) {
    //                       return SizedBox(
    //                         height: 21.h,
    //                         width: 100.w,
    //                         child: Row(
    //                           mainAxisAlignment: MainAxisAlignment.center,
    //                           children: [
    //                             SizedBox(
    //                               height: 19.h,
    //                               width: 19.w,
    //                               child: SvgPicture.asset(
    //                                 data == true
    //                                     ? Assets.gridIcon
    //                                     : Assets.list,
    //                               ),
    //                             ),
    //                             10.horizontalSpace,
    //                             Text(
    //                               data == true ? "Grid" : Constants.list,
    //                               style: FontPalette.black_14_600,
    //                             )
    //                           ],
    //                         ),
    //                       );
    //                     }),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return ProviderHomeScreenShimmer();
  }
}

class ClipTestWidget extends StatelessWidget {
  const ClipTestWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 16, top: 7, bottom: 7),
          child: CustomPaint(
            painter: CouponPainterTwo(
                bgColor: Colors.blue, cutPosition: 50, cutOutRadius: 20),
            child: Container(
              constraints: const BoxConstraints(minHeight: 200),
              width: double.maxFinite,
              // color: Colors.red,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 16, top: 7, bottom: 7),
          child: CustomPaint(
            painter: CouponPainter(
                bgColor: Colors.blue, cutPosition: .50, cutOutRadius: 20),
            child: Container(
              constraints: const BoxConstraints(minHeight: 200),
              width: double.maxFinite,
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.red,
                  ),
                  Text("data"),
                  Container(
                    height: 50,
                    width: 1,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
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

    final paintBorder = Paint()
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..color = Colors.transparent;

    final paintDottedLine = Paint()
      ..color = HexColor("#D8D8D8")
      ..strokeWidth = 1.2;

    var path = Path();

    final firstCutOutPosition =
        ((maxWidth * (cutPosition / 100).clamp(0, 100)) - cutOutRadius);

    path.moveTo(cornerRadius, 0);
    path.lineTo(firstCutOutPosition, 0);
    path.arcToPoint(
      Offset(firstCutOutPosition + cutOutDiameter, 0),
      radius: Radius.circular(cutOutRadius),
      clockwise: false,
    );
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

    canvas.drawPath(path, paintBg);
    canvas.drawPath(path, paintBorder);
    canvas.drawShadow(path, Colors.black.withOpacity(.1), -2, false);

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
