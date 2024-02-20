import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:student_greads/database/data.dart';
import 'package:student_greads/model/student_model.dart';

part 'student_grade_list_event.dart';
part 'student_grade_list_state.dart';

class StudentGradeListBloc extends Bloc<StudentGradeListEvent, StudentGradeListState> {
  StudentGradeListBloc() : super(StudentGradeListInitial()) {
    on<StudentGradeListEvent>((event, emit) {
List<StudentModel> studentGradeList=[];

for (var element in listStudents) {
  studentGradeList.add(StudentModel.fromJson(element));
}
  emit(addState(studentGradeList));

  
    });

  }
}
