import 'package:flutter/material.dart';

class Bird extends StatefulWidget {
  const Bird({Key? key}) : super(key: key);

  @override
  State<Bird> createState() => _BirdState();
}

class _BirdState extends State<Bird> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60, width: 60, child: Image.asset('lib/images/flappybird.png'));
  }
}
