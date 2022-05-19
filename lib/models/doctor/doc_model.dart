// To parse this JSON data, do
//
//     final doctorModel = doctorModelFromJson(jsonString);

import 'dart:convert';

List<DoctorModel> doctorModelFromJson(String str) => List<DoctorModel>.from(
    json.decode(str).map((x) => DoctorModel.fromJson(x)));

String doctorModelToJson(List<DoctorModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DoctorModel {
  DoctorModel({
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

  factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
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
