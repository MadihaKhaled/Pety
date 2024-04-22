class AppointmentStatusBody {
  AppointmentStatusBody({
      this.id, 
      this.role, 
      this.status,});

  AppointmentStatusBody.fromJson(dynamic json) {
    id = json['id'];
    role = json['role'];
    status = json['status'];
  }
  String? id;
  String? role;
  String? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['role'] = role;
    map['status'] = status;
    return map;
  }

}