class UpdatePetyDataResponse {
  UpdatePetyDataResponse({
      this.status, 
      this.data,});

  UpdatePetyDataResponse.fromJson(dynamic json) {
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
      this.location, 
      this.id, 
      this.userId, 
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
      this.v, 
      this.lastUpdated, 
      });

  Data.fromJson(dynamic json) {
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    userId = json['userId'];
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
        availability?.add(Availability.fromJson(v));
      });
    }
    if (json['availabilityFormatted'] != null) {
      availabilityFormatted = [];
      json['availabilityFormatted'].forEach((v) {
        availabilityFormatted?.add(AvailabilityFormatted.fromJson(v));
      });
    }
    v = json['__v'];
    lastUpdated = json['lastUpdated'];
    id = json['id'];
  }
  Location? location;
  String? id;
  String? userId;
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
  List<Availability>? availability;
  List<AvailabilityFormatted>? availabilityFormatted;
  num? v;
  String? lastUpdated;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (location != null) {
      map['location'] = location?.toJson();
    }
    map['userId'] = userId;
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
    map['__v'] = v;
    map['lastUpdated'] = lastUpdated;
    map['id'] = id;
    return map;
  }

}

class AvailabilityFormatted {
  AvailabilityFormatted({
      this.date, 
      this.appointments, 
      this.id, 
      });

  AvailabilityFormatted.fromJson(dynamic json) {
    date = json['date'];
    if (json['appointments'] != null) {
      appointments = [];
      json['appointments'].forEach((v) {
        appointments?.add(Appointments.fromJson(v));
      });
    }
    id = json['id'];
  }
  String? date;
  List<Appointments>? appointments;
  String? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = date;
    if (appointments != null) {
      map['appointments'] = appointments?.map((v) => v.toJson()).toList();
    }
    map['id'] = id;
    return map;
  }

}

class Appointments {
  Appointments({
      this.time, 
      this.isAvailable, 
      this.id,});

  Appointments.fromJson(dynamic json) {
    time = json['time'];
    isAvailable = json['isAvailable'];
    id = json['_id'];
  }
  String? time;
  bool? isAvailable;
  String? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['isAvailable'] = isAvailable;
    map['_id'] = id;
    return map;
  }

}

class Availability {
  Availability({
      this.day, 
      this.startTime, 
      this.endTime, 
      this.sessionDuration, 
      this.id, 
      });

  Availability.fromJson(dynamic json) {
    day = json['day'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    sessionDuration = json['sessionDuration'];
    id = json['id'];
  }
  String? day;
  String? startTime;
  String? endTime;
  String? sessionDuration;
  String? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['startTime'] = startTime;
    map['endTime'] = endTime;
    map['sessionDuration'] = sessionDuration;
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