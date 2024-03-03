// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_vet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookVetResponse _$BookVetResponseFromJson(Map<String, dynamic> json) =>
    BookVetResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookVetResponseToJson(BookVetResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      petyID: json['petyID'] as String?,
      ownerID: json['ownerID'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      animals:
          (json['animals'] as List<dynamic>?)?.map((e) => e as String).toList(),
      appointmentDateTime: json['appointmentDateTime'] as String?,
      id: json['id'] as String?,
      v: json['v'] as num?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'petyID': instance.petyID,
      'ownerID': instance.ownerID,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'animals': instance.animals,
      'appointmentDateTime': instance.appointmentDateTime,
      'id': instance.id,
      'v': instance.v,
    };
