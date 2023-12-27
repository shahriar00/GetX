import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/state%20management/switchcontroller.dart';

class switchdata extends StatefulWidget {
  const switchdata({super.key});

  @override
  State<switchdata> createState() => _switchdataState();
}

class _switchdataState extends State<switchdata> {
  switchcontroller controller = Get.put(switchcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => Switch(
          value: controller.notification.value,
          onChanged: (value) {
            controller.setnotification(value);
          }),
    ));
  }
}
