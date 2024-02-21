import 'package:flutter/material.dart';
import 'package:w4_3_bloc/home_scree.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/student_bloc.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => StudentBloc(),
      child: const MaterialApp(
        home: HomeScreen(),
      
      ),
    );
  }
}
