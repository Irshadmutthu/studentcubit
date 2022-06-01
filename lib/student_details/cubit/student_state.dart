part of 'student_cubit.dart';

class StudentState {
  List<DataModel> datas;
  int? id;
  StudentState({required this.datas,this.id});
}

class StudentInitial extends StudentState {
  StudentInitial() : super(datas: []);
}
