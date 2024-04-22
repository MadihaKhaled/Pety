
import 'package:flutter/material.dart';

class WorkHoursScreen extends StatelessWidget{
  String role;
  WorkHoursScreen({super.key,required this.role});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text(role),)
      ],
    );
  }

}