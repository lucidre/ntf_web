import 'package:ntf_web/common_libs.dart';

class HomeController extends GetxController {
  final RxString _item = 'Home'.obs;
  final RxString _hoverItem = ''.obs;
  final RxString _homeTabItem1 = 'All'.obs;
  final RxString _homeTabItem1Hover = ''.obs;
  final Rx<Offset> _mouseRegion = Offset(0, 0).obs;

  String get item => _item.value;
  String get hoverItem => _hoverItem.value;
  String get homeTabItem => _homeTabItem1.value;
  String get homeTabItem1Hover => _homeTabItem1Hover.value;
  Offset get mouseRegion => _mouseRegion.value;

  setItem(String item) => _item(item);
  setHoverItem(String item) => _hoverItem(item);
  seHomeTabtItem1(String item) => _homeTabItem1(item);
  setHomeTabItem1Hover(String item) => _homeTabItem1Hover(item);
  setMouseRegion(Offset region) => _mouseRegion(region);
}
