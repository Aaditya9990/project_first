import 'dart:convert';

import 'package:http/http.dart' as http;

import 'item_list.dart';

class RemoteServies{

  Future<ItemList> fetchUser() async {
    final response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

    print(response);

    if (response.statusCode == 200) {
      return ItemList.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load items');
    }
  }}