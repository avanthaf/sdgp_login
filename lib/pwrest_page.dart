import 'package:flutter/material.dart';
import 'package:sdgp_login/components/my_sizedbox.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PWRestPage extends StatelessWidget {
  PWRestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Password Rest"),
        backgroundColor: Colors.green[200],
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WasteWisdom Pro",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              MySizedBox(BoxHeight: 1),
              Icon(
                Icons.recycling_outlined,
                size: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
