import 'package:flutterstudy/src/controller/count_controller_with_getx.dart';
import 'package:get/get.dart';

class BindingPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(CountControllerWithGetx());
  }
}