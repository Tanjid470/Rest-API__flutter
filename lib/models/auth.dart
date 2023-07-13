
import 'dart:convert';

// List<Persons> personsFromJson(String str) => List<Persons>.from(json.decode(str).map((x) => Persons.fromJson(x)));

// String personsToJson(List<Persons> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Persons {
  int userId;
  int id;
  String title;
  String body;

  Persons({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Persons.fromJson(Map<String, dynamic> json) => Persons(
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
