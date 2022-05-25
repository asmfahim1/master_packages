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
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  factory MedModel.fromJson(Map<String, dynamic> json) => MedModel(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}
