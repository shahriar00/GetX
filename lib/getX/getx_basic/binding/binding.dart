import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:getx/getX/getx_basic/controller/counter_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
    // lazy put uses because when need to use controller then lazyput called. But put() create memory allocation unnecessary.
  }
}