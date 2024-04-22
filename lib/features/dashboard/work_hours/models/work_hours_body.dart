class WorkHoursBody {
  WorkHoursBody({
      this.role, 
      this.availability,});

  WorkHoursBody.fromJson(dynamic json) {
    role = json['role'];
    if (json['availability'] != null) {
      availability = [];
      json['availability'].forEach((v) {
        availability?.add(Availability.fromJson(v));
      });
    }
  }
  String? role;
  List<Availability>? availability;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['role'] = role;
    if (availability != null) {
      map['availability'] = availability?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Availability {
  Availability({
      this.day, 
      this.startTime, 
      this.endTime, 
      this.sessionDuration,});

  Availability.fromJson(dynamic json) {
    day = json['day'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    sessionDuration = json['sessionDuration'];
  }
  String? day;
  String? startTime;
  String? endTime;
  String? sessionDuration;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['startTime'] = startTime;
    map['endTime'] = endTime;
    map['sessionDuration'] = sessionDuration;
    return map;
  }

}