import 'package:flutter/material.dart';
import 'package:sdgp_login/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              //Name
              const Text(
                "WasteWisdom Pro",
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),

              //WasteWisdom Pro icon
              const Icon(
                Icons.recycling_outlined,
                size: 100,
              ),

              const SizedBox(height: 50),

              //Welcome note
              const Text(
                "Welcome Back!",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),

              SizedBox(height: 25),

              //Username
              MyTextField(
                controller: usernameController,
                hintText: "Email Address",
                obscureText: false,
              ),

              const SizedBox(height: 25),

              // password
              MyTextField(
                controller: passwordController,
                obscureText: true,
                hintText: "Password",
              ),

              const SizedBox(height: 15),

              //Forgot password
              const Text("Forgot Password?"),

              const SizedBox(height: 25),
              //login button

              //sign up button
            ],
          ),
        ),
      ),
    );
  }
}
