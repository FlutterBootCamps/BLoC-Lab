part of 'student_bloc.dart';

@immutable
sealed class StudentState {}

final class StudentInitial extends StudentState {}

final class SuesccesState extends StudentState {
   List student = [];
  SuesccesState({required this.student});
}
final class LoadingState extends StudentState {}
final class ErrorState extends StudentState {}



