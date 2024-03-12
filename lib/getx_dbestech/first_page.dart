import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx_dbestech/controller/tap_controller.dart';
import 'package:getx/getx_dbestech/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar( 
        leading: IconButton(onPressed:  (){
          Get.back();
        }, icon:const Icon( Icons.arrow_back_ios)),
      ),
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 

          GetBuilder<TapController>(builder: (_){
            return  Container( 
            margin: const EdgeInsets.all(10),
            height: 100,
            width: double.maxFinite,
            decoration: BoxDecoration( 
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal
            ),
            child:  Center( 
              child: Text(controller.x.toString(),style:const TextStyle( 
                fontSize: 20,fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
            ),
          );
          }),
           GestureDetector(
            onTap: (){
              controller.decrement();
            },
             child: Container( 
              margin: const EdgeInsets.all(10),
              height: 100,
              width: double.maxFinite,
              decoration: BoxDecoration( 
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal
              ),
              child:  Center( 
                child: Text("Tap",style:const TextStyle( 
                  fontSize: 20,fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
                       ),
           ),
          GestureDetector(
            onTap: (){ 
              Get.to(()=>const SecondPage());
            },
            child: Container( 
              margin: const EdgeInsets.all(10),
              height: 100,
              width: double.maxFinite,
              decoration: BoxDecoration( 
                borderRadius: BorderRadius.circular(20),
                color: Colors.teal
              ),
              child:  const Center( 
                child: Text("Second Page",style: TextStyle( 
                  fontSize: 20,fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}