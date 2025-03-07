class LoginResponse {
  LoginResponse({
      this.status, 
      this.token, 
      this.data,});

  LoginResponse.fromJson(dynamic json) {
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
      this.photo, 
      this.id, 
      this.firstName, 
      this.lastName, 
      this.email, 
      this.password, 
      this.phone,});

  Data.fromJson(dynamic json) {
    photo = json['photo'] != null ? Photo.fromJson(json['photo']) : null;
    id = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
  }
  Photo? photo;
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (photo != null) {
      map['photo'] = photo?.toJson();
    }
    map['_id'] = id;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['email'] = email;
    map['password'] = password;
    map['phone'] = phone;
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