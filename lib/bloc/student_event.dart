part of 'student_bloc.dart';

@immutable
sealed class StudentEvent {}

class LoadingEvent extends StudentEvent{}