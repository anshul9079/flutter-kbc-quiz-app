import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kbc_app/services/auth.dart';
import 'package:overlay_support/overlay_support.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    InternetConnectionChecker().onStatusChange.listen((status) {
      final connected = status == InternetConnectionStatus.connected;
      showSimpleNotification(
        Text(connected ? "you are online" : "connect to the internet"),
      );
    });
  }

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
              onPressed: () async {
                await signWithGoogle();
              },
              child: Text("Continue With Google"),
            ),
          ],
        ),
      ),
    );
  }
}
