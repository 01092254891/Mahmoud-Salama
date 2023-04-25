import 'package:flutter/material.dart';

class ChatDetails extends StatelessWidget {
  String image, name, message;

  ChatDetails({required this.image, required this.name, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // endDrawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
        backgroundColor: Colors.black.withOpacity(.7),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(this.image),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "${this.name}",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
      body: Card(
        color: Colors.black12,
        child: ListTile(
          title: Text(
            this.message,
            style: TextStyle(fontSize: 23),
          ),
        ),
      ),
      bottomSheet: TextFormField(
        decoration: InputDecoration(
            hintText: "",
            prefixIcon: Icon(Icons.add),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 5, color: Colors.brown))),
      ),
    );
  }
}
