class PetyInformationBody {
  PetyInformationBody({
      this.role,});

  PetyInformationBody.fromJson(dynamic json) {
    role = json['role'];
  }
  String? role;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['role'] = role;
    return map;
  }

}