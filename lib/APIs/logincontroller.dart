import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class logincontroller extends GetxController {
  final emailcontroller = TextEditingController().obs;
  final passcontroller = TextEditingController().obs;

  void loginsetup() async {
    final response = await post(Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': emailcontroller.value.text,
          'password': passcontroller.value.text
        });

    try {
      final data = jsonDecode(response.body);
      print(data);
      print(response.statusCode);

      if (response.statusCode == 200) {
         Get.snackbar("Successful","congrates");
      } else {
        Get.snackbar("login failed", data['error'].toString());
      }
    } catch (e) {
      Get.snackbar("Exception", e.toString());
    }
  }
}
