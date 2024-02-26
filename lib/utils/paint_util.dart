import 'package:flutter/material.dart';

double strokeWidth = 2;

final strokePaint = Paint()
  ..strokeWidth = strokeWidth
  ..style = PaintingStyle.stroke;

final border = Border.all(
  width: strokeWidth,
  strokeAlign: BorderSide.strokeAlignCenter,
);
