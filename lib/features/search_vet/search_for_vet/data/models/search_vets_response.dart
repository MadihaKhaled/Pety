
import 'package:json_annotation/json_annotation.dart';
part 'search_vets_response.g.dart';

@JsonSerializable()
class SearchVetsResponse {

  String? status;
  List<Data>? data;

  SearchVetsResponse({
      this.status, 
      this.data,
  });

  factory SearchVetsResponse.fromJson(Map<String, dynamic> json) => _$SearchVetsResponseFromJson(json);

}

@JsonSerializable()
class Data {

  String? id;
  String? petyName;
  String? clinicalName;
  String? address;
  String? phoneNumber;
  num? price;
  List<String>? animalsTypes;
  String? description;
  String? role;
  String? email;
  num? averageRate;
  bool? offer;

  Data({
    this.id,
    this.petyName,
    this.clinicalName,
    this.address,
    this.phoneNumber,
    this.price,
    this.animalsTypes,
    this.description,
    this.role,
    this.email,
    this.averageRate,
    this.offer,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}