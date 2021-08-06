import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int image = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              image = Random().nextInt(5)+1;
            });
          },
          child: Expanded(child: Image.asset("images/ball$image.png")),
        ),
      ),
    );
  }
}
