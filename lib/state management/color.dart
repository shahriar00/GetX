import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/state%20management/colorchange.dart';

class color extends StatefulWidget {
  const color({super.key});

  @override
  State<color> createState() => _colorState();
}

class _colorState extends State<color> {
  colorchange controller = Get.put(colorchange());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
        children: [
          Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(controller.opacity.value),
                
              ),

               Slider(
                  value: controller.opacity.value,
                  onChanged: (value) {
                    controller.setopacity(value);
                  },
                ),
        ],
      )),
    );
  }
}
