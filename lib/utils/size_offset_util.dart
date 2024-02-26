import 'package:flutter/material.dart';

const double boardSize = 1000;

double half = boardSize / 2;

Offset center = Offset(half, half);

const double leftOffset = 0;
const double topOffset = 0;
double rightOffset = boardSize;
double bottomOffset = boardSize;

double cornerSize = boardSize / 6.5;
double cornerSizeHalf = cornerSize / 2;

double nonCornerSize = (boardSize - (cornerSize * 2)) / 9;
double nonCornerSizeHalf = nonCornerSize / 2;

double propertyHeaderSize = cornerSize / 4;

double propertyBodySize = cornerSize - propertyHeaderSize;
double propertyBodySizeHalf = propertyBodySize / 2;

final tokenSize = propertyBodySize / 2.5;

final rightBottom = Rect.fromLTWH(
  rightOffset,
  bottomOffset,
  nonCornerSize / 2,
  nonCornerSize / 2,
);

const diceSize = boardSize / 20;
const diceDotSize = diceSize / 15;
