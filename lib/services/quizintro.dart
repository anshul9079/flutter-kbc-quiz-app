import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quizintro extends StatelessWidget {
  const Quizintro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: Text("start quize"),
      ),
      appBar: AppBar(title: Text("KBC Quiz App")),
      body: SingleChildScrollView(
        child: Container(
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
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
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
                        Icon(Icons.timer),
                        SizedBox(width: 6),

                        Text(
                          "Duration",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text("10 Minutes", style: TextStyle(fontSize: 17)),
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
                          "About Quiz",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "lorem is lskdffjd dfkjsdfhkd kfsdjfhskdjfhse jdkjh jejkdj sjdfhjkh ajkii fhsdjkfhdjfh djsfhsjkdfh djdjkfh  ",
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Quizintro extends StatelessWidget {
//   const Quizintro({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff0D1025),

//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//         title: const Text(
//           "KBC Quiz",
//           style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
//         ),
//       ),

//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

//       floatingActionButton: Container(
//         width: MediaQuery.of(context).size.width * .9,
//         height: 55,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(30),
//           gradient: const LinearGradient(colors: [Colors.amber, Colors.orange]),
//         ),
//         child: ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.transparent,
//             shadowColor: Colors.transparent,
//           ),
//           child: const Text(
//             "START QUIZ",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),

//       body: SingleChildScrollView(
//         padding: const EdgeInsets.only(bottom: 100),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 15),

//             /// Quiz Name
//             const Center(
//               child: Text(
//                 "Space Science Quiz",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),

//             const SizedBox(height: 20),

//             /// Banner Image
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 15),
//               height: 220,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 image: const DecorationImage(
//                   image: NetworkImage(
//                     "https://images.unsplash.com/photo-1446776811953-b23d57bd21aa",
//                   ),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),

//             const SizedBox(height: 25),

//             /// Prize Card
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 15),
//               padding: const EdgeInsets.all(18),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 color: Colors.deepPurple.shade700,
//               ),
//               child: const Row(
//                 children: [
//                   Icon(Icons.emoji_events, color: Colors.amber, size: 35),

//                   SizedBox(width: 15),

//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Winning Prize",
//                         style: TextStyle(color: Colors.white70),
//                       ),

//                       Text(
//                         "₹50,000",
//                         style: TextStyle(
//                           color: Colors.amber,
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             infoCard(
//               icon: Icons.topic,
//               title: "Related To",
//               value: "Science, Space, Astronomy, Rocket, ISRO",
//             ),

//             infoCard(icon: Icons.timer, title: "Duration", value: "10 Minutes"),

//             infoCard(
//               icon: Icons.quiz,
//               title: "Questions",
//               value: "20 Questions",
//             ),

//             infoCard(
//               icon: Icons.description,
//               title: "About Quiz",
//               value:
//                   "Test your knowledge about space missions, astronomy, rockets, planets and India's space agency ISRO.",
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget infoCard({
//     required IconData icon,
//     required String title,
//     required String value,
//   }) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//       padding: const EdgeInsets.all(18),
//       decoration: BoxDecoration(
//         color: const Color(0xff1A1F3A),
//         borderRadius: BorderRadius.circular(18),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Icon(icon, color: Colors.amber),

//               const SizedBox(width: 10),

//               Text(
//                 title,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 19,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),

//           const SizedBox(height: 12),

//           Text(
//             value,
//             style: const TextStyle(color: Colors.white70, fontSize: 16),
//           ),
//         ],
//       ),
//     );
//   }
// }
