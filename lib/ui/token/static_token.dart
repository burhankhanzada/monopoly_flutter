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
    // return SvgPicture(
    //   height: 50,
    //   SvgAssetLoader(
    //     'assets/icons/peice.svg',
    //     colorMapper: MyColorMapper(color: color),
    //   ),
    // );
    return Stack(
      clipBehavior: Clip.antiAlias,
      alignment: Alignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 5),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.black,
          ),
        ),
        const CircleAvatar(backgroundColor: Colors.white, radius: 20),
        CircleAvatar(backgroundColor: color, radius: 15),
      ],
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
