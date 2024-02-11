import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Peice extends StatelessWidget {
  const Peice({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/peice.svg',
      height: 50,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
