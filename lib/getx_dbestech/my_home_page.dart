import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx_dbestech/controller/tap_controller.dart';
import 'package:getx/getx_dbestech/first_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {

    // Dependency Injection.............
    TapController controller = Get.put(TapController());

    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            // For Real Time visualize..............
            GetBuilder<TapController>(builder: (tapcontroller){
              return  Container( 
              margin: const EdgeInsets.all(10),
              height: 100,
              width: double.maxFinite,
              decoration: BoxDecoration( 
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal
              ),
              child:  Center( 
                child: Text(tapcontroller.x.toString(),style: const TextStyle( 
                  fontSize: 20,fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
            );
            }),
            GestureDetector(
              onTap: (){
                controller.increment();
              },
              child: Container( 
                margin: const EdgeInsets.all(10),
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal
                ),
                child: const Center( 
                  child: Text("Tap",style: TextStyle( 
                    fontSize: 20,fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
                Get.to(()=> const FirstPage());
              },
              child: Container( 
                margin: const EdgeInsets.all(10),
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal
                ),
                child: const Center( 
                  child: Text("First Page",style: TextStyle( 
                    fontSize: 20,fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}