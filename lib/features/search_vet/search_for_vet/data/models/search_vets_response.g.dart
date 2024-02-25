// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_vets_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchVetsResponse _$SearchVetsResponseFromJson(Map<String, dynamic> json) =>
    SearchVetsResponse(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchVetsResponseToJson(SearchVetsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String?,
      petyName: json['petyName'] as String?,
      clinicalName: json['clinicalName'] as String?,
      address: json['address'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      price: json['price'] as num?,
      animals:
          (json['animals'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
      role: json['role'] as String?,
      email: json['email'] as String?,
      averageRate: json['averageRate'] as num?,
      offer: json['offer'] as bool?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'petyName': instance.petyName,
      'clinicalName': instance.clinicalName,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'price': instance.price,
      'animals': instance.animals,
      'description': instance.description,
      'role': instance.role,
      'email': instance.email,
      'averageRate': instance.averageRate,
      'offer': instance.offer,
    };
