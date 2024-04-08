import 'package:ntf_web/common_libs.dart';

/// The core button that drives all other buttons.
class AppBtn extends StatelessWidget {
  // interaction:
  final VoidCallback onPressed;
  final String semanticLabel;
  final bool enableFeedback;

  final Color? textColor;
  final Color? borderColor;
  final List<Color>? bgColor;
  final String text;
  final bool pressEffect;

  const AppBtn({
    Key? key,
    required this.onPressed,
    required this.semanticLabel,
    this.enableFeedback = true,
    this.pressEffect = true,
    this.bgColor,
    this.borderColor,
    this.textColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget button = InkWell(
      splashColor: Colors.transparent,
      onTap: () => onPressed(),
      child: Text(
        text,
        style: satoshi500S14.copyWith(
          color: textColor ?? whiteColor,
        ),
      ),
    );

    // add press effect:
    if (pressEffect) button = _ButtonPressEffect(button);

    // add semantics?
    if (semanticLabel.isNotEmpty) {
      button = Semantics(
        label: semanticLabel,
        button: true,
        container: true,
        child: ExcludeSemantics(child: button),
      );
    }

    return Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(space8),
        border: Border.all(
          color: borderColor ?? primaryColor,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(
          top: space16,
          bottom: space16,
          right: space24 * 2,
          left: space24 * 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(space8),
          gradient: LinearGradient(
            colors: bgColor ?? buttonGradient,
          ),
        ),
        child: button,
      ),
    );
  }
}

/// //////////////////////////////////////////////////
/// _ButtonDecorator
/// Add a transparency-based press effect to buttons.
/// //////////////////////////////////////////////////
class _ButtonPressEffect extends StatefulWidget {
  const _ButtonPressEffect(this.child, {Key? key}) : super(key: key);
  final Widget child;

  @override
  State<_ButtonPressEffect> createState() => _ButtonPressEffectState();
}

class _ButtonPressEffectState extends State<_ButtonPressEffect> {
  bool _isDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      excludeFromSemantics: true,
      onTapDown: (_) => setState(() => _isDown = true),
      onTapUp: (_) => setState(
          () => _isDown = false), // not called, TextButton swallows this.
      onTapCancel: () => setState(() => _isDown = false),
      behavior: HitTestBehavior.translucent,
      child: Opacity(
        opacity: _isDown ? 0.7 : 1,
        child: ExcludeSemantics(child: widget.child),
      ),
    );
  }
}
