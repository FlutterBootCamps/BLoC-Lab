import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:student_lab/dataset/dataset.dart';
import 'package:student_lab/models/student_model.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentInitial()) {
    List<StudentModel> student = [];

    for (var element in listStudents) {
      student.add(StudentModel.fromJson(element));
    }

    on<StudentEvent>((event, emit) {
      Future.delayed(Duration(milliseconds: 10));
      emit(LoadingState());

      emit(SuccessState(student));
    });
  }
}
