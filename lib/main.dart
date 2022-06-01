import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_details/student_details/cubit/student_cubit.dart';
import 'package:student_details/student_details/ui/login.dart';

void main(List<String> args) {
  runApp(BlocProvider(
    create: (context) => StudentCubit(),
    child: MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    ),
  ));
}
