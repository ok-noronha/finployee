part of 'models.dart';

EmpModel EmpModelFromJson(String str) => EmpModel.fromJson(json.decode(str));

String EmpModelToJson(EmpModel data) => json.encode(data.toJson());

class EmpModel {
  EmpModel({
    this.id,
    this.firstName,
    this.avatar,
    this.status,
    this.location,
  });

  String? id;
  String? firstName;
  String? avatar;
  String? status;
  String? location;

  EmpModel copyWith({
    String? id,
    String? firstName,
    String? avatar,
    String? status,
    String? location,
  }) =>
      EmpModel(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        avatar: avatar ?? this.avatar,
        status: status ?? this.status,
        location: location ?? this.location,
      );

  factory EmpModel.fromJson(Map<String, dynamic> json) => EmpModel(
        id: json["_id"],
        firstName: json["firstName"],
        avatar: json["avatar"],
        status: json["status"],
        location: json["location"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "firstName": firstName,
        "avatar": avatar,
        "status": status,
        "location": location,
      };
}
