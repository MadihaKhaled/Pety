
import 'dart:io';

import 'package:dio/dio.dart';

class UpdateProfileBody {

  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? phone;
  File? photo;

  UpdateProfileBody({
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.phone,
    this.photo,
  });

  Map<String, dynamic> toJson(){
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': phone,
    };
  }

  Future<FormData> toFormData() async{
    Map<String, dynamic> json = toJson();
    if(photo!=null){
      MultipartFile pic = await MultipartFile.fromFile(photo!.path, filename:photo!.path.split('/').last);
      json.putIfAbsent('photo', (){return pic;});
    }
    return FormData.fromMap(json);
  }

}