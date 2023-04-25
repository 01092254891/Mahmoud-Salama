import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    "NewGroup")),
            TextButton(
                onPressed: () {},
                child: Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    "New broadcast")),
            TextButton(
                onPressed: () {},
                child: Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    "Linked devices")),
            TextButton(
                onPressed: () {},
                child: Text(
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    "settings")),
          ],
        ),
      ),
    );
  }
}
