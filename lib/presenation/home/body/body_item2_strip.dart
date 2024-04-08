import 'dart:math';
import 'package:ntf_web/common_libs.dart';

class BodyItem2Strip extends StatelessWidget {
  final bool isNegetive;
  const BodyItem2Strip({super.key, required this.isNegetive});

  @override
  Widget build(BuildContext context) {
    final List<Widget> total = [];
    final List<Widget> item = [
      horizontalSpacer24,
      Text(
        'NFT ART',
        style: satoshi700S12.copyWith(
          color: whiteColor,
        ),
      ).fadeInAndMoveFromBottom(),
      horizontalSpacer24,
      const Icon(
        Icons.star_rounded,
        color: primaryColor,
      ).fadeInAndMoveFromBottom(),
      horizontalSpacer24,
    ];

    for (var i = 0; i < 100; i++) {
      total.addAll(item);
    }
    return Transform.rotate(
      angle: (isNegetive ? -1 : 1) * pi / 40,
      origin: const Offset(-300, 0),
      child: Container(
        padding: const EdgeInsets.all(space12),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: stripGradient,
          ),
          border: Border.all(
            color: whiteColor.withOpacity(.4),
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(children: total),
        ),
      ),
    );
  }
}
