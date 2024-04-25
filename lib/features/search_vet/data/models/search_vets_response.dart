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


}

class Data {
  Data({
      this.photo,
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
      });

  Data.fromJson(dynamic json) {
    photo = json['photo'] != null? Photo.fromJson(json['photo']):null;
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
        availability?.add(AvailabilityObject.fromJson(v));
      });
    }
    if (json['availabilityFormatted'] != null) {
      availabilityFormatted = [];
      json['availabilityFormatted'].forEach((v) {
        availabilityFormatted?.add(AvailabilityFormattedObject.fromJson(v));
      });
    }
    lastUpdated = json['lastUpdated'];
  }
  Photo? photo;
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
  List<AvailabilityObject>? availability;
  List<AvailabilityFormattedObject>? availabilityFormatted;
  String? lastUpdated;

}

class AvailabilityObject{
  String? day;
  String? startTime;
  String? endTime;
  String? sessionDuration;
  String? id;

  AvailabilityObject({
    this.day,
    this.startTime,
    this.endTime,
    this.sessionDuration,
    this.id
  });

  AvailabilityObject.fromJson(dynamic json){
    day = json['day'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    sessionDuration = json['sessionDuration'];
    id = json['_id'];
  }
}

class AvailabilityFormattedObject {
  AvailabilityFormattedObject({
    this.date,
    this.appointments,
    this.id,
    });

  AvailabilityFormattedObject.fromJson(dynamic json) {
    date = json['date'];
    if (json['appointments'] != null) {
      appointments = [];
      json['appointments'].forEach((v) {
        appointments?.add(Appointments.fromJson(v));
      });
    }
    id = json['_id'];
  }
  String? date;
  List<Appointments>? appointments;
  String? id;
  List<String>? formatedDate;
  String? formate2Date;

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

}