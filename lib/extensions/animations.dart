import 'package:flutter_animate/flutter_animate.dart';
import 'package:ntf_web/common_libs.dart';

extension WidgetAnimation on Widget {
  fadeInAndMoveFromTop({
    Duration? delay,
    Duration? animationDuration,
    Offset? offset,
  }) =>
      animate(delay: delay ?? slowDuration)
          .move(
              duration: animationDuration ?? xSlowDuration,
              begin: offset ?? const Offset(0, -10))
          .fade(duration: animationDuration ?? xSlowDuration);

  fadeInAndMoveFromTopAndLeft({
    Duration? delay,
    Duration? animationDuration,
    Offset? offset,
    Offset? offsetLeft,
  }) =>
      animate(delay: delay ?? slowDuration)
          .move(
              duration: animationDuration ?? xSlowDuration,
              begin: offset ?? const Offset(0, -10))
          .move(
              duration: animationDuration ?? xSlowDuration,
              begin: offsetLeft ?? const Offset(-10, 0))
          .fade(duration: animationDuration ?? xSlowDuration);

  fadeInAndMoveFromTopAndRight({
    Duration? delay,
    Duration? animationDuration,
    Offset? offset,
    Offset? offsetRight,
  }) =>
      animate(delay: delay ?? slowDuration)
          .move(
              duration: animationDuration ?? xSlowDuration,
              begin: offset ?? const Offset(0, -10))
          .move(
              duration: animationDuration ?? xSlowDuration,
              begin: offsetRight ?? const Offset(10, 0))
          .fade(duration: animationDuration ?? xSlowDuration);

  fadeInAndMoveFromBottom({
    Duration? delay,
    Duration? animationDuration,
    Offset? offset,
  }) =>
      animate(delay: delay ?? slowDuration)
          .move(
              duration: animationDuration ?? xSlowDuration,
              begin: offset ?? const Offset(0, 10))
          .fade(duration: animationDuration ?? xSlowDuration);

  fadeInAndMoveFromLeft({
    Duration? delay,
    Duration? animationDuration,
    Offset? offset,
  }) =>
      animate(delay: delay ?? slowDuration)
          .move(
              duration: animationDuration ?? xSlowDuration,
              begin: offset ?? const Offset(-10, 0))
          .fade(duration: animationDuration ?? xSlowDuration);

  fadeIn({
    Duration? delay,
    Duration? animationDuration,
    Curve? curve,
  }) =>
      animate(delay: delay ?? slowDuration).fade(
          duration: animationDuration ?? xSlowDuration,
          curve: curve ?? Curves.decelerate);
}
