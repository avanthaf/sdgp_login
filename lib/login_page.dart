import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: const Column(children: [
          Row(children: [Text("Waste Wisdom Pro")]),
          Row(children: [Text("Logo")]),
          Row(children: [Text("Username")]),
          Row(children: [Text("Username")]),
          Row(children: [Text("Password")]),
          Row(children: [Text("Password")]),
          Row(children: [Text("Login")]),
          Row(children: [Text("New to the app?")]),
          Row(children: [Text("Sign up for free")]),
        ]));
  }
}
