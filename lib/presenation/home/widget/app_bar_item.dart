import 'package:ntf_web/common_libs.dart';

class AppBarItem extends StatelessWidget {
  final String text;
  const AppBarItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(builder: (controller) {
      final isHovered = controller.hoverItem == text;
      final isSelected = controller.item == text;
      return InkWell(
        splashColor: Colors.transparent,
        onTap: () => controller.setItem(text),
        onHover: (hover) {
          if (hover) {
            controller.setHoverItem(text);
          } else {
            controller.setHoverItem('');
          }
        },
        child: Transform.scale(
          scale: isHovered ? 1.2 : 1,
          child: Text(
            text,
            style: satoshi500S24.copyWith(
              color: isSelected
                  ? const Color(0xFFE6692D)
                  : const Color(0xFF564F46),
            ),
          ),
        ).fadeInAndMoveFromBottom(),
      );
    });
  }
}
