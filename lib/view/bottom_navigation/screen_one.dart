import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text("Screen 1",
              style: TextStyle(
                  fontSize: 30,
                  // color: Colors.white,
                  fontWeight: FontWeight.bold))),
    );
  }
}
