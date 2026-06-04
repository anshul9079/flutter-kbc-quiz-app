import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/login_img.png"),

            SizedBox(height: 20),
            Text(
              "Welcome to KBC Quiz App",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            ElevatedButton(
              onPressed: () {},
              child: Text("Continue With Google"),
            ),
          ],
        ),
      ),
    );
  }
}
