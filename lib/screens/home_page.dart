import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_w4_day3_lab2/bloc/student_bloc.dart';
import 'package:flutter_w4_day3_lab2/widgets/student_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<StudentBloc>().add(LoadEvent());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<StudentBloc, StudentState>(
            builder: (context, state) {
              if (state is LoadingState || state is StudentInitial){
                return const Center(child: CircularProgressIndicator());
              }
              if (state is SuccessState){
                return Container(
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.all(8),
                  child: ListView.builder(
                    itemCount: state.students.length,
                    itemBuilder: (context, index) {
                    return StudentCard(student: state.students[index],);
                  },),
                );
              //   Column(
              //   children: [...List.generate(state.students.length, (index) {
              //     return StudentCard(student: state.students[index]);
              //   })],
              // );
              }
              return const Text("Error");
              
            },
          ),
        ),
      ),
    );
  }
}
