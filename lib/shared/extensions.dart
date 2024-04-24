
import 'package:flutter/material.dart';


extension Navigation on BuildContext {

  Future<dynamic> pushNamed(String routeName,{Object? arguments}){
    return Navigator.of(this).pushNamed(routeName,arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName,{Object? arguments}){
    return Navigator.of(this).pushReplacementNamed(routeName,arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName
      ,{Object? arguments,required RoutePredicate predicate}){
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName,predicate,arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}

extension Regex on String{
  bool isNotBlank(){
    RegExp regex = RegExp(r"(.|\s)*\S(.|\s)*", multiLine: true);
    return regex.hasMatch(this);
  }

  String capitalizeFirstLetter(){
    return substring(0, 1).toUpperCase() + substring(1);
  }

}
