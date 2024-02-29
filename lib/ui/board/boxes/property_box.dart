import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/models/property_model.dart';
import 'package:monopoly_flutter/models/steps/property_step_model.dart';
import 'package:monopoly_flutter/notifiers/game_notifier.dart';
import 'package:monopoly_flutter/ui/board/boxes/tokens_box.dart';
import 'package:monopoly_flutter/utils/paint_util.dart';
import 'package:spaces2/spaces2.dart';

class PropertyBox extends ConsumerStatefulWidget {
  const PropertyBox({
    super.key,
    required this.step,
    required this.position,
  });

  final BoxPosition position;
  final PropertyStepModel step;

  @override
  ConsumerState<PropertyBox> createState() => _PropertyBoxState();
}

class _PropertyBoxState extends ConsumerState<PropertyBox> {
  late GameNotifier gameNotifier;

  late PropertyModel propertyModel = widget.step.property;

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

  Widget _colorWidget() {
    return Expanded(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: propertyModel.color,
              border: border,
            ),
            width: double.maxFinite,
            height: double.maxFinite,
            child: propertyModel.houseCount > 4
                ? const Icon(
                    Icons.apartment,
                    color: Colors.white,
                  )
                : houseWidget(),
          ),
          if (gameNotifier.isShowDialog &&
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
      propertyModel.houseCount,
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

    if (widget.position == BoxPosition.left ||
        widget.position == BoxPosition.right) {
      child = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: housesList,
      );
    }

    return child;
  }

  Widget namePriceWidget() {
    final priceWidget = Text(
      '\$${propertyModel.price}',
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
      ),
      softWrap: true,
    );

    final nameWidget = Text(
      propertyModel.name,
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
