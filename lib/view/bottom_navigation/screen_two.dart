import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text("Screen 2",
              style: TextStyle(
                  fontSize: 30,
                  // color: Colors.white,
                  fontWeight: FontWeight.bold))),
    );
  }
}
