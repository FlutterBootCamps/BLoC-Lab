import 'package:bloc/bloc.dart';
import 'package:flutter_w4_day3_lab2/data/student_list.dart';
import 'package:flutter_w4_day3_lab2/models/student_model.dart';
import 'package:meta/meta.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentInitial()) {
    on<LoadEvent>((event, emit) async{
      emit(LoadingState());
      await Future.delayed(const Duration(seconds: 2));

      try {
        emit(SuccessState(students: listStudents.map((e) => StudentModel.fromJson(e)).toList()));
      } catch (e) {
        emit(ErrorState());
      }
    });
  }
}
