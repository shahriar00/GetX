import 'package:get/get.dart';

class TapController extends GetxController{
  int _x = 0;
  int get x => _x;

  void increment(){
    _x++;
    update();
    print(_x);
  }

  void decrement(){
    _x--;
    update();
    print(_x);
  }


  // For Obserable...............

  // When we use obserable then we don't need to use update() function otherwise we use this funciton specially getbuilder method.


  final RxInt _a = 0.obs;
  RxInt get a => _a;

  int z = 0;
  void incrementY(){
    _a.value++;
    print(_x);
  }

  void decrementY(){
    _a.value--;
    print(_x);
  }

   void TotalXY(){
    z = x+a.value;
    print(z);
  }


}