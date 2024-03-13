import 'package:flutter/material.dart';

class MyGestureDetector extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const MyGestureDetector({
    required this.onTap,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }
}
