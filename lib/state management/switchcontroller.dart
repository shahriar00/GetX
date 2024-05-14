import 'package:get/state_manager.dart';

class switchcontroller extends GetxController {
  RxBool notification = false.obs;

  setnotification(bool value) {
    notification.value = value;
  }
}
