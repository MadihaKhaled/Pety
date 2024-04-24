class SearchVetsResponse {
  SearchVetsResponse({
      this.status, 
      this.results, 
      this.data,});

  SearchVetsResponse.fromJson(dynamic json) {
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
      this.location, 
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
      this.ratingsAverage, 
      this.ratingsQuantity, 
      this.offer, 
      this.availability, 
      this.availabilityFormatted, 
      this.lastUpdated, 
      this.id,});

  Data.fromJson(dynamic json) {
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    id = json['_id'];
    petyName = json['petyName'];
    clinicalName = json['clinicalName'];
    address = json['address'];
    phoneNumber = json['phoneNumber'];
    price = json['price'];
    animals = json['animals'] != null ? json['animals'].cast<String>() : [];
    description = json['description'];
    role = json['role'];
    email = json['email'];
    ratingsAverage = json['ratingsAverage'];
    ratingsQuantity = json['ratingsQuantity'];
    offer = json['offer'];
    if (json['availability'] != null) {
      availability = [];
      json['availability'].forEach((v) {
        availability?.add(Dynamic.fromJson(v));
      });
    }
    if (json['availabilityFormatted'] != null) {
      availabilityFormatted = [];
      json['availabilityFormatted'].forEach((v) {
        availabilityFormatted?.add(Dynamic.fromJson(v));
      });
    }
    lastUpdated = json['lastUpdated'];
    id = json['id'];
  }
  Location? location;
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
  num? ratingsAverage;
  num? ratingsQuantity;
  bool? offer;
  List<dynamic>? availability;
  List<dynamic>? availabilityFormatted;
  String? lastUpdated;
  String? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (location != null) {
      map['location'] = location?.toJson();
    }
    map['_id'] = id;
    map['petyName'] = petyName;
    map['clinicalName'] = clinicalName;
    map['address'] = address;
    map['phoneNumber'] = phoneNumber;
    map['price'] = price;
    map['animals'] = animals;
    map['description'] = description;
    map['role'] = role;
    map['email'] = email;
    map['ratingsAverage'] = ratingsAverage;
    map['ratingsQuantity'] = ratingsQuantity;
    map['offer'] = offer;
    if (availability != null) {
      map['availability'] = availability?.map((v) => v.toJson()).toList();
    }
    if (availabilityFormatted != null) {
      map['availabilityFormatted'] = availabilityFormatted?.map((v) => v.toJson()).toList();
    }
    map['lastUpdated'] = lastUpdated;
    map['id'] = id;
    return map;
  }

}

class Location {
  Location({
      this.type, 
      this.coordinates,});

  Location.fromJson(dynamic json) {
    type = json['type'];
    coordinates = json['coordinates'] != null ? json['coordinates'].cast<num>() : [];
  }
  String? type;
  List<num>? coordinates;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['coordinates'] = coordinates;
    return map;
  }

}