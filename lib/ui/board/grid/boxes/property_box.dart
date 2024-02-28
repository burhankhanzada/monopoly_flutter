import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/models/steps/step_model.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/ui/board/grid/boxes/tokens_box.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';
import 'package:spaces2/spaces2.dart';

enum BoxPosition { top, left, right, bottom }

class PropertyBox extends ConsumerStatefulWidget {
  const PropertyBox({
    super.key,
    required this.text,
    required this.price,
    required this.color,
    this.houseCount = 0,
    this.isHotel = false,
    required this.position,
    required this.step,
  });

  final int price;
  final Color color;
  final String text;
  final bool isHotel;
  final StepModel step;
  final int houseCount;
  final BoxPosition position;

  @override
  ConsumerState<PropertyBox> createState() => _PropertyBoxState();
}

class _PropertyBoxState extends ConsumerState<PropertyBox> {
  late GameNotifier gameNotifier;

  @override
  Widget build(BuildContext context) {
    gameNotifier = ref.watch(gameNotifierProvider);

    final child = switch (widget.position) {
      BoxPosition.top => Column(
          children: [
            namePriceWidget(),
            _colorWidget(),
          ],
        ),
      BoxPosition.bottom => Column(
          children: [
            _colorWidget(),
            namePriceWidget(),
          ],
        ),
      BoxPosition.left => Row(
          children: [
            namePriceWidget(),
            _colorWidget(),
          ],
        ),
      BoxPosition.right => Row(
          children: [
            _colorWidget(),
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
    return widget.position == BoxPosition.left ||
        widget.position == BoxPosition.right;
  }

  Widget _colorWidget() {
    return Expanded(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: widget.color,
              border: border,
            ),
            width: double.maxFinite,
            height: double.maxFinite,
            child: widget.isHotel
                ? const Icon(
                    Icons.apartment,
                    color: Colors.white,
                  )
                : houseWidget(),
          ),
          if (gameNotifier.showDialog &&
              gameNotifier.currentStep.index != widget.step.index)
            Container(
              color: Colors.black54,
            )
        ],
      ),
    );
  }

  Widget houseWidget() {
    final housesList = List.generate(
      widget.houseCount,
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

  Widget namePriceWidget() {
    final priceWidget = Text(
      '\$${widget.price}',
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
      ),
      softWrap: true,
    );

    final nameWidget = Text(
      widget.text,
      textAlign: TextAlign.center,
      softWrap: true,
      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    );

    Widget child = SpacedColumn.small(
      padding: const EdgeInsets.all(4),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        priceWidget,
        nameWidget,
      ],
    );

    child = Container(
      decoration: BoxDecoration(
        border: border,
        color: Colors.white,
      ),
      child: child,
    );

    return Expanded(
      flex: 3,
      child: TokensBox(
        step: widget.step,
        child: child,
      ),
    );
  }
}
