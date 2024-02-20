part of 'student_bloc.dart';

@immutable
sealed class StudentEvent {}

final class LoadEvent extends StudentEvent {
}