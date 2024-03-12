import 'package:flutter/material.dart';
import 'package:monopoly_flutter/utils/style_util.dart';
import 'package:monopoly_flutter/utils/size_util.dart';

class Dice extends StatelessWidget {
  const Dice({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
    final numberWidget = switch (number) {
      2 => two(),
      3 => three(),
      4 => four(),
      5 => five(),
      6 => six(),
      _ => one(),
    };

    return Container(
      width: diceSize,
      height: diceSize,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: strokeWidth),
      ),
      child: numberWidget,
    );
  }

  Widget dot() {
    return const CircleAvatar(
      radius: diceDotSize,
      backgroundColor: Colors.black,
    );
  }

  Widget one() {
    return Center(
      child: dot(),
    );
  }

  Widget two() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: dot(),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: dot(),
        ),
      ],
    );
  }

  Widget three() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: dot(),
        ),
        dot(),
        Align(
          alignment: Alignment.bottomLeft,
          child: dot(),
        ),
      ],
    );
  }

  Widget four() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [dot(), dot()],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [dot(), dot()],
        )
      ],
    );
  }

  Widget five() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [dot(), dot()],
        ),
        dot(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [dot(), dot()],
        )
      ],
    );
  }

  Widget six() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [dot(), dot(), dot()],
          ),
        ),
        ClipRRect(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [dot(), dot(), dot()],
          ),
        )
      ],
    );
  }
}
