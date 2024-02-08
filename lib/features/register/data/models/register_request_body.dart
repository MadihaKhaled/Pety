
import 'package:json_annotation/json_annotation.dart';
part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {

  String firstName;
  String lastName;
  String password;
  String passwordConfirm;
  String email;
  String phone;

  RegisterRequestBody({
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.passwordConfirm,
    required this.email,
    required this.phone,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);

}