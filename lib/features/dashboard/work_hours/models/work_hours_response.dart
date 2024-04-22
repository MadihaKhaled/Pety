class WorkHoursResponse {
  WorkHoursResponse({
      this.status, 
      this.data,});

  WorkHoursResponse.fromJson(dynamic json) {
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
      this.acknowledged, 
      this.modifiedCount, 
      this.upsertedId, 
      this.upsertedCount, 
      this.matchedCount,});

  Data.fromJson(dynamic json) {
    acknowledged = json['acknowledged'];
    modifiedCount = json['modifiedCount'];
    upsertedId = json['upsertedId'];
    upsertedCount = json['upsertedCount'];
    matchedCount = json['matchedCount'];
  }
  bool? acknowledged;
  num? modifiedCount;
  dynamic upsertedId;
  num? upsertedCount;
  num? matchedCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['acknowledged'] = acknowledged;
    map['modifiedCount'] = modifiedCount;
    map['upsertedId'] = upsertedId;
    map['upsertedCount'] = upsertedCount;
    map['matchedCount'] = matchedCount;
    return map;
  }

}