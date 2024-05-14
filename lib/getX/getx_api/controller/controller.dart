import 'dart:convert';

import 'package:get/get.dart';

import 'package:getx/getX/getx_api/data/model/contact_model.dart';
import 'package:getx/getX/getx_api/provider/api_service.dart';


class HomeControllers extends GetxController {
  RxList userList = <ContactModel>[].obs;
  fetchData() async {
    // final response = await http.get(Uri.parse(api));
    // print(response.body);

    // try {
    //   // response.body string convert to json format.
    //   final model = ContactModel.fromJson(jsonDecode(response.body));
    //   return model;
    // } catch (e) {
    //   print(e);
    //   throw e;
    // }

    try {
      var userData = await ApiService().fetchData();
      userList.addAll(userData as Iterable<ContactModel>);
    } catch (e) {
      print("Error $e");
    }
  }

  @override
  void onInit() {
    fetchData();
    // TODO: implement onInit
    super.onInit();
  }
}
