// import 'package:flutter/material.dart';

// class Winner extends StatefulWidget {
//   const Winner({super.key});

//   @override
//   State<Winner> createState() => _WinnerState();
// }

// class _WinnerState extends State<Winner> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.share_rounded),),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage("assets/images/image.png"))
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Congratulations"),
//             Text("your Answere is correct"),
//             Text("you won"),
//             Text("Rs.50000"),
//             Image.asset("assets/images/image.png"),

//           ],
//         ),
//       ),
//     );
//   }
// }



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
      backgroundColor: const Color(0xff0D1025),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {},
        child: const Icon(
          Icons.share,
          color: Colors.black,
        ),
      ),

      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff0D1025),
              Color(0xff1A1F3A),
            ],
          ),
        ),

        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// TROPHY
              Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber.withOpacity(.15),
                  border: Border.all(
                    color: Colors.amber,
                    width: 3,
                  ),
                ),
                child: const Icon(
                  Icons.emoji_events,
                  color: Colors.amber,
                  size: 90,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "CONGRATULATIONS",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Your Answer is Correct",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "You Won",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 30),

              /// PRIZE CARD
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff352F73),
                  borderRadius:
                      BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.amber,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amber
                          .withOpacity(.3),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: const Column(
                  children: [
                    Text(
                      "Winning Amount",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "₹50,000",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: 250,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "PLAY AGAIN",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              TextButton(
                onPressed: () {},
                child: const Text(
                  "Back To Home",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
