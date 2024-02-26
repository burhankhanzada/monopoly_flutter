import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StaticToken extends StatelessWidget {
  const StaticToken({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture(
      height: 50,
      SvgAssetLoader(
        'assets/icons/peice.svg',
        colorMapper: MyColorMapper(color: color),
      ),
    );
  }
}

class MyColorMapper implements ColorMapper {
  MyColorMapper({required this.color});

  final Color color;

  @override
  Color substitute(
    String? id,
    String elementName,
    String attributeName,
    Color color,
  ) {
    if (attributeName == 'fill') {
      return this.color;
    }
    return color;
  }
}
