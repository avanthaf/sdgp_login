import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String ButtonText;

  const MyButton({
    Key? key,
    required this.onTap,
    required this.ButtonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green[400],
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        ),
        onPressed: onTap,
        child: Text(ButtonText),
      ),
    );
  }
}
