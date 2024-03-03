class BookVetResponse {
  BookVetResponse({
      this.status, 
      this.data,});

  BookVetResponse.fromJson(dynamic json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? status;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

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

  Data.fromJson(dynamic json) {
    petyID = json['petyID'];
    ownerID = json['ownerID'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phone = json['phone'];
    animals = json['animals'] != null ? json['animals'].cast<String>() : [];
    appointmentDateTime = json['appointmentDateTime'];
    id = json['_id'];
    v = json['__v'];
  }
  String? petyID;
  String? ownerID;
  String? firstName;
  String? lastName;
  String? phone;
  List<String>? animals;
  String? appointmentDateTime;
  String? id;
  num? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['petyID'] = petyID;
    map['ownerID'] = ownerID;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['phone'] = phone;
    map['animals'] = animals;
    map['appointmentDateTime'] = appointmentDateTime;
    map['_id'] = id;
    map['__v'] = v;
    return map;
  }

}