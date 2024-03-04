import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sdgp_login/components/my_button.dart';
import 'package:sdgp_login/components/my_sizedbox.dart';
import 'package:sdgp_login/components/my_textfield.dart';
import 'package:sdgp_login/signup_page.dart';
import 'package:sdgp_login/database/login_database.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final dbHelper = DatabaseHelper();

  Future<void> LoginUser() async {
    await dbHelper.connect();

    String username = usernameController.text;
    String password = passwordController.text;

    bool isLoggedIn = await dbHelper.login(username, password);

    if (isLoggedIn) {
      print('Login successful');
    } else {
      print('Login failed');
    }

    await dbHelper.close();
  }

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
                hintText: "Password",
                obscureText: true,
              ),

              // Forgot Password Text
              const MySizedBox(BoxHeight: 1),
              const Text("Forgot Password?"),

              // Login Button
              const MySizedBox(BoxHeight: 4),
              MyButton(
                onTap: () => LoginUser(),
                ButtonText: "Login",
              ),

              // Sign up Text field
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
