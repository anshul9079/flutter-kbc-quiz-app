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
// }




import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List players = [
    {"name": "Anshul", "score": 50000},
    {"name": "Rahul", "score": 40000},
    {"name": "Aman", "score": 30000},
    {"name": "Rohit", "score": 20000},
    {"name": "Vikas", "score": 10000},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D1025),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.amber,
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            /// PROFILE CARD
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff352F73),
                    Color(0xff1A1F3A),
                  ],
                ),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.amber,
                  width: 2,
                ),
              ),

              child: Column(
                children: [

                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      "assets/images/image.png",
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "Anshul Soni",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Flutter Developer",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),

                  const SizedBox(height: 25),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                    children: [

                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.circular(15),
                        ),
                        child: const Column(
                          children: [
                            Text(
                              "44",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),
                            Text("Level"),
                          ],
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius:
                              BorderRadius.circular(15),
                        ),
                        child: const Column(
                          children: [
                            Text(
                              "#1",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),
                            Text("Rank"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Leaderboard",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            ListView.builder(
              shrinkWrap: true,
              physics:
                  const NeverScrollableScrollPhysics(),
              itemCount: players.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),

                  decoration: BoxDecoration(
                    color: const Color(0xff1A1F3A),
                    borderRadius:
                        BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.amber,
                    ),
                  ),

                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.amber,
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                    ),

                    title: Text(
                      players[index]["name"],
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    trailing: Text(
                      "₹${players[index]["score"]}",
                      style: const TextStyle(
                        color: Colors.amber,
                        fontSize: 18,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}