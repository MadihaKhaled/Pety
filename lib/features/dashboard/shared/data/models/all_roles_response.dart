class AllRolesResponse {
  AllRolesResponse({
      this.status, 
      this.results, 
      this.data,});

  AllRolesResponse.fromJson(dynamic json) {
    status = json['status'];
    results = json['results'];
    data = json['data'] != null ? json['data'].cast<String>() : [];
  }
  String? status;
  num? results;
  List<String>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['results'] = results;
    map['data'] = data;
    return map;
  }

}