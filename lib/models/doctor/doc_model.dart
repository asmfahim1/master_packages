// To parse this JSON data, do
//
//     final docModel = docModelFromJson(jsonString);

import 'dart:convert';

DocModel docModelFromJson(String str) => DocModel.fromJson(json.decode(str));

String docModelToJson(DocModel data) => json.encode(data.toJson());

class DocModel {
  DocModel({
    required this.id,
    required this.image,
    required this.name,
    required this.designation,
    required this.chameber,
    required this.v,
  });

  String id;
  String image;
  String name;
  String designation;
  String chameber;
  int v;

  factory DocModel.fromJson(Map<String, dynamic> json) => DocModel(
    id: json["_id"],
    image: json["image"],
    name: json["name"],
    designation: json["designation"],
    chameber: json["chameber"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "image": image,
    "name": name,
    "designation": designation,
    "chameber": chameber,
    "__v": v,
  };
}
