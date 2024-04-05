import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nimple_ui/commons/constants.dart';
import 'package:nimple_ui/generate/assets.dart';
import 'package:nimple_ui/utils/font_palette.dart';
import 'dart:ui' as ui show lerpDouble;

class FilterSelectionScreen extends StatefulWidget {
  // List<String> list;
  FilterSelectionScreen({
    super.key,
  });

  @override
  State<FilterSelectionScreen> createState() => _FilterSelectionScreenState();
}

class _FilterSelectionScreenState extends State<FilterSelectionScreen> {
  List languageList = [
    "English",
    "Spanish",
    "French",
    "German",
    "Malayalam",
    "Hindi",
  ];

  bool selct = false;
  bool checkingTickAdd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          Constants.selectlanguage,
          style: FontPalette.black_18_600,
        ),
      ),
      body: ListView.separated(
          itemBuilder: (ctx, index) {
            return InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: () {
                setState(() {
                  if (checkingTickAdd) {
                    checkingTickAdd = false;
                  } else {
                    checkingTickAdd = true;
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    // SizedBox(
                    //   height: 25.h,
                    //   width: 25.w,
                    //   child: SvgPicture.asset(Assets.tickIcon),
                    // ),20.horizontalSpace,
                    // Transform.scale(
                    //   scale: 1.5,
                    //   child: Checkbox(
                    //     checkColor: Colors.white,
                    //     activeColor: Colors.black,
                    //     shape: const CustomCircleBorder(),
                    //     value: selct,
                    //     onChanged: (val) {
                    //       setState(() {
                    //         selct = val!;
                    //       });
                    //     },
                    //   ),
                    // ),
                    AnimatedContainer(
                        curve: Curves.easeIn,
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.all(4),
                        height: 24.h,
                        width: 24.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                            color:
                                checkingTickAdd ? Colors.black : Colors.white,
                            shape: BoxShape.circle),
                        child: SvgPicture.asset(Assets.doneIcon)),
                    10.horizontalSpace,
                    Text(
                      languageList[index],
                      style: FontPalette.black_16_600
                          .copyWith(fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            return const Divider();
          },
          itemCount: languageList.length),
    );
  }
}

class CustomCircleBorder extends OutlinedBorder {
  /// Create a circle border.
  const CustomCircleBorder({super.side, this.eccentricity = 0.0})
      : assert(eccentricity >= 0.0,
            'The eccentricity argument $eccentricity is not greater than or equal to zero.'),
        assert(eccentricity <= 1.0,
            'The eccentricity argument $eccentricity is not less than or equal to one.');

  /// Defines the ratio (0.0-1.0) from which the border will deform
  /// to fit a rectangle.
  /// When 0.0, it draws a circle touching at least two sides of the rectangle.
  /// When 1.0, it draws an oval touching all sides of the rectangle.
  final double eccentricity;

  @override
  ShapeBorder scale(double t) =>
      CircleBorder(side: side.scale(t), eccentricity: eccentricity);

  @override
  ShapeBorder? lerpFrom(ShapeBorder? a, double t) {
    if (a is CircleBorder) {
      return CircleBorder(
        side: BorderSide.lerp(a.side, side, t),
        eccentricity: clampDouble(
            ui.lerpDouble(a.eccentricity, eccentricity, t)!, 0.0, 1.0),
      );
    }
    return super.lerpFrom(a, t);
  }

  @override
  ShapeBorder? lerpTo(ShapeBorder? b, double t) {
    if (b is CircleBorder) {
      return CircleBorder(
        side: BorderSide.lerp(side, b.side, t),
        eccentricity: clampDouble(
            ui.lerpDouble(eccentricity, b.eccentricity, t)!, 0.0, 1.0),
      );
    }
    return super.lerpTo(b, t);
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addOval(_adjustRect(rect).deflate(side.strokeInset));
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addOval(_adjustRect(rect));
  }

  // @override
  // void paintInterior(Canvas canvas, Rect rect, Paint paint,
  //     {TextDirection? textDirection}) {
  //   if (eccentricity == 0.0) {
  //     canvas.drawCircle(rect.center, rect.shortestSide / 2.0, paint);
  //   } else {
  //     canvas.drawOval(_adjustRect(rect), paint);
  //   }
  // }

  @override
  bool get preferPaintInterior => true;

  @override
  CircleBorder copyWith({BorderSide? side, double? eccentricity}) {
    return CircleBorder(
        side: side ?? this.side,
        eccentricity: eccentricity ?? this.eccentricity);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    switch (side.style) {
      case BorderStyle.none:
        break;
      case BorderStyle.solid:
        if (eccentricity == 0.0) {
          canvas.drawCircle(rect.center,
              (rect.shortestSide + side.strokeOffset) / 1, side.toPaint());
        } else {
          final Rect borderRect = _adjustRect(rect);
          canvas.drawOval(
              borderRect.inflate(side.strokeOffset / 2), side.toPaint());
        }
    }
  }

  Rect _adjustRect(Rect rect) {
    if (eccentricity == 0.0 || rect.width == rect.height) {
      return Rect.fromCircle(
          center: rect.center, radius: rect.shortestSide / 2.0);
    }
    if (rect.width < rect.height) {
      final double delta =
          (1.0 - eccentricity) * (rect.height - rect.width) / 2.0;
      return Rect.fromLTRB(
        rect.left,
        rect.top + delta,
        rect.right,
        rect.bottom - delta,
      );
    } else {
      final double delta =
          (1.0 - eccentricity) * (rect.width - rect.height) / 2.0;
      return Rect.fromLTRB(
        rect.left + delta,
        rect.top,
        rect.right - delta,
        rect.bottom,
      );
    }
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is CircleBorder &&
        other.side == side &&
        other.eccentricity == eccentricity;
  }

  @override
  int get hashCode => Object.hash(side, eccentricity);

  @override
  String toString() {
    if (eccentricity != 0.0) {
      return '${objectRuntimeType(this, 'CircleBorder')}($side, eccentricity: $eccentricity)';
    }
    return '${objectRuntimeType(this, 'CircleBorder')}($side)';
  }
}

String objectRuntimeType(Object? object, String optimizedValue) {
  assert(() {
    optimizedValue = object.runtimeType.toString();
    return true;
  }());
  return optimizedValue;
}

double clampDouble(double x, double min, double max) {
  assert(min <= max && !max.isNaN && !min.isNaN);
  if (x < min) {
    return min;
  }
  if (x > max) {
    return max;
  }
  if (x.isNaN) {
    return max;
  }
  return x;
}
