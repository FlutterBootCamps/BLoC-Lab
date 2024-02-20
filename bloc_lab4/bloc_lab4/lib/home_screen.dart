import 'package:bloc_lab4/bloc/student_bloc.dart';
import 'package:bloc_lab4/widgets/student_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<StudentBloc>(context).add(LoadingEvent());
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<StudentBloc, StudentState>(
            builder: (context, state) {
              if (state is StudentInitial || state is LoadingState) {
                return CircularProgressIndicator();
              }
              if (state is SuesccesState) {
                final List display = state.student;
                return ListView.builder(
                  itemCount: display.length,
                  itemBuilder: (context, index) {
                    return StudentCard(student: display[index]);
                  },
                );
              }
              return Text("erro");
            },
          ),
        ),
      )),
    );
  }
}
