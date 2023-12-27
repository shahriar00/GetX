import 'package:get/get.dart';

class colorchange extends GetxController {
  RxDouble opacity = 0.4.obs;

  setopacity(double value) {
    opacity.value = value;
  }
}
