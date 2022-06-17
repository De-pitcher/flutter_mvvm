import 'package:flutter/material.dart';

class MyTextView extends StatelessWidget {
  final String label;
  final Color color;
  final double fontSize;
  const MyTextView(this.label, this.color, this.fontSize, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(color: color, fontSize: fontSize),
    );
  }
}
