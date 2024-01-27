import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getX/getx_basic/controller/counter_controller.dart';

class CounterHome extends GetView<CounterController> {
  CounterHome({super.key});
  //final dependency = Get.put(CounterController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // child: Center(child: GetBuilder<CounterController>(
        //   builder: (controller) {
        //     return Text(
        //       controller.counter.toString(),
        //       style: TextStyle(fontSize: 30),
        //     );
        //   },
        // )),
        child: Column(
          children: [
            Obx(() => Center(
              child: Text(
                controller.counter.toString(),
                style: TextStyle(fontSize: 30),
              ),
            )),


            ElevatedButton(onPressed: controller.increment, child: Icon(Icons.add))
          ],
        ),
      ),
      
    );
  }
}
