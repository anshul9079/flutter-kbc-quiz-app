import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KBC Quiz Game")),

      body: Container(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_play_button_icon_%282013%E2%80%932017%29.svg/960px-YouTube_play_button_icon_%282013%E2%80%932017%29.svg.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 180,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(20),
                            ),
                            child: Container(
                              child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_play_button_icon_%282013%E2%80%932017%29.svg/960px-YouTube_play_button_icon_%282013%E2%80%932017%29.svg.png",
                              ),
                            ),
                          ),
                          Positioned(
                            top: 3,
                            bottom: 3,
                            left: 3,
                            right: 3,
                            child: Container(color: Colors.black38),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.lock_clock_outlined,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Rs.23000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "flutter quiz",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(20),
                            ),
                            child: Container(
                              child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_play_button_icon_%282013%E2%80%932017%29.svg/960px-YouTube_play_button_icon_%282013%E2%80%932017%29.svg.png",
                              ),
                            ),
                          ),
                          Positioned(
                            top: 3,
                            bottom: 3,
                            left: 3,
                            right: 3,
                            child: Container(color: Colors.black38),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Icon(
                                    Icons.lock_clock_outlined,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Rs.23000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "flutter quiz",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(20),
                            ),
                            child: Container(
                              child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_play_button_icon_%282013%E2%80%932017%29.svg/960px-YouTube_play_button_icon_%282013%E2%80%932017%29.svg.png",
                              ),
                            ),
                          ),
                          Positioned(
                            top: 3,
                            bottom: 3,
                            left: 3,
                            right: 3,
                            child: Container(color: Colors.black38),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.lock_clock_outlined,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Rs.23000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "flutter quiz",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 10),

                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Container(
                      child: Stack(
                        children: [
                          Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(20),
                            ),
                            child: Container(
                              child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_play_button_icon_%282013%E2%80%932017%29.svg/960px-YouTube_play_button_icon_%282013%E2%80%932017%29.svg.png",
                              ),
                            ),
                          ),
                          Positioned(
                            top: 3,
                            bottom: 3,
                            left: 3,
                            right: 3,
                            child: Container(color: Colors.black38),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Icon(
                                    Icons.lock_clock_outlined,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Rs.23000",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "flutter quiz",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Stack(
                children: [
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_play_button_icon_%282013%E2%80%932017%29.svg/960px-YouTube_play_button_icon_%282013%E2%80%932017%29.svg.png",
                      ),
                    ),
                  ),
                  Positioned(
                    top: 3,
                    bottom: 3,
                    left: 3,
                    right: 3,
                    child: Container(color: Colors.black38),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lock_clock_outlined,
                            size: 25,
                            color: Colors.white,
                          ),
                          Text(
                            "Rs.23000",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "flutter quiz",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
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






// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'profile.dart';

// class Home extends StatelessWidget {
//   Home({super.key});

//   final List<String> banners = [
//     "https://images.unsplash.com/photo-1516321318423-f06f85e504b3",
//     "https://images.unsplash.com/photo-1504384308090-c894fdcc538d",
//     "https://images.unsplash.com/photo-1522202176988-66273c2fd55f",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xff0D1025),

//       drawer: Drawer(
//         backgroundColor: const Color(0xff1A1F3A),
//         child: ListView(
//           children: [
//             UserAccountsDrawerHeader(
//               decoration: const BoxDecoration(
//                 color: Color(0xff352F73),
//               ),
//               accountName: const Text(
//                 "Anshul Soni",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                 ),
//               ),
//               accountEmail: const Text(
//                 "anshul@gmail.com",
//               ),
//               currentAccountPicture: const CircleAvatar(
//                 backgroundImage:
//                     AssetImage("assets/images/image.png"),
//               ),
//             ),

//             ListTile(
//               leading: const Icon(
//                 Icons.home,
//                 color: Colors.amber,
//               ),
//               title: const Text(
//                 "Home",
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),

//             ListTile(
//               leading: const Icon(
//                 Icons.person,
//                 color: Colors.amber,
//               ),
//               title: const Text(
//                 "Profile",
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (_) => const Profile(),
//                   ),
//                 );
//               },
//             ),

//             ListTile(
//               leading: const Icon(
//                 Icons.info,
//                 color: Colors.amber,
//               ),
//               title: const Text(
//                 "About",
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {},
//             ),

