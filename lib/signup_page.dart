import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sign up"),
        backgroundColor: Colors.yellow,
      ),
      backgroundColor: Colors.yellow,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.badge_sharp,
            size: 150,
          ),
        ),
      ),
    );
  }
}
