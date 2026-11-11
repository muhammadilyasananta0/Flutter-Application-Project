// To parse this JSON data, do
//
//     final modelData = modelDataFromJson(jsonString);

import 'dart:convert';

ModelData modelDataFromJson(String str) => ModelData.fromJson(json.decode(str));

String modelDataToJson(ModelData data) => json.encode(data.toJson());

class ModelData {
  final List<Map<String, String?>> teams;

  ModelData({required this.teams});

  factory ModelData.fromJson(Map<String, dynamic> json) => ModelData(
    teams: List<Map<String, String?>>.from(
      json["teams"].map(
        (x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)),
      ),
    ),
  );

  Map<String, dynamic> toJson() => {
    "teams": List<dynamic>.from(
      teams.map(
        (x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)),
      ),
    ),
  };
}
