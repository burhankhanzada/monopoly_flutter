import 'package:flutter/material.dart';
import 'package:monopoly_flutter/ui/board/peice.dart';
import 'package:spaces2/spaces2.dart';

enum BoxPosition { top, left, right, bottom }

class PropertyBox extends StatelessWidget {
  PropertyBox({
    super.key,
    required this.text,
    required this.price,
    required this.color,
    this.houseCount = 0,
    this.isHotel = false,
    List<Peice>? peiceList,
    required this.position,
  }) : peiceList = peiceList ?? [];

  final Color color;
  final String text;
  final int price;
  final int houseCount;
  final bool isHotel;
  final List<Peice> peiceList;
  final BoxPosition position;

  @override
  Widget build(BuildContext context) {
    final child = switch (position) {
      BoxPosition.top => Column(
          children: [
            namePriceWidget(),
            divider(),
            _colorWidget(),
          ],
        ),
      BoxPosition.bottom => Column(
          children: [
            _colorWidget(),
            divider(),
            namePriceWidget(),
          ],
        ),
      BoxPosition.left => Row(
          children: [
            namePriceWidget(),
            divider(),
            _colorWidget(),
          ],
        ),
      BoxPosition.right => Row(
          children: [
            _colorWidget(),
            divider(),
            namePriceWidget(),
          ],
        ),
    };

    return Container(
      color: Colors.white,
      child: child,
    );
  }

  bool _isVertical() {
    return position == BoxPosition.left || position == BoxPosition.right;
  }

  bool _isHorizontal() {
    return position == BoxPosition.top || position == BoxPosition.bottom;
  }

  Widget _colorWidget() {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: color,
        child: isHotel
            ? const Icon(
                Icons.apartment,
                color: Colors.white,
              )
            : houseWidget(),
      ),
    );
  }

  Widget houseWidget() {
    final housesList = List.generate(
      houseCount,
      (index) => const Icon(
        Icons.home,
        size: 16,
        color: Colors.white,
      ),
    );

    Widget child = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: housesList,
    );

    if (_isVertical()) {
      child = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: housesList,
      );
    }

    return child;
  }

  Widget divider() {
    return Container(
      color: Colors.black,
      width: _isVertical() ? 2 : null,
      height: _isHorizontal() ? 2 : null,
    );
  }

  Widget nameWidget() {
    final textWidget = Text(
      text,
      textAlign: TextAlign.center,
    );

    return RotatedBox(
      quarterTurns: 1,
      child: textWidget,
    );
  }

  Widget namePriceWidget() {
    Widget child;

    final priceWidget = Text(
      '\$$price',
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w900,
      ),
      softWrap: true,
    );

    final nameWidget = Text(
      text,
      textAlign: TextAlign.center,
      softWrap: true,
      style: const TextStyle(
        fontSize: 12,
      ),
    );

    child = SpacedColumn.small(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        priceWidget,
        nameWidget,
      ],
    );

    return Expanded(
      flex: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: child,
          ),
          peicesWidget(),
        ],
      ),
    );
  }

  Widget peicesWidget() {
    Widget child;

    if (_isVertical() || peiceList.length <= 4) {
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
              children: top,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: bottom,
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
