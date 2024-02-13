import 'package:flutter/material.dart';

class Player {
  String name;
  Color color;
  int step;

  Player({
    required this.name,
    required this.color,
    this.step = 0,
  });

  Player copyWith({
    String? name,
    Color? color,
    int? step,
  }) {
    return Player(
      name: name ?? this.name,
      color: color ?? this.color,
      step: step ?? this.step,
    );
  }

  @override
  String toString() => 'Player(name: $name, color: $color, step: $step)';
}
