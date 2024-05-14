import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/state%20management/listcontroller.dart';

class listdata extends StatefulWidget {
  const listdata({super.key});

  @override
  State<listdata> createState() => _listdataState();
}

class _listdataState extends State<listdata> {
  // final listdata = ["Apple", "Banana", "Orange", "Lemon"];
  // final fruitlist = [];

  listcontroller controller = Get.put(listcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: controller.listdata.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if (controller.fruitlist.contains(controller.listdata[index].toString())) {
                    controller.removeToFavourite(controller.listdata[index].toString());
                  } else {
                    controller.addToFavourite(controller.listdata[index].toString());
                  }

                  
                },
                title: Text(controller.listdata[index].toString()),
                trailing: Obx(() => Icon(
                  Icons.favorite,
                  color: controller.fruitlist.contains(controller.listdata[index].toString())
                      ? Colors.red
                      : Colors.white,
                ),)
              ),
            );
          }),
    );
  }
}
