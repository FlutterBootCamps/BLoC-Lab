part of 'student_bloc.dart';

@immutable
sealed class StudentState {}

final class StudentInitial extends StudentState {}

final class LoadingState extends StudentState {}

final class SuccessState extends StudentState {
  final List<StudentModel> students;

  SuccessState({required this.students});
}

final class ErrorState extends StudentState {}