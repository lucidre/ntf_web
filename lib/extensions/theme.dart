import 'package:ntf_web/common_libs.dart';

extension DeviceTheme on BuildContext {
  Brightness get _platformBrightness => MediaQuery.of(this).platformBrightness;
  bool get $isLightMode => _platformBrightness == Brightness.light;
  bool get $isDarkMode => _platformBrightness == Brightness.dark;

  Color get textColor => neutral800;

  ThemeData get lightTheme => ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: primaryColor),
        canvasColor: backgroundColor,
        dialogBackgroundColor: backgroundColor,
        cardColor: whiteColor,
        iconTheme:
            ThemeData.light().iconTheme.copyWith(color: textColor, size: 24),
      );
}
