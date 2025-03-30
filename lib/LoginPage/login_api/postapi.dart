import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart' as htpp;

import 'login_model.dart';

class PostApi {
  Future<LoginModel> postUser(String username, String password) async {
    var response = await htpp.post(
      Uri.parse(
        'https://blazeerp.com/WebServices/public/index.php/parentLoginWithAuthNew',
      ),
      body: {
        "username": username,
        "password": password,
        "pComId": "1",
        "device_type": "Mobile",
        "os_type": "Android",
        "os_version": "",
        "did": "",
      },
      headers: {
        "PCID" : "1"
      }
    );
    print(response.body);

    if (response.statusCode == 200) {
      return LoginModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failure to load item");
    }
  }
}
