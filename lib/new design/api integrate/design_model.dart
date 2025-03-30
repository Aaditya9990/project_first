// To parse this JSON data, do
//
//     final designModel = designModelFromJson(jsonString);

import 'dart:convert';

List<DesignModel> designModelFromJson(String str) => List<DesignModel>.from(json.decode(str).map((x) => DesignModel.fromJson(x)));

String designModelToJson(List<DesignModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DesignModel {
  int userId;
  int id;
  String title;
  String body;

  DesignModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory DesignModel.fromJson(Map<String, dynamic> json) => DesignModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
