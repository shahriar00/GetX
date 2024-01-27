import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx/getX/getx_basic/binding/binding.dart';
import 'package:getx/getX/getx_basic/view/counter_home.dart';

class AppRoutes {
  static const String initialRoute = '/home';

  static final routes = [
    GetPage(name: '/home', page: ()=>CounterHome(),binding: HomeBinding())
  ];
}
