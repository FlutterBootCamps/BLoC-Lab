import 'package:bloc_lab4/models/student_model.dart';
import 'package:bloc_lab4/widgets/label_student.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  StudentCard({super.key, this.student});
  StudentModel? student;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ExpansionTileCard(
        title: Text(student?.name ?? 'Saad'),
        subtitle: Text(student?.id.toString() ?? '0'),
        children: [
          LabelStudent(
            type: 'exam',
            value:
                student?.scores[0].score.toString() ?? '0',
          ),
          LabelStudent(
            type: 'quiz',
            value:
                student?.scores[1].score.toString() ?? '0',
          ),
          LabelStudent(
            type: 'homework',
            value:
                student?.scores[2].score.toString() ?? '0',
          ),
        ],
      ),
    );
  }
}
