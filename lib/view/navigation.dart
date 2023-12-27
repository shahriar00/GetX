import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

// GetX Navigator with arguments and without arguments.........

// GetX height and Width

class _navigationState extends State<navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Screen"),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
                onPressed: () {

                  //Get height and width......

                  // Get.height * 0.1;
                  // Get.width * 0.2;


                  // Get move to the next screen .............
                  // Get.to(homepage());
                  // Get.back();

                  Get.toNamed('/homepage');

                  //with arguments.............

                  // Get.toNamed('/homepage',arguments: [
                  //   'name',
                  //   'asif',
                  // ]);
                },
                child: Text("Go to")),
          )
        ],
      ),
    );
  }
}
