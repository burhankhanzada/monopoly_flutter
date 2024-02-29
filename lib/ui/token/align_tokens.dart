import 'package:flutter/material.dart';
import 'package:monopoly_flutter/constants/enum_constant.dart';
import 'package:monopoly_flutter/ui/token/static_token.dart';

class AlignTokens extends StatelessWidget {
  const AlignTokens({
    super.key,
    required this.tokenList,
    this.position = BoxPosition.bottom,
  });

  final BoxPosition position;
  final List<StaticToken> tokenList;

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (tokenList.length < 4) {

      const paddingSize = 40.0;
      var padding = EdgeInsets.zero;

      if (position == BoxPosition.left) {
        padding =  const EdgeInsets.only(right: paddingSize);
      } else if(position == BoxPosition.right) {
        padding =  const EdgeInsets.only(left: paddingSize);
      }

      child = Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tokenList,
        ),
      );
    } else {
      final top = tokenList.sublist(0, 3);
      final bottom = tokenList.sublist(3);

      child = Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 30,
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
