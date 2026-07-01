import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbc_app/services/auth.dart';
import 'package:kbc_app/services/localdb.dart';
import 'package:kbc_app/view/login.dart';
import 'package:kbc_app/view/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name = "";
  String money = "";
  String lead = "";

  getData() async {
    name = await Localdb.getname() ?? "";
    money = await Localdb.getmoney() ?? "";
    lead = await Localdb.getlavel() ?? "";

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> banners = [
      "https://images.unsplash.com/photo-1516321318423-f06f85e504b3",
      "https://images.unsplash.com/photo-1504384308090-c894fdcc538d",
      "https://images.unsplash.com/photo-1522202176988-66273c2fd55f",
    ];

    return Scaffold(
      backgroundColor: const Color(0xff0D1025),

      drawer: Drawer(
        width: 270,
        backgroundColor: const Color(0xff0D1025),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 50, bottom: 25),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff352F73), Color(0xff1A1F3A)],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.deepPurple,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    "KBC Player",
                    style: TextStyle(color: Colors.white70),
                  ),

                  const SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            lead,
                            style: const TextStyle(
                              color: Colors.amber,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Level",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      Container(width: 1, height: 40, color: Colors.white24),

                      Column(
                        children: [
                          Text(
                            "₹$money",
                            style: const TextStyle(
                              color: Colors.amber,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Money",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            ListTile(
              leading: const Icon(Icons.home, color: Colors.amber),
              title: const Text("Home", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person, color: Colors.amber),
              title: const Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Profile()),
                );
              },
            ),

            ListTile(
              leading: const Icon(Icons.quiz, color: Colors.amber),
              title: const Text(
                "My Quiz",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.info, color: Colors.amber),
              title: const Text("About", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),

            const Spacer(),

            Container(
              margin: const EdgeInsets.all(15),
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () async {
                  await signOut();

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const Login()),
                  );
                },
                icon: const Icon(Icons.logout),
                label: const Text("Logout", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.amber),
        centerTitle: true,
        title: const Text(
          "KBC Quiz",
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome Back 👋",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Let's win some rewards today",
              style: TextStyle(color: Colors.white70),
            ),

            const SizedBox(height: 20),

            CarouselSlider(
              items: banners
                  .map(
                    (e) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(e, fit: BoxFit.cover),
                          Container(color: Colors.black38),
                          const Center(
                            child: Text(
                              "Play & Win",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: 180,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Quiz Categories",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: .9,
              children: [
                quizCard(
                  title: "Flutter Quiz",
                  prize: "₹25,000",
                  image:
                      "https://images.unsplash.com/photo-1516321318423-f06f85e504b3",
                ),
                quizCard(
                  title: "Sports Quiz",
                  prize: "₹50,000",
                  image:
                      "https://images.unsplash.com/photo-1547347298-4074fc3086f0",
                ),
                quizCard(
                  title: "Science Quiz",
                  prize: "₹15,000",
                  image:
                      "https://images.unsplash.com/photo-1532094349884-543bc11b234d",
                ),
                quizCard(
                  title: "GK Quiz",
                  prize: "₹75,000",
                  image:
                      "https://images.unsplash.com/photo-1507842217343-583bb7270b66",
                ),
              ],
            ),

            const SizedBox(height: 25),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [Colors.deepPurple, Colors.blue],
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.bolt, color: Colors.yellow, size: 40),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Daily Challenge",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Play today's special quiz and win bonus points.",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget quizCard({
    required String title,
    required String prize,
    required String image,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black87],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(Icons.emoji_events, color: Colors.amber, size: 30),
            Text(
              prize,
              style: const TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
