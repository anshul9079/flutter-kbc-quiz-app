// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class Profile extends StatefulWidget {
//   const Profile({super.key});

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("title", style: TextStyle(fontSize: 20)),
//         centerTitle: true,
//         elevation: 0.0,
//       ),

//       body: Column(
//         children: [
//           Container(
//             height: 300,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.only(
//                 bottomRight: Radius.circular(20),
//                 bottomLeft: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//               children: [
//                 CircleAvatar(
//                   radius: 40,
//                   // backgroundColor: Colors.blue,
//                   backgroundImage: AssetImage("assets/images/image.png"),
//                 ),
//                 Text("user name"),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Column(children: [Text("44"), Text("level")]),
//                     Divider(thickness: 1, indent: 30, endIndent: 20),
//                     Column(children: [Text("1"), Text("rank")]),
//                   ],
//                 ),
//               ],
//             ),
//           ),

//           SizedBox(height: 20),
//           Text("leader bord", style: TextStyle(fontSize: 20)),
//           SizedBox(
//             height: 300,
//             child: ListView.separated(
//               shrinkWrap: true,
//               itemBuilder: (context, Builder) {
//                 return ListTile(
//                   title: Text("name"),
//                   leading: Text("#${Index}+1"),
//                 );
//               },
//               separatorBuilder: (context, Index) => Divider(),
//               itemCount: 10,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }   my design

// import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List leaderboard = [
//       {"name": "Anshul", "amount": "₹50,000"},
//       {"name": "Rahul", "amount": "₹40,000"},
//       {"name": "Aman", "amount": "₹30,000"},
//       {"name": "Rohit", "amount": "₹20,000"},
//       {"name": "Vikas", "amount": "₹10,000"},
//     ];

//     return Scaffold(
//       backgroundColor: const Color(0xff0D1025),

//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//         iconTheme: const IconThemeData(color: Colors.amber),
//         title: const Text(
//           "Profile",
//           style: TextStyle(
//             color: Colors.amber,
//             fontSize: 26,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),

//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(height: 20),

//             /// PROFILE IMAGE
//             Container(
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(color: Colors.amber, width: 4),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.amber.withOpacity(.4),
//                     blurRadius: 20,
//                   ),
//                 ],
//               ),
//               child: const CircleAvatar(
//                 radius: 60,
//                 backgroundImage: AssetImage("assets/images/image.png"),
//               ),
//             ),

//             const SizedBox(height: 15),

//             const Text(
//               "Anshul Soni",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 28,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             const SizedBox(height: 5),

//             const Text(
//               "Flutter Developer",
//               style: TextStyle(color: Colors.white70, fontSize: 18),
//             ),

//             const SizedBox(height: 25),

//             /// TOTAL WINNING CARD
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 20),
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   colors: [Color(0xff352F73), Color(0xff1A1F3A)],
//                 ),
//                 borderRadius: BorderRadius.circular(25),
//                 border: Border.all(color: Colors.amber, width: 2),
//               ),
//               child: const Column(
//                 children: [
//                   Text(
//                     "Total Winning",
//                     style: TextStyle(color: Colors.white70, fontSize: 18),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "₹1,20,000",
//                     style: TextStyle(
//                       color: Colors.amber,
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 25),

//             /// STATS
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 statCard("44", "Level"),
//                 statCard("#1", "Rank"),
//                 statCard("18", "Games"),
//               ],
//             ),

//             const SizedBox(height: 30),

//             const Text(
//               "Leaderboard",
//               style: TextStyle(
//                 color: Colors.amber,
//                 fontSize: 26,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             const SizedBox(height: 20),

//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: leaderboard.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   margin: const EdgeInsets.symmetric(
//                     horizontal: 20,
//                     vertical: 8,
//                   ),
//                   decoration: BoxDecoration(
//                     color: const Color(0xff1A1F3A),
//                     borderRadius: BorderRadius.circular(20),
//                     border: Border.all(color: Colors.amber),
//                   ),
//                   child: ListTile(
//                     leading: CircleAvatar(
//                       backgroundColor: Colors.amber,
//                       child: Text(
//                         "${index + 1}",
//                         style: const TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                     title: Text(
//                       leaderboard[index]["name"],
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     trailing: Text(
//                       leaderboard[index]["amount"],
//                       style: const TextStyle(
//                         color: Colors.amber,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),

//             const SizedBox(height: 30),
//           ],
//         ),
//       ),
//     );
//   }

//   static Widget statCard(String value, String title) {
//     return Container(
//       width: 95,
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: const Color(0xff352F73),
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: Colors.amber),
//       ),
//       child: Column(
//         children: [
//           Text(
//             value,
//             style: const TextStyle(
//               color: Colors.amber,
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 5),
//           Text(title, style: const TextStyle(color: Colors.white)),
//         ],
//       ),
//     );
//   }
// }  design 1

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    List amounts = [
      "₹7 Crore",
      "₹1 Crore",
      "₹50 Lakh",
      "₹25 Lakh",
      "₹12.5 Lakh",
      "₹6.4 Lakh",
      "₹3.2 Lakh",
      "₹1.6 Lakh",
      "₹80,000",
      "₹40,000",
      "₹20,000",
      "₹10,000",
    ];

    return Scaffold(
      backgroundColor: const Color(0xff0B1026),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.amber),
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            /// PROFILE IMAGE
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.amber, width: 4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.amber.withOpacity(0.4),
                    blurRadius: 30,
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/image.png"),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "ANSHUL SONI",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "KBC Champion",
              style: TextStyle(color: Colors.amber, fontSize: 18),
            ),

            const SizedBox(height: 25),

            /// WINNING CARD
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xff352F73), Color(0xff1A1F3A)],
                ),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.amber, width: 2),
              ),
              child: const Column(
                children: [
                  Text(
                    "TOTAL WINNING",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "₹1,20,000",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            /// STATS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                statCard("44", "Level"),
                statCard("#1", "Rank"),
                statCard("18", "Games"),
              ],
            ),

            const SizedBox(height: 30),

            /// BADGES
            const Text(
              "Achievements",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.emoji_events, color: Colors.amber, size: 40),
                Icon(Icons.workspace_premium, color: Colors.orange, size: 40),
                Icon(Icons.star, color: Colors.yellow, size: 40),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Money Ladder",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: amounts.length,
              itemBuilder: (context, index) {
                bool current = index == 8;

                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: current ? Colors.amber : const Color(0xff1A1F3A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: Icon(
                      current ? Icons.star : Icons.lock,
                      color: current ? Colors.black : Colors.white,
                    ),
                    title: Text(
                      amounts[index],
                      style: TextStyle(
                        color: current ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  static Widget statCard(String value, String title) {
    return Container(
      width: 95,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xff1A1F3A),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.amber),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              color: Colors.amber,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(title, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
