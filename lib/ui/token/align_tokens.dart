import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/ui/token/static_token.dart';

class AlignTokens extends StatelessWidget {
  const AlignTokens({
    super.key,
    required this.isCorner,
    required this.tokenList,
    required this.position,
  });

  final bool isCorner;
  final BoxPosition position;
  final List<StaticToken> tokenList;

  @override
  Widget build(BuildContext context) {
    Widget child = const SizedBox();

    if (tokenList.length < 4) {
      if (position == BoxPosition.left || position == BoxPosition.right) {
        child = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tokenList,
        );
      } else {
        child = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tokenList,
        );
      }
    } else {
      final part1 = tokenList.sublist(0, 3);
      final part2 = tokenList.sublist(3);

      if (position == BoxPosition.left || position == BoxPosition.right) {
        child = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: part1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: part2,
            )
          ],
        );
      } else {
        child = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: part1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: part2,
            )
          ],
        );
      }
    }

    // child = Padding(
    //   padding: !isCorner ? EdgeInsets.zero : const EdgeInsets.all(10),
    //   child: FittedBox(child: child),
    // );

    return child;
  }
}
