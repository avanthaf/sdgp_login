import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdgp_login/components/my_button.dart';
import 'package:sdgp_login/components/my_gestureDetector.dart';
import 'package:sdgp_login/components/my_sizedbox.dart';
import 'package:sdgp_login/components/my_snackbar.dart';
import 'package:sdgp_login/components/my_textfield.dart';
import 'package:sdgp_login/home_page.dart';
import 'package:sdgp_login/pwrest_page.dart';
import 'package:sdgp_login/signup_page.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MySizedBox(BoxHeight: 5),
              const Text(
                "WasteWisdom Pro",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              const MySizedBox(BoxHeight: 2),
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
              const MySizedBox(BoxHeight: 1),
              MyTextField(
                controller: emailController,
                hintText: "Email Address",
                obscureText: false,
              ),
              const MySizedBox(BoxHeight: 1),
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              const MySizedBox(BoxHeight: 1),
              MyGestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PWRestPage()),
                  );
                },
                text: "Forgot Password?",
              ),
              const MySizedBox(BoxHeight: 4),
              MyButton(
                onTap: () => loginUser(context),
                ButtonText: "Login",
              ),
              const MySizedBox(BoxHeight: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("New to the app?"),
                  const SizedBox(width: 5),
                  MyGestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    text: "Sign up for free",
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

  void loginUser(BuildContext context) async {
    var url = Uri.parse('http://10.0.2.2:8080/v1/user/login');
    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'email': emailController.text,
        'password': passwordController.text,
      }),
    );

    if (response.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => homePage()),
      );
      SnackbarHelper.showSnackbar(
        context,
        message: 'Welcome back! You have successfully logged in.',
      );
    } else if (emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      SnackbarHelper.showSnackbar(
        context,
        message: 'Email address and password can\'t be empty',
      );
    } else if (response.statusCode == 401) {
      SnackbarHelper.showSnackbar(
        context,
        message:
            'Invalid email address  or password. Please verify your login details and try again!',
      );
    } else {
      SnackbarHelper.showSnackbar(
        context,
        message:
            'An unexpected error occurred. Please contact the administrator .',
      );
    }
  }
}
