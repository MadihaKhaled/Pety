
import 'dart:io';

import 'package:dio/dio.dart';

class UpdatePetyDataBody{
  String? petyName;
  String? clinicalName;
  String? address;
  String? phoneNumber;
  String? price;
  String? animals;
  String? description;
  String? email;
  String? offer;
  String? coordinates;
  String? role;
  File? photo;

  UpdatePetyDataBody({
    this.petyName,
    this.clinicalName,
    this.address,
    this.phoneNumber,
    this.price,
    this.animals,
    this.description,
    this.email,
    this.offer,
    this.coordinates,
    this.role,
    this.photo
  });

  Future<FormData> toFormData() async{
    Map<String, dynamic> json = {};
    if(photo!=null){
      MultipartFile pic = await MultipartFile.fromFile(photo!.path, filename:photo!.path.split('/').last);
      json['photo']=pic;
    }
    if(petyName!=null)json['petyName']=petyName;
    if(clinicalName!=null)json['clinicalName']=clinicalName;
    if(address!=null)json['address']=address;
    if(phoneNumber!=null)json['phoneNumber']=phoneNumber;
    if(price!=null)json['price']=price;
    if(animals!=null)json['animals']=animals;
    if(description!=null)json['description']=description;
    if(email!=null)json['email']=email;
    if(offer!=null)json['offer']=offer;
    if(coordinates!=null)json['coordinates']=coordinates;
    if(role!=null)json['role']=role;
    return FormData.fromMap(json);
  }


}