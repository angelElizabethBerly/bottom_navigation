import 'package:bottom_navigation/dummy_db.dart';
import 'package:flutter/material.dart';

class IndMessage extends StatelessWidget {
  const IndMessage({super.key, required this.value});
  final int value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: Icon(Icons.send, color: Colors.white)),
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            return Navigator.pop(context);
          },
        ),
        title: Text(
          DummyDB.details[value]["name"],
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            child: Icon(Icons.call, size: 20),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            child: Icon(Icons.video_call_outlined, size: 20),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SizedBox(
        height: 800,
        child: ListView.builder(
          itemCount: DummyDB.chat.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: DummyDB.chat[index]["type"] == "received"
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 20),
                  Container(
                    width: 280,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: DummyDB.chat[index]["type"] == "received"
                            ? Colors.grey.shade200
                            : Colors.blue),
                    child: Text(
                      DummyDB.chat[index]["text"],
                      style: TextStyle(
                          color: DummyDB.chat[index]["type"] == "received"
                              ? Colors.black
                              : Colors.white),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
