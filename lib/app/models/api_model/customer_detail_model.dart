// To parse this JSON data, do
//
//     final customerModel = customerModelFromJson(jsonString);

import 'dart:convert';



class CustomerModel {
  List<Nationality>? nationality;
  List<IdType>? idType;
  List<Gender>? gender;
  List<RegistrationType>? registrationType;
  List<VisaType>? visaType;

  CustomerModel({
     this.nationality,
     this.idType,
     this.gender,
     this.registrationType,
     this.visaType,
  });

  CustomerModel customerModelFromJson(String str) => CustomerModel.fromJson(json.decode(str));

  String customerModelToJson(CustomerModel data) => json.encode(data.toJson());

  factory CustomerModel.fromJson(Map<String, dynamic> json) => CustomerModel(
    nationality: List<Nationality>.from(json["nationality"].map((x) => Nationality.fromJson(x))),
    idType: List<IdType>.from(json["id_type"].map((x) => IdType.fromJson(x))),
    gender: List<Gender>.from(json["gender"].map((x) => Gender.fromJson(x))),
    registrationType: List<RegistrationType>.from(json["registration_type"].map((x) => RegistrationType.fromJson(x))),
    visaType: List<VisaType>.from(json["visa_type"].map((x) => VisaType.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "nationality": List<dynamic>.from(nationality!.map((x) => x.toJson())),
    "id_type": List<dynamic>.from(idType!.map((x) => x.toJson())),
    "gender": List<dynamic>.from(gender!.map((x) => x.toJson())),
    "registration_type": List<dynamic>.from(registrationType!.map((x) => x.toJson())),
    "visa_type": List<dynamic>.from(visaType!.map((x) => x.toJson())),
  };
}

class Nationality {
  String tid;
  String fieldCode;
  String name;

  Nationality({
    required this.tid,
    required this.fieldCode,
    required this.name,
  });

  factory Nationality.fromJson(Map<String, dynamic> json) => Nationality(
    tid: json["tid"],
    fieldCode: json["field_code"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "tid": tid,
    "field_code": fieldCode,
    "name": name,
  };
}

class RegistrationType {
  String tid;
  String fieldCode;
  String name;

  RegistrationType({
    required this.tid,
    required this.fieldCode,
    required this.name,
  });

  factory RegistrationType.fromJson(Map<String, dynamic> json) => RegistrationType(
    tid: json["tid"],
    fieldCode: json["field_code"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "tid": tid,
    "field_code": fieldCode,
    "name": name,
  };
}

class VisaType {
  String tid;
  String fieldCode;
  String name;

  VisaType({
    required this.tid,
    required this.fieldCode,
    required this.name,
  });

  factory VisaType.fromJson(Map<String, dynamic> json) => VisaType(
    tid: json["tid"],
    fieldCode: json["field_code"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "tid": tid,
    "field_code": fieldCode,
    "name": name,
  };
}

class Gender {
  String id;
  String fieldCode;
  String name;

  Gender({
    required this.id,
    required this.fieldCode,
    required this.name,
  });

  factory Gender.fromJson(Map<String, dynamic> json) => Gender(
    id: json["id"],
    fieldCode: json["field_code"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "field_code": fieldCode,
    "name": name,
  };
}

class IdType {
  String id;
  String fieldCode;
  String name;
  String fieldZolozSupport;
  List<FieldPage> fieldPages;

  IdType({
    required this.id,
    required this.fieldCode,
    required this.name,
    required this.fieldZolozSupport,
    required this.fieldPages,
  });

  factory IdType.fromJson(Map<String, dynamic> json) => IdType(
    id: json["id"],
    fieldCode: json["field_code"],
    name: json["name"],
    fieldZolozSupport: json["field_zoloz_support"],
    fieldPages: List<FieldPage>.from(json["field_pages"].map((x) => fieldPageValues.map[x]!)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "field_code": fieldCode,
    "name": name,
    "field_zoloz_support": fieldZolozSupport,
    "field_pages": List<dynamic>.from(fieldPages.map((x) => fieldPageValues.reverse[x])),
  };
}

enum FieldPage { FRONT, BACK }

final fieldPageValues = EnumValues({
  "back": FieldPage.BACK,
  "front": FieldPage.FRONT
});



class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
