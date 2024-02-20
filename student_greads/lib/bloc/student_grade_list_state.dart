part of 'student_grade_list_bloc.dart';

@immutable
sealed class StudentGradeListState {}

final class StudentGradeListInitial extends StudentGradeListState {}

final class LoadingList extends StudentGradeListState {}
final class ErorrState extends StudentGradeListState {}
final class addState extends StudentGradeListState {
    final List<StudentModel> studentGradeList;
  addState(this.studentGradeList);
}

