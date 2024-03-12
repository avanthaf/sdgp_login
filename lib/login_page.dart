import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdgp_login/components/my_button.dart';
import 'package:sdgp_login/components/my_sizedbox.dart';
import 'package:sdgp_login/components/my_textfield.dart';
import 'package:sdgp_login/signup_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
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
                controller: usernameController,
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
              const Text("Forgot Password?"),
              const MySizedBox(BoxHeight: 4),
              MyButton(
                onTap: loginUser,
                ButtonText: "Login",
              ),
              const MySizedBox(BoxHeight: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("New to the app?"),
                  const SizedBox(width: 5),
                  newGesture(context),
                ],
              ),
              const MySizedBox(BoxHeight: 5),
            ],
          ),
        ),
      ),
    );
  }

  void loginUser() {
    // Implement user login logic here
  }

  GestureDetector newGesture(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignupPage()));
      },
      child: const Text(
        "Sign up for free",
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }
}
