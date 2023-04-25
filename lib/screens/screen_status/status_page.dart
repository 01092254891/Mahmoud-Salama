import 'package:flutter/material.dart';
import 'package:whats_app/model/my_data/chat_data.dart';
import 'status_detils.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: ListView(
        children: [
          for (int B = 0; B < myChat.length; B++)
            ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => StatusDetails(

                              )));
                },
                title: Text(myChat[B].name!),
                subtitle: Text(myChat[B].time!),
                leading: CircleAvatar(
                  maxRadius: 20,
                  backgroundImage: AssetImage(myChat[B].image!),
                ))
        ],
      ),
    );
  }
}
