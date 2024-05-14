import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/APIs/logincontroller.dart';


class logindata extends StatefulWidget {
  const logindata({super.key});

  @override
  State<logindata> createState() => _logindataState();
}

class _logindataState extends State<logindata> {
  logincontroller controller = Get.put(logincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Controller"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailcontroller.value,
              decoration: InputDecoration(hintText: "Enter Email"),
            ),
            TextFormField(
              controller: controller.passcontroller.value,
              decoration: InputDecoration(hintText: "Enter Password"),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                controller.loginsetup();
              },
              child: Container(
                height: 45,
                color: Colors.grey,
                child: Center(
                    child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
