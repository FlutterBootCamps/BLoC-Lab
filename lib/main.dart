import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_w4_day3_lab2/bloc/student_bloc.dart';
import 'package:flutter_w4_day3_lab2/screens/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StudentBloc(),
      child: const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
