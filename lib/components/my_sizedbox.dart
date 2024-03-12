import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  final double BoxHeight;
  const MySizedBox({Key? key, required this.BoxHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 10 * BoxHeight);
  }
}
