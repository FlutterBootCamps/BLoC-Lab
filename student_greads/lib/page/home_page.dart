import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_greads/bloc/student_grade_list_bloc.dart';
import 'package:student_greads/component/student_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<StudentGradeListBloc>().add(StudentList());
    return Container(
      color: Colors.blue.shade200,
      child: BlocBuilder<StudentGradeListBloc, StudentGradeListState>(
        builder: (context, state) {
          if (state is LoadingList) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is addState) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(state.studentGradeList.length, (index) {
                    return StudentGrade(student: state.studentGradeList[index]);
                  }),
                ],
              ),
            );
          } else
            return Text("er1otrr");
        },
      ),
    );
  }
}



