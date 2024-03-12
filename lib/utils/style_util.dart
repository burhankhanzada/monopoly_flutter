import 'package:flutter/material.dart';

const dailogInnerrPadding = EdgeInsets.all(20);
final dailogBorderRadius1 = BorderRadius.circular(50);
final dailogBorderRadius2 = BorderRadius.circular(40);
final dailogBorderRadius3 = BorderRadius.circular(30);

const double stepRadius = 15;
const stepRadiusCircular = Radius.circular(stepRadius);
final stepBorderRadiusCirular = BorderRadius.circular(stepRadius);

double strokeWidth = 2;

final border = Border.all(
  width: strokeWidth,
  strokeAlign: BorderSide.strokeAlignCenter,
);

Color stepBackgroundColor(Color color) {
  return color.withOpacity(0.20);
}
