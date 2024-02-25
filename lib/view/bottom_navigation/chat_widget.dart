import 'package:bottom_navigation/dummy_db.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      title: Text(
        DummyDB.details[index]["name"],
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      tileColor: Colors.grey.shade200,
      subtitle: Text(
        "Worem consectetur adipiscing elit.",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 12, color: Colors.blue),
      ),
      leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(DummyDB.details[index]["proPic"])),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("12.50"),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.blue,
            child: Text(
              "2",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}
