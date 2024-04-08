import 'dart:math';

import 'package:ntf_web/common_libs.dart';

class HomeImageAnimation extends StatefulWidget {
  const HomeImageAnimation({Key? key}) : super(key: key);

  @override
  State<HomeImageAnimation> createState() => _HomeImageAnimationState();
}

class _HomeImageAnimationState extends State<HomeImageAnimation>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> _animation;
  int index = 0;
  Timer? timer;
  final images = [
    image1,
    image2,
    image3,
    image5,
    image6,
    image7,
    image8,
    image15,
    image9,
    image10,
  ];

  @override
  void initState() {
    controller = AnimationController(duration: fastDuration, vsync: this);

    _animation = Tween<double>(begin: 0.0, end: 40.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (index == images.length - 1) {
          index = 0;
        } else {
          index++;
        }
        setState(() {});
        controller.reverse();
      }
    });

    timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      controller.forward();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.1,
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0.0, _animation.value),
            child: Opacity(
              opacity: min(1, 1 - controller.value),
              child: Image.asset(images[index],
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover),
            ),
          );
        },
      ),
    );
  }
}
