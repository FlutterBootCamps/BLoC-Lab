import 'package:flutter/material.dart';
import '../model/students_model.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'label_card_student.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({super.key, this.student});
final StudentsModel? student;
  @override
  Widget build(BuildContext context) {
    return   Padding(
               padding: const EdgeInsets.all(8.0),
               child: ExpansionTileCard(
                title: Text(student?.name?? "saud"),
               subtitle: Text(student?.id.toString() ?? "0"),
               children: [
                LabelCardStudent(
                    title: "Exam",
                value: student?.scores[0].score ?? 0,
                ),
               
                LabelCardStudent(
                  title: "Quiz",
                value: student?.scores[1].score ?? 0,
                ),
                 
                LabelCardStudent(
                   title: "Homework",
                value: student?.scores[2].score ??0,
                ),
                
               

                
              
               ],
               ),
             );
  }
}