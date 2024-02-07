
import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {

  String? status;
  String? token;
  Data? data;

  LoginResponse({
      this.status,
      this.token,
      this.data,
  });

  factory LoginResponse.fromJson(Map<String,dynamic> json) => _$LoginResponseFromJson(json);


}

@JsonSerializable()
class Data {

  User? user;

  Data({
      this.user,
  });

  factory Data.fromJson(Map<String,dynamic> json) => _$DataFromJson(json);

}

@JsonSerializable()
class User {

  String? id;
  String? firstname;
  String? lastname;
  String? email;
  String? password;
  String? role;
  num? v;

  User({
      this.id,
      this.firstname,
      this.lastname,
      this.email,
      this.password,
      this.role,
      this.v,
  });

  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);

}