import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text("Screen 4",
              style: TextStyle(
                  fontSize: 30,
                  // color: Colors.white,
                  fontWeight: FontWeight.bold))),
    );
  }
}
