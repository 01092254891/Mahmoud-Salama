import 'package:flutter/material.dart';
import 'package:whats_app/model/my_data/chat_data.dart';

import 'chat_details.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: ListView(
        children: [
          for (int i = 0; i < myChat.length; i++)
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatDetails(
                                name: myChat[i].name!,
                                message: myChat[i].message!,
                                image: myChat[i].image!,
                              )));
                },
                title: Text(
                  myChat[i].name!,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  myChat[i].message!,
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
                trailing: Text(
                  myChat[i].time!,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                leading: CircleAvatar(
                  maxRadius: 20,
                  backgroundImage: AssetImage(myChat[i].image!),
                ))
        ],
      ),
    );
  }
}
