// To parse this JSON data, do
//
//     final pharmacyModel = pharmacyModelFromJson(jsonString);

import 'dart:convert';

List<PharmacyModel> pharmacyModelFromJson(String str) =>
    List<PharmacyModel>.from(
        json.decode(str).map((x) => PharmacyModel.fromJson(x)));

String pharmacyModelToJson(List<PharmacyModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PharmacyModel {
  PharmacyModel({
    required this.id,
    required this.image,
    required this.name,
    required this.location,
    required this.v,
  });

  String id;
  String image;
  String name;
  String location;
  int v;

  factory PharmacyModel.fromJson(Map<String, dynamic> json) => PharmacyModel(
        id: json["_id"],
        image: json["image"],
        name: json["name"],
        location: json["location"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "image": image,
        "name": name,
        "location": location,
        "__v": v,
      };
}
