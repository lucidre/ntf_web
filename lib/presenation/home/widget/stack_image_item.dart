import 'package:ntf_web/common_libs.dart';

class StackImageItem extends StatelessWidget {
  final double x;
  final String image;
  final double size;
  const StackImageItem({
    super.key,
    required this.x,
    required this.image,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(x, 0),
      child: Container(
        padding: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: whiteColor,
        ),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          width: size,
          height: size,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
