class UpdateProfileResponse {
  UpdateProfileResponse({
      this.status, 
      this.user,});

  UpdateProfileResponse.fromJson(dynamic json) {
    status = json['status'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  String? status;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

class User {
  User({
      this.photo, 
      this.id, 
      this.firstName, 
      this.lastName, 
      this.email, 
      this.password, 
      this.phone, 
      this.v,});

  User.fromJson(dynamic json) {
    photo = json['photo'] != null ? Photo.fromJson(json['photo']) : null;
    id = json['_id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    v = json['__v'];
  }
  Photo? photo;
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  String? phone;
  num? v;

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