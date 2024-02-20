import 'package:flutter/material.dart';

class GradeBar extends StatelessWidget {
  const GradeBar({
    super.key, required this.type, required this.value,
  });

  final String type;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(flex: 2, child: Text(type)),
          Expanded(flex: 5, child: Text(value.toStringAsFixed(2))),
        ],
      ),
    );
  }
}
