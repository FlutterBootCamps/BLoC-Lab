import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_greads/bloc/student_grade_list_bloc.dart';
import 'package:student_greads/page/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StudentGradeListBloc(),
      child: MaterialApp(home: HomePage()),
    );
  }
}
