import 'package:flutter/material.dart';
import 'package:whats_app/model/my_data/chat_data.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: ListView(
        children: [
          for (int i = 0; i < myChat.length; i++)
            ListTile(

                title: Text(
                  myChat[i].name!,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Icon(Icons.call_missed_sharp),
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
