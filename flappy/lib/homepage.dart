import 'dart:async';

import 'package:flappy/barriers.dart';
import 'package:flappy/bird.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isGameStarted = false;
  static double birdYaxis = 0;
  double time = 0;
  double height = 0;
  double initHeight = birdYaxis;
  double score = 0;

  void jump() {
    setState(() {
      time = 0;
      initHeight = birdYaxis;
    });
  }

  void startGame() {
    isGameStarted = true;
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      time += 0.5;
      height = -4.9 * time * time + 2.8 * time;

      setState(() {
        birdYaxis = initHeight - height;
      });
      if (birdYaxis > 1.3) {
        timer.cancel();
        isGameStarted = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isGameStarted) {
          jump();
        } else {
          startGame();
        }
      },
      child: Scaffold(
          body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    alignment: Alignment(0, birdYaxis),
                    color: Colors.blue,
                    child: Bird(),
                  ),
                  Container(
                    alignment: Alignment(0, -0.3),
                    child: isGameStarted
                        ? Text(' ')
                        : Text(
                            'T A P  T O  P L A Y',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 0),
                    child: Barrier(),
                  )
                ],
              )),
          Container(
            height: 15,
            color: Colors.green,
          ),
          Expanded(
              child: Container(
            color: Colors.brown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SCORE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '$score',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'BEST',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '$score',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          )),
        ],
      )),
    );
  }
}
