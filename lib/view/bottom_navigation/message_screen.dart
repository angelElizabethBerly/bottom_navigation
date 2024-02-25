import 'package:bottom_navigation/dummy_db.dart';
import 'package:bottom_navigation/view/bottom_navigation/active_now_widget.dart';
import 'package:bottom_navigation/view/bottom_navigation/chat_widget.dart';
import 'package:bottom_navigation/view/bottom_navigation/individual_message.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Message"),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                    margin: EdgeInsets.only(right: 25),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Text("Search a doctor"),
                        Spacer(),
                        Icon(Icons.mic)
                      ],
                    )),
              ),
              Text("Active Now",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                  height: 100,
                  width: 500,
                  child: ListView.builder(
                      itemCount: DummyDB.details.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Row(
                            children: [
                              ActiveNow(index: index),
                              SizedBox(width: 20)
                            ],
                          ))),
              Text("Messages",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              SizedBox(
                width: 340,
                height: 500,
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        IndMessage(value: index)));
                          },
                          child: Chat(index: index));
                    },
                    separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: DummyDB.details.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
