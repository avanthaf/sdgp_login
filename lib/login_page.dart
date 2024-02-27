import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: const SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),

              //Name
              Text(
                "WasteWisdom Pro",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),

              //WasteWisdom Pro icon
              Icon(
                Icons.recycling_outlined,
                size: 100,
              ),

              SizedBox(height: 50),

              //Welcome note
              Text(
                "Welcome Back!",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),

              SizedBox(height: 25),

              //Username
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 252, 1, 1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 212, 219, 16)),
                    ),
                    labelText: 'Enter your username',
                  ),
                ),
              )

              // password

              //login button

              //sign up button
            ],
          ),
        ),
      ),
    );
  }
}
