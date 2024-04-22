class AppointmentsResponse {
  AppointmentsResponse({
      this.status, 
      this.results, 
      this.data,});

  AppointmentsResponse.fromJson(dynamic json) {
    status = json['status'];
    results = json['results'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  String? status;
  num? results;
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['results'] = results;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Data {
  Data({
      this.id, 
      this.petyID, 
      this.ownerID, 
      this.firstName, 
      this.lastName, 
      this.phone, 
      this.animals, 
      this.appointmentDateTime, 
      this.date, 
      this.time, 
      this.status, 
      this.v,});

  Data.fromJson(dynamic json) {
    id = json['_id'];
    petyID = json['petyID'];
    ownerID = json['ownerID'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phone = json['phone'];
    if (json['animals'] != null) {
      animals = [];
      json['animals'].forEach((v) {
        animals?.add(Animals.fromJson(v));
      });
    }
    appointmentDateTime = json['appointmentDateTime'];
    date = json['date'];
    time = json['time'];
    status = json['status'];
    v = json['__v'];
  }
  String? id;
  String? petyID;
  String? ownerID;
  String? firstName;
  String? lastName;
  String? phone;
  List<Animals>? animals;
  String? appointmentDateTime;
  String? date;
  String? time;
  String? status;
  num? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['petyID'] = petyID;
    map['ownerID'] = ownerID;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['phone'] = phone;
    if (animals != null) {
      map['animals'] = animals?.map((v) => v.toJson()).toList();
    }
    map['appointmentDateTime'] = appointmentDateTime;
    map['date'] = date;
    map['time'] = time;
    map['status'] = status;
    map['__v'] = v;
    return map;
  }

}

class Animals {
  Animals({
      this.pet, 
      this.count, 
      this.id,});

  Animals.fromJson(dynamic json) {
    pet = json['pet'];
    count = json['count'];
    id = json['_id'];
  }
  String? pet;
  num? count;
  String? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pet'] = pet;
    map['count'] = count;
    map['_id'] = id;
    return map;
  }

}