import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monopoly_flutter/notifiers/tokens_notifer.dart';
import 'package:monopoly_flutter/ui/token/static_token.dart';

class AnimatedToken extends ConsumerStatefulWidget {
  const AnimatedToken({super.key});

  @override
  ConsumerState<AnimatedToken> createState() => _AnimatedTokenState();
}

class _AnimatedTokenState extends ConsumerState<AnimatedToken>
    with TickerProviderStateMixin {
  late TokensNotifier tokensNotifier;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      tokensNotifier.init(this);
    });
  }

  @override
  Widget build(BuildContext context) {
    tokensNotifier = ref.watch(tokensNotifierProvider);

    final token = tokensNotifier.token;

    final svg = StaticToken(color: token.color);

    if (!token.isAnimating) return const SizedBox();

    return AnimatedBuilder(
      animation: token.animation,
      builder: (context, child) {
        return Positioned.fromRect(
          rect: token.animation.value!,
          child: svg,
        );
      },
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
