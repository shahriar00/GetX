import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getX/getx_api/controller/controller.dart';
import 'package:getx/getX/getx_api/widgets/custom_card.dart';


class HomeViews extends StatefulWidget {
  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  var userController = Get.put(HomeControllers());
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      return ListView.builder(
        itemCount: userController.userList.length,
        itemBuilder: (context,index) {
          return Padding(padding: EdgeInsets.all(10),
          child: Container(
           
            child: CustomCard(
              name: userController.userList[index].name,
              email: userController.userList[index].email,
            ),
          ),);
        },
      );
    }));
  }
}
