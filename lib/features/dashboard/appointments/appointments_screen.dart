
import 'package:flutter/material.dart';

class AppointmentsScreen extends StatelessWidget{
  String role;
  AppointmentsScreen({super.key,required this.role});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text(role),)
      ],
    );
  }

}