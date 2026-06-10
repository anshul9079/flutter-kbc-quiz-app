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
                height: 200,
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
                          borderRadius: BorderRadiusGeometry.circular(20)
                        ),
                        child: Container(
                          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_play_button_icon_%282013%E2%80%932017%29.svg/960px-YouTube_play_button_icon_%282013%E2%80%932017%29.svg.png"),

                        ),

                        
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                        color: Colors.black38,
                      )),

                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.lock_clock_outlined, size: 20, color: Colors.white,),
                            Text("Rs.23000", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold ),),
              Text("flutter quiz", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold ),)
                          ],
                        ),
                      )
                    ],
                  ),
                    
              )),

        SizedBox(width: 20),

                 Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  child: Stack(
                    children: [
                      Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(20)
                        ),
                        child: Container(
                          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_play_button_icon_%282013%E2%80%932017%29.svg/960px-YouTube_play_button_icon_%282013%E2%80%932017%29.svg.png"),

                        ),

                        
                      ),
                      Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                        color: Colors.black38,
                      )),

                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.lock_clock_outlined, size: 20, color: Colors.white,),
                            Text("Rs.23000", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold ),),
              Text("flutter quiz", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold ),)
                          ],
                        ),
                      )
                    ],
                  ),
                    
              ))    
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
