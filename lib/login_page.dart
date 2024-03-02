import 'package:flutter/material.dart';
import 'package:sdgp_login/components/my_button.dart';
import 'package:sdgp_login/components/my_sizedbox.dart';
import 'package:sdgp_login/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void LoginUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  Company name, logo and Welcome note
              const MySizedBox(BoxHeight: 4),
              const Text(
                "WasteWisdom Pro",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              const MySizedBox(BoxHeight: 1),
              const Icon(
                Icons.recycling_outlined,
                size: 150,
              ),

              const MySizedBox(BoxHeight: 5),
              const Text(
                "Welcome Back!",
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),

              // Username text field
              const MySizedBox(BoxHeight: 1),
              MyTextField(
                controller: usernameController,
                hintText: "Email Address",
                obscureText: false,
              ),

              // Password Text field
              const MySizedBox(BoxHeight: 1),
              MyTextField(
                controller: passwordController,
                obscureText: true,
                hintText: "Password",
              ),

              // Forgot Password Text
              const MySizedBox(BoxHeight: 1),
              const Text("Forgot Password?"),

              // Login Button
              const MySizedBox(BoxHeight: 4),
              MyButton(
                onTap: LoginUser,
              ),

              // Sign up Text field
              const MySizedBox(BoxHeight: 2),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New to the app?"),
                  SizedBox(width: 5),
                  Text(
                    "Sign up for free",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const MySizedBox(BoxHeight: 5),
            ],
          ),
        ),
      ),
    );
  }
}
