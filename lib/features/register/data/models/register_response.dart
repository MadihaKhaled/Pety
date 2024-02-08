

import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {

  String? status;
  String? token;
  Data? data;

  RegisterResponse({
      this.status, 
      this.token, 
      this.data,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) => _$RegisterResponseFromJson(json);

}

@JsonSerializable()
class Data {

  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? phone;
  String? id;
  num? v;

  Data({
      this.firstName, 
      this.lastName, 
      this.email, 
      this.password, 
      this.phone, 
      this.id, 
      this.v,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}