import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:student_details/student_details/database_helper/databse_helper.dart';
import 'package:student_details/student_details/model_class/model_class.dart';

part 'student_state.dart';

class StudentCubit extends Cubit<StudentState> {
  Database_helper db = Database_helper();
  StudentCubit() : super(StudentInitial()) {
    getDataFromDb();
  }
  Future<void> getDataFromDb() async =>
      emit(StudentState(datas: await db.getData()));

  Future<void> updateData(int id) async => emit(StudentState(datas: [], id:0 ));
}
