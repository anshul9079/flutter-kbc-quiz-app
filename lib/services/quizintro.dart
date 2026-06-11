import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quizintro extends StatelessWidget {
  const Quizintro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KBC Quiz App")),
      body: Container(
        padding: EdgeInsets.only(bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Quiz Name",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_play_button_icon_%282013%E2%80%932017%29.svg/960px-YouTube_play_button_icon_%282013%E2%80%932017%29.svg.png",
              fit: BoxFit.cover,
              height: 230,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              padding: EdgeInsets.all(18),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  Row(
                    children: [
                      Icon(Icons.topic_outlined),
                      SizedBox(width: 6),

                      Text(
                        "Related To",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Science , Space , Astronmy , Rocket , ISRO",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(18),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  Row(
                    children: [
                      Icon(Icons.topic_outlined),
                      SizedBox(width: 6),

                      Text(
                        "Related To",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Science , Space , Astronmy , Rocket , ISRO",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(18),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  Row(
                    children: [
                      Icon(Icons.topic_outlined),
                      SizedBox(width: 6),

                      Text(
                        "Related To",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Science , Space , Astronmy , Rocket , ISRO",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
