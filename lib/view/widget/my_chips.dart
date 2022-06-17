import 'package:flutter/material.dart';

class MyChips extends StatelessWidget {
  final String label;
  final Color color;
  const MyChips(this.label, this.color, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: const EdgeInsets.all(2.0),
      label: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: const EdgeInsets.all(8.0),
    );
  }
}
