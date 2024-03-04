import 'package:flutter/material.dart';
import 'package:sdgp_login/components/my_button.dart';
import 'package:sdgp_login/components/my_sizedbox.dart';
import 'package:sdgp_login/components/my_textfield.dart';
import 'package:sdgp_login/database/login_database.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final dbHelper = DatabaseHelper();

  Future<void> registerUser() async {
    await dbHelper.connect();

    String firstName = firstnameController.text;
    String lastName = lastnameController.text;
    String username = usernameController.text;
    String password = passwordController.text;

    await DatabaseHelper()
        .registerUser(firstName, lastName, username, password);

    print('User registered successfully');

    await dbHelper.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sign up"),
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  Company name and logo
              const Text(
                "WasteWisdom Pro",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              const MySizedBox(BoxHeight: 1),
              const Icon(
                Icons.recycling_outlined,
                size: 100,
              ),

              // First name text field
              const MySizedBox(BoxHeight: 5),
              MyTextField(
                  controller: firstnameController,
                  hintText: "First Name",
                  obscureText: false),
              const MySizedBox(BoxHeight: 1),

              // Last name text field
              MyTextField(
                  controller: lastnameController,
                  hintText: "Last Name",
                  obscureText: false),
              const MySizedBox(BoxHeight: 1),

              // Email text field
              MyTextField(
                  controller: usernameController,
                  hintText: "Email",
                  obscureText: false),
              const MySizedBox(BoxHeight: 1),

              // Password Text field
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),

              const MySizedBox(BoxHeight: 4),
              MyButton(
                onTap: () => registerUser(),
                ButtonText: "Sign up",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
