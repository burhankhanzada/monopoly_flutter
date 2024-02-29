import 'dart:ui';

import 'package:monopoly_flutter/constants/enum_constant.dart';

class StepModel {
  int index;
  Rect rect;
  BoxPosition position;

  StepModel({
    required this.rect,
    required this.index,
    required this.position,
  });
}
