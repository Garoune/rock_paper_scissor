import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({super.key});

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 1;
  int bottom = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 66, 158, 234),
        appBar: AppBar(
          title: Text("Rock   Paper   Scissor", 
          style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 12, 110, 190),
        ),
        body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                  image: AssetImage('images/$top.png'),
                  height: 200.0,
                ),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  onPressed: () {
                    setState(() {
                      top = Random().nextInt(3)+1;
                      bottom = Random().nextInt(3)+1;
                    });
                  }, 
                  child: Text('شروع بازی', 
                  style: TextStyle(fontSize: 25),)),
                Image(
                  image: AssetImage('images/$bottom.png'),
                  height: 200.0,
                ),
              ],
            ),
          ),
        ),
      );
  }
}





class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    int top = 2;
    int bottom = 1;
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 213, 51, 242),
        appBar: AppBar(
          title: Text("rock paper scissor", 
          style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                  image: AssetImage('images/$top.png'),
                ),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.white),
                  onPressed: () {}, 
                  child: Text('شروع بازی', 
                  style: TextStyle(fontSize: 25),)),
                Image(
                  image: AssetImage('images/$bottom.png'),
                ),
              ],
            ),
          )),
      ),
    );
  }
}