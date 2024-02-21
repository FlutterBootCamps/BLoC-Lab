import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student/bloc/student_bloc.dart';
import 'package:student/models/student.dart';
import 'package:student/widgets/student_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    context.read<StudentBloc>().add(LoadEvent());
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<StudentBloc, StudentState>(
          builder: (context, state) {
            print(state); // Print the state to check its value
            if (state is StudentInitial || state is LoadingState) {
              return const CircularProgressIndicator();
            }
            if (state is SuccessState) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    ...state.students.map((e) => StudentCard(
                          student: e,
                        ))
                        .toList()
                  ],
                ),
              );
            }
            return const Center(child: Text("ERROR"));
          },
        ),
      ),
    );
  }
}