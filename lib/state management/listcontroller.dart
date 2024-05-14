import 'package:get/get.dart';

class listcontroller extends GetxController {
  RxList listdata = ["Apple", "Banana", "Orange", "Lemon"].obs;
  RxList fruitlist = [].obs;

  addToFavourite(String value) {
    fruitlist.add(value);
  }

  removeToFavourite(String value) {
    fruitlist.remove(value);
  }
}
