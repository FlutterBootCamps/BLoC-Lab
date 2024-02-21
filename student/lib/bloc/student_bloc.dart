import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:student/data/data.dart';
import 'package:student/models/student.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentInitial()) {
    on<LoadEvent>((event, emit) async {
      // TODO: implement event handler
      try {
        emit(LoadingState());
      await Future.delayed(Duration(seconds: 2));
      List<Student> loadStudent = [];
      for (var element in listStudents) {
        loadStudent.add(Student.fromJson(element));
      }
      emit(SuccessState(students: loadStudent));
      } catch (e) {
         emit(ErrorState());
      }
      

     
    });
  }
}
