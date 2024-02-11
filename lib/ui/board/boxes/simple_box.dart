import 'package:flutter/material.dart';

enum BoxAligment { vertical, horizontal }

class SimpleBox extends StatelessWidget {
  const SimpleBox({
    super.key,
    this.color,
    required this.text,
  });

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Colors.white,
      padding: const EdgeInsets.all(8),
      child: Center(
        child: Text(text, textAlign: TextAlign.center),
      ),
    );
  }
}
