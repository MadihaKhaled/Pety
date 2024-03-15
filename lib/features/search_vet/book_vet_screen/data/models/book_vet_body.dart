
import 'package:json_annotation/json_annotation.dart';
part 'book_vet_body.g.dart';


@JsonSerializable()
class BookVetBody {

  String petyID;
  String date;
  String time;

  BookVetBody({
    required this.petyID,
    required this.date,
    required this.time,
  });

  Map<String,dynamic> toJson() =>_$BookVetBodyToJson(this);

}