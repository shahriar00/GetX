import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ShowDialogue extends StatelessWidget {
  const ShowDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Show Dialog"),
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
                  Get.defaultDialog(
                      title: "Defaule Dialog",
                      titleStyle: TextStyle(fontSize: 30),
                      middleText: "Middle Text",
                      backgroundColor: Colors.green,
                      textCancel: "Cancel",
                      textConfirm: "COnfirm",
                      onCancel: () {},
                      onConfirm: () {},
                      );
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
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
