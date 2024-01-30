import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx/getX/getx_api/view/home_view.dart';
import 'package:getx/getX/getx_basic/binding/binding.dart';
import 'package:getx/getX/getx_basic/view/counter_home.dart';

class AppRoutes {
  static const String initialRoute = '/home';
  static const String homePage = '/homepage';

  static final routes = [
    GetPage(name: '/home', page: () => CounterHome(), binding: HomeBinding()),
    GetPage(name: homePage, page: ()=> HomeViews(),binding: HomeBinding())
  ];
}
