import 'package:get/get.dart';

class encounter extends GetxController {
  RxInt count = 1.obs;

  increment() {
    count.value++;
    print(count.value);
    notifyChildrens();
  }
}
