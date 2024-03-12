import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/getx_dbestech/controller/tap_controller.dart';
import 'package:getx/getx_dbestech/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

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
              Get.to(()=>const ThirdPage());
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
                child: Text("Third Page",style:const TextStyle( 
                  fontSize: 20,fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
                       ),
           ),
          
        ],
      ),
    );
  }
}