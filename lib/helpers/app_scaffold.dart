import 'package:ntf_web/common_libs.dart';

///App Scaaffold
class AppScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Color? bgColor;
  final List<Widget> bannerActions;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  const AppScaffold({
    Key? key,
    required this.body,
    this.appBar,
    this.floatingActionButtonLocation,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.bgColor,
    this.bannerActions = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: bgColor ?? backgroundColor,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: body,
      ),
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
    );
  }

  Widget buildNetworkWidget(BuildContext context) {
    return IgnorePointer(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(kDefaultPadding / 4),
        margin: const EdgeInsets.only(
          left: kDefaultMargin / 4,
          right: kDefaultMargin / 4,
        ),
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(.5),
          borderRadius: BorderRadius.circular(cornersSmall),
        ),
        child: Row(
          children: [
            Text(
              "No Network Connection.",
              style: satoshi500S14.copyWith(
                  color: whiteColor, fontWeight: FontWeight.w700),
            ),
            const Spacer(),
            const Icon(
              Icons.warning_rounded,
              color: whiteColor,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}
