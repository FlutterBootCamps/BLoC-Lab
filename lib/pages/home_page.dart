import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_lab/bloc/student_bloc.dart';
import 'package:student_lab/widgets/card_epansion.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<StudentBloc>().add(LoadingEvent());
    return Scaffold(
      body: SafeArea(child: BlocBuilder<StudentBloc, StudentState>(
        builder: (context, state) {
          if (state is SuccessState) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  for (int i = 0; i < state.list.length; i++)
                    CardExpansion(student: state.list[i] , 
                     )
                ],
              ),
            );
          }
          if (state is LoadingState || state is StudentInitial) {
            return CircularProgressIndicator();
          }
          return Text("Error");
        },
      )

        
          ),
    );
  }
}