//             const Divider(color: Colors.white24),

//             ListTile(
//               leading: const Icon(
//                 Icons.logout,
//                 color: Colors.red,
//               ),
//               title: const Text(
//                 "Logout",
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 // Logout Code
//               },
//             ),
//           ],
//         ),
//       ),

//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         iconTheme: const IconThemeData(
//           color: Colors.amber,
//         ),
//         centerTitle: true,
//         title: const Text(
//           "KBC Quiz",
//           style: TextStyle(
//             color: Colors.amber,
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//       ),

//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Welcome Back 👋",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 26,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             const SizedBox(height: 5),

//             const Text(
//               "Let's win some rewards today",
//               style: TextStyle(
//                 color: Colors.white70,
//               ),
//             ),

//             const SizedBox(height: 20),

//             CarouselSlider(
//               items: banners
//                   .map(
//                     (e) => ClipRRect(
//                       borderRadius:
//                           BorderRadius.circular(20),
//                       child: Stack(
//                         fit: StackFit.expand,
//                         children: [
//                           Image.network(
//                             e,
//                             fit: BoxFit.cover,
//                           ),
//                           Container(
//                             color: Colors.black38,
//                           ),
//                           const Center(
//                             child: Text(
//                               "Play & Win",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 26,
//                                 fontWeight:
//                                     FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )
//                   .toList(),
//               options: CarouselOptions(
//                 height: 180,
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//               ),
//             ),

//             const SizedBox(height: 25),

//             const Text(
//               "Quiz Categories",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             const SizedBox(height: 15),

//             GridView.count(
//               crossAxisCount: 2,
//               shrinkWrap: true,
//               physics:
//                   const NeverScrollableScrollPhysics(),
//               crossAxisSpacing: 12,
//               mainAxisSpacing: 12,
//               childAspectRatio: .9,
//               children: [
//                 quizCard(
//                   title: "Flutter Quiz",
//                   prize: "₹25,000",
//                   image:
//                       "https://images.unsplash.com/photo-1516321318423-f06f85e504b3",
//                 ),
//                 quizCard(
//                   title: "Sports Quiz",
//                   prize: "₹50,000",
//                   image:
//                       "https://images.unsplash.com/photo-1547347298-4074fc3086f0",
//                 ),
//                 quizCard(
//                   title: "Science Quiz",
//                   prize: "₹15,000",
//                   image:
//                       "https://images.unsplash.com/photo-1532094349884-543bc11b234d",
//                 ),
//                 quizCard(
//                   title: "GK Quiz",
//                   prize: "₹75,000",
//                   image:
//                       "https://images.unsplash.com/photo-1507842217343-583bb7270b66",
//                 ),
//               ],
//             ),

//             const SizedBox(height: 25),

//             Container(
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 borderRadius:
//                     BorderRadius.circular(20),
//                 gradient: const LinearGradient(
//                   colors: [
//                     Colors.deepPurple,
//                     Colors.blue,
//                   ],
//                 ),
//               ),
//               child: const Row(
//                 children: [
//                   Icon(
//                     Icons.bolt,
//                     color: Colors.yellow,
//                     size: 40,
//                   ),
//                   SizedBox(width: 15),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment:
//                           CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Daily Challenge",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight:
//                                 FontWeight.bold,
//                           ),
//                         ),
//                         SizedBox(height: 5),
//                         Text(
//                           "Play today's special quiz and win bonus points.",
//                           style: TextStyle(
//                             color: Colors.white70,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget quizCard({
//     required String title,
//     required String prize,
//     required String image,
//   }) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         image: DecorationImage(
//           image: NetworkImage(image),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           gradient: const LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [
//               Colors.transparent,
//               Colors.black87,
//             ],
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment:
//               MainAxisAlignment.end,
//           children: [
//             const Icon(
//               Icons.emoji_events,
//               color: Colors.amber,
//               size: 30,
//             ),
//             Text(
//               prize,
//               style: const TextStyle(
//                 color: Colors.amber,
//                 fontWeight:
//                     FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 5),
//             Text(
//               title,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 18,
//                 fontWeight:
//                     FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 15),
//           ],
//         ),
//       ),
//     );
//   }
// }