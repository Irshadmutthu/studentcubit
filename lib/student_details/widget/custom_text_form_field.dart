import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Custom_textformfield extends StatelessWidget {
  TextEditingController controller;
  Color? textcolor;
  String label;
  String? hint;
  TextInputType keyboardtype;
  FormFieldValidator<String>? validate;
  AutovalidateMode? autoValidate;
  bool? hidetext;

  Custom_textformfield({
    Key? key,
    required this.controller,
    this.textcolor,
    required this.label,
    required this.hint,
    required this.keyboardtype,
    this.validate,
    this.autoValidate,
    this.hidetext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        obscureText: hidetext ?? false,
        validator: validate,
        autovalidateMode: autoValidate,
        keyboardType: keyboardtype,
        style: TextStyle(color: textcolor),
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.black),
          labelText: label,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 22),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        ));
  }
}
