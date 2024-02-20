import 'package:flutter/widgets.dart';

class Grade extends StatelessWidget {
  final double score;
  final String name;
  Grade({
    super.key,
    required this.name,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(flex: 2, child: Text("$name")),
          Expanded(flex: 3, child: Text("$score")),
        ],
      ),
    );
  }
}
