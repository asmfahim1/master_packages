// To parse this JSON data, do
//
//     final medModel = medModelFromJson(jsonString);

import 'dart:convert';

List<MedModel> medModelFromJson(String str) =>
    List<MedModel>.from(json.decode(str).map((x) => MedModel.fromJson(x)));

String medModelToJson(List<MedModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MedModel {
  MedModel({
    this.id,
    this.image,
    this.name,
    this.description,
    this.price,
    this.v,
  });

  String? id;
  String? image;
  String? name;
  String? description;
  int? price;
  int? v;

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
