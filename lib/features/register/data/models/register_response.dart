class RegisterResponse {
  RegisterResponse({
      this.status, 
      this.token, 
      this.data,});

  RegisterResponse.fromJson(dynamic json) {
    status = json['status'];
    token = json['token'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? status;
  String? token;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['token'] = token;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      this.firstName, 
      this.lastName, 
      this.email, 
      this.password, 
      this.phone, 
      this.photo, 
      this.id, 
      this.v,});

  Data.fromJson(dynamic json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    photo = json['photo'] != null ? Photo.fromJson(json['photo']) : null;
    id = json['_id'];
    v = json['__v'];
  }
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? phone;
  Photo? photo;
  String? id;
  num? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['email'] = email;
    map['password'] = password;
    map['phone'] = phone;
    if (photo != null) {
      map['photo'] = photo?.toJson();
    }
    map['_id'] = id;
    map['__v'] = v;
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