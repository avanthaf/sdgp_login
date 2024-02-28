import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  final double BoxHeight;
  const MySizedBox({super.key, required this.BoxHeight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 10 * BoxHeight);
  }
}
