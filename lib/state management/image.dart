import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'imagecontroller.dart';

class imagedata extends StatefulWidget {
  const imagedata({super.key});

  @override
  State<imagedata> createState() => _imagedataState();
}

class _imagedataState extends State<imagedata> {
  imagecontroller controller = Get.put(imagecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: controller.imagepath.isNotEmpty
                      ? FileImage(File(controller.imagepath.toString()))
                      : null,
                ),
              ),
              TextButton(
                  onPressed: () {
                    controller.getImage();
                    print(controller.imagepath);
                  },
                  child: Text("Image pick"))
            ],
          )),
    );
  }
}
