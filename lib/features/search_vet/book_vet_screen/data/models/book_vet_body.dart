class BookVetBody {
  BookVetBody({
      this.petyID, 
      this.date, 
      this.time, 
      this.animals,});

  BookVetBody.fromJson(dynamic json) {
    petyID = json['petyID'];
    date = json['date'];
    time = json['time'];
    animals = json['animals'];
  }
  String? petyID;
  String? date;
  String? time;
  String? animals;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['petyID'] = petyID;
    map['date'] = date;
    map['time'] = time;
    map['animals'] = animals;
    return map;
  }

}