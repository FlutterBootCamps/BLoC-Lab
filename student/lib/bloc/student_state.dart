part of 'student_bloc.dart';

@immutable
sealed class StudentState {}

final class StudentInitial extends StudentState {}






final class SuccessState extends StudentState {
  final List<Student> students;
SuccessState({required this.students});

}

final class LoadingState extends StudentState {}
final class ErrorState extends StudentState {}
