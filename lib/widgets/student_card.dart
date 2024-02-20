import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_w4_day3_lab2/models/student_model.dart';
import 'package:flutter_w4_day3_lab2/widgets/grade_bar.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({
    super.key, this.student,
  });

  final StudentModel? student;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ExpansionTileCard(
        title: Text(student?.name ?? "No Name"),
        subtitle: Text(student?.id.toString() ?? "No ID"),
        children: [
          GradeBar(type: "Exam", value: student?.scores[0].score ?? 0),
          GradeBar(type: "Quiz", value: student?.scores[1].score ?? 0,),
          GradeBar(type: "Homework", value: student?.scores[2].score ?? 0,),
        ],
      ),
    );
  }
}