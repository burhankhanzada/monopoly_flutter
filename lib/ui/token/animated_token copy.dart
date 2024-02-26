// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:monopoly_flutter/models/token.dart';
// import 'package:monopoly_flutter/notifiers/game_notifier.dart';
// import 'package:monopoly_flutter/notifiers/tokens_notifer.dart';
// import 'package:monopoly_flutter/utils/size_offset_util.dart';

// class Tokens extends ConsumerStatefulWidget {
//   const Tokens({super.key});

//   @override
//   ConsumerState<Tokens> createState() => _TokenState();
// }

// class _TokenState extends ConsumerState<Tokens> with TickerProviderStateMixin {
//   // late final tokensNotifier = ref.watch(tokensNotifierProvider);
//   late TokensNotifier tokensNotifier;
//   late final gameNotifier = ref.watch(gameNotifierProvider);

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       tokensNotifier.init(this);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     tokensNotifier = ref.watch(tokensNotifierProvider);
//     return SizedBox.square(
//       dimension: boardSize,
//       child: Stack(
//         children: _buildTokens(),
//       ),
//     );
//   }

//   List<Widget> _buildTokens() {
//     List<Widget> list = [];

//     for (final token in tokensNotifier.tokens) {
//       final widget = _buildToken(token);
//       list.add(widget);
//     }

//     return list;
//   }

//   Widget _buildToken(TokenModel token) {
//     final svg = SvgPicture(
//       // height: 50,
//       SvgAssetLoader(
//         'assets/icons/peice.svg',
//         colorMapper: MyColorMapper(color: token.color),
//       ),
//     );

//     if (!token.isAnimating) return const SizedBox();

//     return AnimatedBuilder(
//       animation: token.animation,
//       builder: (context, child) {
//         return Positioned.fromRect(
//           rect: token.animation.value!,
//           child: svg,
//         );
//       },
//     );
//   }
// }

// class MyColorMapper implements ColorMapper {
//   MyColorMapper({required this.color});

//   final Color color;

//   @override
//   Color substitute(
//     String? id,
//     String elementName,
//     String attributeName,
//     Color color,
//   ) {
//     if (attributeName == 'fill') {
//       return this.color;
//     }
//     return color;
//   }
// }
