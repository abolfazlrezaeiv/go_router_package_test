import 'package:get/get.dart';
import 'package:gorouter/page2/page2_controller.dart';

class Page2Bindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page2Controller>(() => Page2Controller());
  }
}
