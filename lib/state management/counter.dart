import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/state%20management/encounter.dart';

class counter extends StatefulWidget {
  const counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  encounter controller = Get.put(encounter());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Center(
        child: Text(
              controller.count.toString(),
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
      )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        controller.increment();
      }),
    );
  }
}
