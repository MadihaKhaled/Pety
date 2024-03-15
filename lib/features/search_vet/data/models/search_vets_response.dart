
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


  @JsonKey(name: '_id')
  String? id;
  String? petyName;
  String? clinicalName;
  String? address;
  String? phoneNumber;
  num? price;
  List<String>? animals;
  String? description;
  String? role;
  String? email;
  num? averageRate;
  bool? offer;
  List<AvailabilityFormatted>? availabilityFormatted;

  Data({
    this.id,
    this.petyName,
    this.clinicalName,
    this.address,
    this.phoneNumber,
    this.price,
    this.animals,
    this.description,
    this.role,
    this.email,
    this.averageRate,
    this.offer,
    this.availabilityFormatted,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}

@JsonSerializable()
class AvailabilityFormatted {

  String? date;
  List<Appointments>? appointments;
  String? id;
  List<String>? formatedDate;
  String? formate2Date;

  AvailabilityFormatted({
    this.date,
    this.appointments,
    this.id,
  });

  factory AvailabilityFormatted.fromJson(Map<String, dynamic> json) => _$AvailabilityFormattedFromJson(json);

}

@JsonSerializable()
class Appointments {

  String? time;
  bool? isAvailable;
  String? id;

  Appointments({
    this.time,
    this.isAvailable,
    this.id,
  });

  factory Appointments.fromJson(Map<String, dynamic> json) => _$AppointmentsFromJson(json);

}