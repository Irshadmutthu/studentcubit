import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_details/student_details/ui/login.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Login(),
  ));
}
