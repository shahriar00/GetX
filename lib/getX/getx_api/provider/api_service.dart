import 'dart:convert';
import 'package:getx/getX/getx_api/data/model/contact_model.dart';

import 'package:http/http.dart' as http;
 // Add this import for json.decode

class ApiService {
  
  Future<List<ContactModel>> fetchData() async {
    try {
      var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

      if (response.statusCode == 200) {
        
        List<dynamic> jsonList = json.decode(response.body);
        List<ContactModel> userList = jsonList.map((json) => ContactModel.fromJson(json)).toList();

        return userList;
      } else {
        throw Exception("Network Error");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }


   
}

