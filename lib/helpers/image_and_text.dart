import 'package:ntf_web/common_libs.dart';

class ImageAndTextWidget extends StatelessWidget {
  final String image;
  final String text;
  final List<Widget> children;
  const ImageAndTextWidget(
      {super.key,
      required this.image,
      required this.text,
      this.children = const []});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding:
          const EdgeInsets.only(left: space24, right: space24, bottom: space24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            alignment: Alignment.center,
            height: 200,
            width: 200,
          ),
          Text(
            text,
            style: satoshi500S14,
            textAlign: TextAlign.center,
          ),
          ...children,
        ],
      ),
    );
  }
}
