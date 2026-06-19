import 'package:flutter/material.dart';

class Winner extends StatefulWidget {
  const Winner({super.key});

  @override
  State<Winner> createState() => _WinnerState();
}

class _WinnerState extends State<Winner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Congratulations"),
            Text("your Answere is correct"),
            Text("you won"),
            Text("Rs.50000"),
            Image.asset("assets/images/image.png"),
          ],
        ),
      ),
    );
  }
}
