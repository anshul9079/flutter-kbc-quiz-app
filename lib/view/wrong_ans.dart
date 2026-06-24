// import 'package:flutter/cupertino.dart';

// class WrongAns extends StatelessWidget {
//   const WrongAns({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }



import 'package:flutter/material.dart';

class WrongAns extends StatelessWidget {
  const WrongAns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D1025),

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
              /// WRONG ICON
              Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red.withOpacity(.15),
                  border: Border.all(
                    color: Colors.red,
                    width: 3,
                  ),
                ),
                child: const Icon(
                  Icons.close,
                  color: Colors.red,
                  size: 90,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "WRONG ANSWER",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                "Oops! Your answer is incorrect.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Better luck next time!",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 35),

              /// WON AMOUNT
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
                    color: Colors.red,
                    width: 2,
                  ),
                ),
                child: const Column(
                  children: [
                    Text(
                      "You Won",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "₹10,000",
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
                  onPressed: () {
                    // Play Again
                  },
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
                onPressed: () {
                  // Home Page
                },
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