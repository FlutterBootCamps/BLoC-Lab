import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:student_greads/component/grade_row.dart';
import 'package:student_greads/model/student_model.dart';

class StudentGrade extends StatelessWidget {
  final StudentModel student;
  const StudentGrade({
    super.key,
    required this.student,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: ExpansionTileCard(
        contentPadding: EdgeInsets.all(16),
        finalPadding: EdgeInsets.all(16),
        initialPadding: EdgeInsets.all(16),
        leading: Icon(Icons.person),
        title: Text("${student.name}"),
        subtitle: Text("${student.id}"),
        children: [
          Grade(score: student.scores[0].score, name: "Exam"),
          Grade(score: student.scores[1].score, name: "Quiz"),
          Grade(score: student.scores[2].score, name: "Homework"),
        ],
      ),
    );
  }
}