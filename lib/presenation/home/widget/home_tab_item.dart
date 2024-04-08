import 'package:ntf_web/common_libs.dart';

class HomeTabItem extends StatelessWidget {
  final String text;
  const HomeTabItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(builder: (controller) {
      final isHovered = controller.homeTabItem1Hover == text;
      final isSelected = controller.homeTabItem == text;
      return InkWell(
        splashColor: Colors.transparent,
        onTap: () => controller.seHomeTabtItem1(text),
        onHover: (hover) {
          if (hover) {
            controller.setHomeTabItem1Hover(text);
          } else {
            controller.setHomeTabItem1Hover('');
          }
        },
        child: Container(
          padding: const EdgeInsets.only(
            left: space12,
            right: space12,
            top: space6,
            bottom: space6,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: !isSelected
                  ? [Colors.transparent, Colors.transparent]
                  : buttonGradient,
            ),
          ),
          child: Transform.scale(
            scale: isHovered ? 1.2 : 1,
            child: Text(
              text,
              style: satoshi500S24.copyWith(
                color: isSelected ? backgroundColor : lightBlack,
              ),
            ),
          ).fadeInAndMoveFromBottom(),
        ),
      );
    });
  }
}
