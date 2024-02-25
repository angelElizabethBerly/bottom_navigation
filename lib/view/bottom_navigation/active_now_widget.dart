import 'package:bottom_navigation/dummy_db.dart';
import 'package:flutter/material.dart';

class ActiveNow extends StatelessWidget {
  const ActiveNow({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(DummyDB.details[index]["proPic"]),
      ),
      Positioned(
          top: 1,
          right: 1,
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 10,
          ))
    ]);
  }
}
