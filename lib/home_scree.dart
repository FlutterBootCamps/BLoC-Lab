import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w4_3_bloc/wedgit/student_card.dart';
import 'package:w4_3_bloc/bloc/student_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    context.read<StudentBloc>().add(LoadEvent());
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<StudentBloc, StudentState>(
          builder: (context, state) {
            if (state is StudentInitial || state is LoadingState) {
              return const CircularProgressIndicator();
            }
            else if (state is SuccessState) {
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
            }else{ return const Center(child: Text("ERROR"));}
           
          },
        ),
      ),
    );
  }
}
