// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: NetworkImage(
//             "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_play_button_icon_%282013%E2%80%932017%29.svg/960px-YouTube_play_button_icon_%282013%E2%80%932017%29.svg.png",
//           ),
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: Text("quit game"),
//         ),
//         appBar: AppBar(
//           title: Text("Rs.20000", style: TextStyle(fontSize: 25)),
//           centerTitle: true,
//         ),
//         drawer: Drawer(),

//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(
//               width: 100,
//               height: 100,
//               child: Stack(
//                 fit: StackFit.expand,
//                 children: [
//                   CircularProgressIndicator(
//                     strokeWidth: 11,
//                     backgroundColor: Colors.green,
//                     // color: Colors.green,
//                   ),
//                   Center(
//                     child: Text(
//                       "46",
//                       style: TextStyle(
//                         fontSize: 37,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             SizedBox(height: 10),

//             Container(
//               padding: EdgeInsets.all(12),
//               margin: EdgeInsets.all(17),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Text(
//                 "this is the question and it is used to display place at question",
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),

//             Container(
//               width: MediaQuery.of(context).size.width,
//               padding: EdgeInsets.all(12),
//               margin: EdgeInsets.all(17),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Text("A. one", style: TextStyle(fontSize: 22)),
//             ),

//             Container(
//               width: MediaQuery.of(context).size.width,
//               padding: EdgeInsets.all(12),
//               margin: EdgeInsets.all(17),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Text("B. two", style: TextStyle(fontSize: 22)),
//             ),

//             Container(
//               width: MediaQuery.of(context).size.width,
//               padding: EdgeInsets.all(12),
//               margin: EdgeInsets.all(17),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Text("C. three", style: TextStyle(fontSize: 22)),
//             ),

//             Container(
//               width: MediaQuery.of(context).size.width,
//               padding: EdgeInsets.all(12),
//               margin: EdgeInsets.all(17),
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(0.4),
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Text("D. four", style: TextStyle(fontSize: 22)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'dart:async';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int seconds = 45;
  Timer? timer;

  int currentQuestion = 2;


  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        timer.cancel();

        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Time Over!")));
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Widget optionTile({required String option, required String answer}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Material(
        color: const Color(0xff1A1F3A),
        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          borderRadius: BorderRadius.circular(30),
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.amber, width: 1.5),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.amber,
                  child: Text(
                    option,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Text(
                    answer,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget lifeLine({required IconData icon, required String title}) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: const Color(0xff352F73),
            shape: BoxShape.circle,
            border: Border.all(color: Colors.amber, width: 2),
          ),
          child: Icon(icon, color: Colors.white, size: 26),
        ),
        const SizedBox(height: 6),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff0D1025), Color(0xff1A1F3A)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

       drawer: Drawer(
  backgroundColor: const Color(0xff1A1F3A),
  child: Column(
    children: [
      Container(
        width: double.infinity,
        padding: const EdgeInsets.only(
          top: 60,
          bottom: 20,
        ),
        decoration: const BoxDecoration(
          color: Color(0xff352F73),
        ),
        child: const Column(
          children: [
            CircleAvatar(
              radius: 35,
              child: Icon(Icons.person, size: 35),
            ),
            SizedBox(height: 10),
            Text(
              "Player Name",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      const SizedBox(height: 15),

      const Text(
        "Question Progress",
        style: TextStyle(
          color: Colors.amber,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),

      const SizedBox(height: 10),

      Expanded(
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            bool completed = index < currentQuestion;
            bool active = index == currentQuestion;

            return Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: active
                    ? Colors.amber
                    : const Color(0xff352F73),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "${index + 1}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(
                  "Question ${index + 1}",
                  style: TextStyle(
                    color: active
                        ? Colors.black
                        : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: completed
                    ? const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      )
                    : active
                        ? const Icon(
                            Icons.play_circle_fill,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.lock_outline,
                            color: Colors.white70,
                          ),
              ),
            );
          },
        ),
      ),
    ],
  ),
),

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          iconTheme: const IconThemeData(
            color: Colors.amber, // Drawer icon color
          ),
          centerTitle: true,
          title: const Text(
            "₹20,000",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

        floatingActionButton: SizedBox(
          width: MediaQuery.of(context).size.width * .85,
          height: 55,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: () {},
            child: const Text(
              "QUIT GAME",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 90),
            child: Column(
              children: [
                /// TIMER
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xff1A1F3A),
                    border: Border.all(
                      color: seconds <= 5 ? Colors.red : Colors.amber,
                      width: 5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.amber.withOpacity(.3),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "$seconds",
                      style: TextStyle(
                        color: seconds <= 5 ? Colors.red : Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                /// LIFELINES
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lifeLine(icon: Icons.filter_2, title: "50-50"),
                    lifeLine(icon: Icons.people, title: "Poll"),
                    lifeLine(icon: Icons.phone, title: "Call"),
                  ],
                ),

                const SizedBox(height: 30),

                /// QUESTION BOX
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xff352F73), Color(0xff1A1F3A)],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.amber, width: 2),
                  ),
                  child: const Text(
                    "Which planet is known as the Red Planet?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                optionTile(option: "A", answer: "Earth"),

                optionTile(option: "B", answer: "Mars"),

                optionTile(option: "C", answer: "Jupiter"),

                optionTile(option: "D", answer: "Venus"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
