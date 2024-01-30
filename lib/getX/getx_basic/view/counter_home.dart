import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getX/getx_basic/controller/counter_controller.dart';
import 'package:getx/getX/getx_basic/routes/app_routes.dart';

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

                SizedBox(height: 60,),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.homePage);
                },
                child:const Padding(
                  padding:  EdgeInsets.all(10.0),
                  child: Text("Next",style: TextStyle( 
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                )),

              SizedBox(height: 60,),
            ElevatedButton(
                onPressed: controller.increment, child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.add,size: 30,),
                ))
          ],
        ),
      ),
    );
  }
}
