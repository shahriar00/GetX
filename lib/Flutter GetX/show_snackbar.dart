import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ShowSnackBar extends StatelessWidget {
  const ShowSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Show SnackBar"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       
        children: [
          Center(
            child: Container(
              height: 50,
              width: 100,
              child: MaterialButton(
                color: Colors.blue,           
                onPressed: () {
                  Get.snackbar(
                   "Snackbar Demo",
                   "Snackbar Data messege",
                   snackPosition: SnackPosition.BOTTOM,
                   colorText: Colors.amber,
                   backgroundColor: Colors.grey,
                   borderRadius: 20,
                   margin: const EdgeInsets.only(bottom: 30,left: 20,right: 20),
                   borderColor: Colors.purple,
                   borderWidth: 2,
                   forwardAnimationCurve: Curves.bounceInOut,
                   //many more......................
                  );
                },
                child: const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text("Click"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
