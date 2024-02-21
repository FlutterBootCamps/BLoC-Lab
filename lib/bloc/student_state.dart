part of 'student_bloc.dart';

@immutable
sealed class StudentState {}

final class StudentInitial extends StudentState {}

final class LoadingState extends StudentState {}

final class SuccessState extends StudentState {
  List<StudentModel> list;
  SuccessState(this.list);
}
