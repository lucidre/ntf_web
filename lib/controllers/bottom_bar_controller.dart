import 'package:get/get.dart';

class BottomBarController extends GetxController {
  final RxInt _index = 0.obs;
  int get index => _index.value;
  setIndex(int index) {
    _index(index);
  }
}
