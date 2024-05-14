import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

// GetX Snackbar, defaultDialog, Bottomsheet and changeTheme

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("GetX")),
        centerTitle: true,
      ),
      body: Column(
        children: [

          //For Navigate the Page

          // Center(
          //   child: TextButton(
          //       onPressed: () {
          //         // Get move to the next screen .............
          //         // Get.to(homepage());
          //         // Get.back();

          //         Get.toNamed('/navigation');
          //       },
          //       child: Text("Go to")),
          // ),

          ListTile(
            title: Text('messege'.tr),
            subtitle: Text('name'.tr),
          ),


          Card(
            color: Colors.blueGrey,
            child: ListTile(
              focusColor: Colors.blue,
              title: Text(
                "This is a list tile",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text("This is a subtitle"),
              onTap: () {
                //Get Bottom Sheet....................
                Get.bottomSheet(Container(
                  color: Colors.blue,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text("Light Mode"),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text("Dark Mode"),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));

                //Get Dialog Box......................

                // Get.defaultDialog(
                //   title: "This a title box",titleStyle: TextStyle(color: Colors.red),
                //   titlePadding: EdgeInsets.all(10),
                //   middleText: "This is a subtitle box",
                // );
              },
            ),
          ),
          Container(
              // child: Center(child: Text("GetX Home page!!")),

              ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get snackbar.............
          Get.snackbar("messege", "This is snackber messege",
              colorText: Colors.blue, snackPosition: SnackPosition.BOTTOM);
        },
        // child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
      ),
    );
  }
}
