import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:student_lab/models/student_model.dart';

class CardExpansion extends StatelessWidget {
  CardExpansion({super.key, required this.student});

  StudentModel student;

  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      title: Text(student.name!),
      subtitle: Text(student.iId.toString()),
      children: [
        for (Scores score in student.scores!)
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(score.type!),
                ),
                Expanded(
                  flex: 5,
                  child: Text(
                    score.score!.toStringAsFixed(2),
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
