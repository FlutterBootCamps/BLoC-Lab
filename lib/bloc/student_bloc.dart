import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:w4_3_bloc/model/students_model.dart';
import 'package:w4_3_bloc/wedgit/student_data.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentInitial()) {
    on<LoadEvent>((event, emit)  {
      try {
        emit(LoadingState());

        List<StudentsModel> loadStudents = [];
        
        for (var element in listStudents) {
          loadStudents.add(StudentsModel.fromJson(element));
          print(loadStudents[0]);
        }

        //load data

        emit(SuccessState(students: loadStudents));
      } catch (error) {
        emit(ErrorState());
      }
    });
  }
}
