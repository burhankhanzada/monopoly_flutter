import 'dart:ui';

import 'package:monopoly_flutter/utils/offset_util.dart';
import 'package:monopoly_flutter/utils/size_offset_util.dart';

final leftTopCornerRect = Rect.fromLTWH(
  leftOffset,
  topOffset,
  cornerSize,
  cornerSize,
);

final rightTopCornerRect = Rect.fromLTWH(
  rightOffset,
  bottomOffset,
  nonCornerSize,
  nonCornerSize,
);

final rightBottomCornerRect = Rect.fromLTWH(
  rightOffset,
  bottomOffset,
  nonCornerSize,
  nonCornerSize,
);
