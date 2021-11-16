import 'package:flutter/material.dart';

class Gamejkp extends StatefulWidget {
  const Gamejkp({Key? key}) : super(key: key);

  @override
  _GamejkpState createState() => _GamejkpState();
}

class _GamejkpState extends State<Gamejkp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "JoKenPo Simulator",
        style: TextStyle(
          color: Colors.teal,
          fontWeight: FontWeight.w700
        ),),
        backgroundColor: Colors.tealAccent,
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(width: 3, color: Colors.purple)),
        width: double.infinity,
      ),
    );
  }
}
