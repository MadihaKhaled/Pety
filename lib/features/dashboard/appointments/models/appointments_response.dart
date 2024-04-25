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
      this.owner, 
      this.animals, 
      this.appointmentDateTime, 
      this.date, 
      this.time, 
      this.status, 
      this.v,});

  Data.fromJson(dynamic json) {
    id = json['_id'];
    petyID = json['petyID'];
    if (json['owner'] != null) {
      owner = [];
      json['owner'].forEach((v) {
        owner?.add(Owner.fromJson(v));
      });
    }
    if (json['animals'] != null) {
      animals = [];
      json['animals'].forEach((v) {
        animals?.add(AnimalObject.fromJson(v));
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
  List<Owner>? owner;
  List<AnimalObject>? animals;
  String? appointmentDateTime;
  String? date;
  String? time;
  String? status;
  num? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['petyID'] = petyID;
    if (owner != null) {
      map['owner'] = owner?.map((v) => v.toJson()).toList();
    }
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

class AnimalObject{
  String? pet;
  int? count;
  String? id;
  AnimalObject({
    this.pet,
    this.count,
    this.id
  });

  AnimalObject.fromJson(dynamic json){
    pet=json['pet'];
    count=json['count'];
    id=json['_id'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pet'] = pet;
    map['count'] = count;
    map['_id'] = id;
    return map;
  }

}

class Owner {
  Owner({
      this.id, 
      this.firstName, 
      this.lastName, 
      this.email, 
      this.password, 
      this.phone, 
      this.v, 
      this.photo,});

  Owner.fromJson(dynamic json) {
    id = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    v = json['__v'];
    photo = json['photo'] != null ? Photo.fromJson(json['photo']) : null;
  }
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? phone;
  num? v;
  Photo? photo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['email'] = email;
    map['password'] = password;
    map['phone'] = phone;
    map['__v'] = v;
    if (photo != null) {
      map['photo'] = photo?.toJson();
    }
    return map;
  }

}

class Photo {
  Photo({
      this.url, 
      this.publicId,});

  Photo.fromJson(dynamic json) {
    url = json['url'];
    publicId = json['public_id'];
  }
  String? url;
  String? publicId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['public_id'] = publicId;
    return map;
  }

}