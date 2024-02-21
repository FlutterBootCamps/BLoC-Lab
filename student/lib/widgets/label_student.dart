import 'package:flutter/material.dart';

class LabelCardStudent extends StatelessWidget {
  const LabelCardStudent({super.key, required this.title, required this.value});
  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                     Expanded(flex: 2,child: Text(title)),
                      Expanded(flex: 5,child: Text(value.toString())),
                      
                    ],
                  ),
                );
  }
}