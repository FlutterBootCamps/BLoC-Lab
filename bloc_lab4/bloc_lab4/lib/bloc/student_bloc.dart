import 'package:bloc/bloc.dart';
import 'package:bloc_lab4/dataset/student.dart';
import 'package:bloc_lab4/models/student_model.dart';
import 'package:meta/meta.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentInitial()) {
    on<LoadingEvent>((event, emit) {
      try {
        emit(LoadingState());

        // await Future.delayed(const Duration(seconds: 1));
        List<StudentModel> studentmodel = [];
        for (var element in listStudents) {
          studentmodel.add(StudentModel.fromJson(element));
        }

        emit(SuesccesState(student: studentmodel));
      } catch (e) {
        emit(ErrorState());
      }
    });
  }
}
