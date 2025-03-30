import 'dart:convert';

import 'package:http/http.dart' as http;

import 'design_model.dart';

class DesignApi{

  Future<List<DesignModel>> fetchUsers() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => DesignModel.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load users");
    }
  }
}