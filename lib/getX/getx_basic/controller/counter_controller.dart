import 'package:get/get.dart';

class CounterController extends GetxController {
  // int counter = 0;
  RxInt counter = 0.obs;

  void increment() {
    counter++;
    //update();
  }
}
