import 'dart:convert';

import 'package:http/http.dart' as http;

import 'login_model.dart';

class PostApi {
  Future<LoginModel> postUser(String userName,String password) async {
    var response = await http.post(
      Uri.parse(
        'https://blazeerp.com/WebServices/public/index.php/parentLoginWithAuthNew',
      ),
      body: {
        "username": userName,
        "password": password,
        "pComId": "1",
        "device_type": "Mobile",
        "os_type": "Android",
        "os_version": "",
        "did": "",
      },
      headers: {"PCID": "1"},
    );
    print(response.body);

    if (response.statusCode == 200) {
      return LoginModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(" Failed to load item");
    }
  }
}
