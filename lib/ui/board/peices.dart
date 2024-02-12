import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/peice.dart';

class Peices extends StatelessWidget {
  const Peices({
    super.key,
    required this.peiceList,
    this.isVertical = false,
  });

  final bool isVertical;
  final List<Peice> peiceList;

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (isVertical || peiceList.length <= 4) {
      child = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: peiceList,
      );
    } else {
      final top = peiceList.sublist(0, 3);
      final bottom = peiceList.sublist(3, 5);

      child = Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 20,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: bottom,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: top,
            ),
          ),
        ],
      );
    }

    return Align(
      alignment: Alignment.bottomCenter,
      child: child,
    );
  }
}
