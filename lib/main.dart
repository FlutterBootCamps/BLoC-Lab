import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_lab/bloc/student_bloc.dart';
import 'package:student_lab/pages/home_page.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => StudentBloc(),
      child: MaterialApp(home: HomePage()),
    );
  }
}
