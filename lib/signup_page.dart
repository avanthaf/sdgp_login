import 'package:flutter/material.dart';
import 'package:sdgp_login/components/my_button.dart';
import 'package:sdgp_login/components/my_sizedbox.dart';
import 'package:sdgp_login/components/my_snackbar.dart';
import 'package:sdgp_login/components/my_textfield.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sdgp_login/login_page.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final contactController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();

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
              const Text(
                "WasteWisdom Pro",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
              const MySizedBox(BoxHeight: 1),
              const Icon(
                Icons.recycling_outlined,
                size: 80,
              ),
              const MySizedBox(BoxHeight: 5),
              MyTextField(
                  controller: firstnameController,
                  hintText: "First Name",
                  obscureText: false),
              const MySizedBox(BoxHeight: 1),
              MyTextField(
                  controller: lastnameController,
                  hintText: "Last Name",
                  obscureText: false),
              const MySizedBox(BoxHeight: 1),
              MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false),
              const MySizedBox(BoxHeight: 1),
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              const MySizedBox(BoxHeight: 1),
              MyTextField(
                controller: contactController,
                hintText: "Contact Number",
                obscureText: false,
              ),
              const MySizedBox(BoxHeight: 1),
              MyTextField(
                controller: addressController,
                hintText: "Address",
                obscureText: false,
              ),
              const MySizedBox(BoxHeight: 1),
              MyTextField(
                controller: cityController,
                hintText: "City",
                obscureText: false,
              ),
              const MySizedBox(BoxHeight: 4),
              MyButton(
                onTap: () => registerUser(context),
                ButtonText: "Create Account",
              ),
            ],
          ),
        ),
      ),
    );
  }

  void registerUser(BuildContext context) async {
    var url = Uri.parse('http://10.0.2.2:8080/v1/user/register');
    var response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json', // Set the content type here
      },
      body: jsonEncode({
        'firstName': firstnameController.text,
        'lastName': lastnameController.text,
        'email': emailController.text,
        'password': passwordController.text,
        'contact': contactController.text,
        'address': addressController.text,
        'city': cityController.text,
      }),
    );

    if (response.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
      SnackbarHelper.showSnackbar(
        context,
        title: 'Welcome Aboard!',
        message: 'Thank you for signing up. Start exploring our app now!',
      );
    } else {
      SnackbarHelper.showSnackbar(
        context,
        title: 'Registration Failed',
        message: 'Unable to complete registration. Please try again later.',
      );
    }
  }
}
