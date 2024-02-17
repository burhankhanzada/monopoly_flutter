import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final diceProvider = StateProvider((ref) => 0);

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
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: numberWidget,
    );
  }

  Widget dot() {
    return const CircleAvatar(
      radius: 4,
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
