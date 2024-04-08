import 'package:ntf_web/common_libs.dart';

class SimpleRadioButton extends StatelessWidget {
  const SimpleRadioButton(
      {Key? key,
      required this.active,
      this.color,
      required this.onToggled,
      this.isExpanded = true,
      this.label})
      : super(key: key);
  final bool active;
  final Color? color;
  final bool isExpanded;
  final Widget? label;
  final Function(bool? onToggle) onToggled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        AppHaptics.mediumImpact();
        onToggled.call(!active);
      },
      child: IgnorePointer(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Radio(
              groupValue: true,
              value: active,
              visualDensity:
                  const VisualDensity(horizontal: 0.5, vertical: 0.5),
              fillColor: MaterialStateProperty.resolveWith<Color>(
                  (states) => color ?? context.textColor),
              onChanged: (bool? active) {},
            ),
            isExpanded ? Expanded(child: buildLabel()) : buildLabel()
          ],
        ),
      ),
    );
  }

  Widget buildLabel() {
    return label == null ? const SizedBox() : label!;
  }
}
