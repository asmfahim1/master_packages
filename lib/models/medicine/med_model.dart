// To parse this JSON data, do
//
//     final medModel = medModelFromJson(jsonString);

import 'dart:convert';

MedModel medModelFromJson(String str) => MedModel.fromJson(json.decode(str));

String medModelToJson(MedModel data) => json.encode(data.toJson());

class MedModel {
  MedModel({
    required this.id,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.v,
  });

  dynamic id;
  dynamic image;
  dynamic name;
  dynamic description;
  int price;
  int v;

  factory MedModel.fromJson(Map<String, dynamic> json) => MedModel(
        id: json["_id"],
        image: json["image"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "image": image,
        "name": name,
        "description": description,
        "price": price,
        "__v": v,
      };
}
