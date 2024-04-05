import 'package:flutter/material.dart';

class CustomRoundedRectRangeSliderTrackShape extends RangeSliderTrackShape
    with BaseRangeSliderTrackShape {
  /// Create a slider track with rounded outer edges.
  ///
  /// The middle track segment is the selected range and is active, and the two
  /// outer track segments are inactive.
  const CustomRoundedRectRangeSliderTrackShape({this.activeTrackHeight = 2.0});

  final double activeTrackHeight;

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset startThumbCenter,
    required Offset endThumbCenter,
    bool isEnabled = false,
    bool isDiscrete = false,
    required TextDirection textDirection,
  }) {
    assert(sliderTheme.disabledActiveTrackColor != null);
    assert(sliderTheme.disabledInactiveTrackColor != null);
    assert(sliderTheme.activeTrackColor != null);
    assert(sliderTheme.inactiveTrackColor != null);
    assert(sliderTheme.rangeThumbShape != null);

    if (sliderTheme.trackHeight == null || sliderTheme.trackHeight! <= 0) {
      return;
    }

    // Assign the track segment paints, which are left: active, right: inactive,
    // but reversed for right to left text.
    final ColorTween activeTrackColorTween = ColorTween(
      begin: sliderTheme.disabledActiveTrackColor,
      end: sliderTheme.activeTrackColor,
    );
    final ColorTween inactiveTrackColorTween = ColorTween(
      begin: sliderTheme.disabledInactiveTrackColor,
      end: sliderTheme.inactiveTrackColor,
    );
    final Paint activePaint = Paint()
      ..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation)!;

    final Offset leftThumbOffset;
    final Offset rightThumbOffset;
    switch (textDirection) {
      case TextDirection.ltr:
        leftThumbOffset = startThumbCenter;
        rightThumbOffset = endThumbCenter;
      case TextDirection.rtl:
        leftThumbOffset = endThumbCenter;
        rightThumbOffset = startThumbCenter;
    }
    final Size thumbSize =
        sliderTheme.rangeThumbShape!.getPreferredSize(isEnabled, isDiscrete);
    final double thumbRadius = thumbSize.width / 2;
    assert(thumbRadius > 0);

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final Radius trackRadius = Radius.circular(trackRect.height / 2);

    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        trackRect.left - thumbRadius,
        trackRect.top,
        leftThumbOffset.dx,
        trackRect.bottom,
        topLeft: trackRadius,
        bottomLeft: trackRadius,
      ),
      inactivePaint,
    );
    context.canvas.drawRect(
      Rect.fromLTRB(
        leftThumbOffset.dx,
        trackRect.top - activeTrackHeight,
        rightThumbOffset.dx,
        trackRect.bottom + activeTrackHeight,
      ),
      activePaint,
    );
    context.canvas.drawRRect(
      RRect.fromLTRBAndCorners(
        rightThumbOffset.dx,
        trackRect.top,
        trackRect.right + thumbRadius,
        trackRect.bottom,
        topRight: trackRadius,
        bottomRight: trackRadius,
      ),
      inactivePaint,
    );
  }
}
