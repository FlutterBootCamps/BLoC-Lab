part of 'student_bloc.dart';

@immutable
sealed class StudentEvent {}

final class LoadingEvent extends StudentEvent {}
