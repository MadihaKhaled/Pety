import 'package:json_annotation/json_annotation.dart';
part 'book_vet_response.g.dart';

@JsonSerializable()
class BookVetResponse {
  BookVetResponse({
      this.status, 
      this.data,});

  factory BookVetResponse.fromJson(Map<String,dynamic> json) => _$BookVetResponseFromJson(json);

  String? status;
  Data? data;


}

@JsonSerializable()
class Data {
  Data({
      this.petyID, 
      this.ownerID, 
      this.firstName, 
      this.lastName, 
      this.phone, 
      this.animals, 
      this.appointmentDateTime, 
      this.id, 
      this.v,});

  factory Data.fromJson(Map<String,dynamic> json) => _$DataFromJson(json);

  String? petyID;
  String? ownerID;
  String? firstName;
  String? lastName;
  String? phone;
  List<String>? animals;
  String? appointmentDateTime;
  String? id;
  num? v;


}