import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Barrier extends StatelessWidget {
  final size;
  const Barrier({Key? key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 10,
          color: Colors.green.shade800,
        ),
      ),
    );
  }
}
