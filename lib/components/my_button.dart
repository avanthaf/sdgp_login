import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String ButtonText;

  const MyButton({
    super.key,
    required this.onTap,
    required this.ButtonText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 150,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.green[400],
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontStyle: FontStyle.normal,
            )),
        onPressed: () {},
        child: Text(ButtonText),
      ),
    );
  }
}
