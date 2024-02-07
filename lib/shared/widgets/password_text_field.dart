
import 'package:flutter/material.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/widgets/default_text_field.dart';

class PasswordTextField extends StatefulWidget{

  final String label;
  final TextEditingController controller;
  final String? Function(String?) validate;
  PasswordTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.validate,
  });
  bool isObscure = true;
  bool isFocus = false;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return FocusScope(
      onFocusChange: (focus){
        setState(() {
          widget.isFocus = !widget.isFocus;
        });
      },
      child: DefaultTextField(
          context: context,
          controller: widget.controller,
          keyboardType: TextInputType.visiblePassword,
          label: widget.label,
          isObscure: widget.isObscure,
          suffix: widget.isObscure?Icons.visibility:Icons.visibility_off,
          suffixColor: widget.isFocus?ColorManager.defaultColor:ColorManager.grey,
          suffixPressed: (){
            setState(() {
              widget.isObscure = !widget.isObscure;
            });
          },
          validate: widget.validate,
      ),
    );
  }
}