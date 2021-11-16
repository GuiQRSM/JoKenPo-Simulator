import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gamejkp extends StatefulWidget {
  const Gamejkp({Key? key}) : super(key: key);

  @override
  _GamejkpState createState() => _GamejkpState();
}

class _GamejkpState extends State<Gamejkp> {

  var _text = "Resultado!";

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child:Text(
                "O desafiador",
            style: TextStyle(
            fontSize: 15,
            color: Colors.teal,
            fontWeight: FontWeight.w700,
             ),
            ),
          ),
          //Image.asset(),
          Text(
              "$_text",
          style: TextStyle(
            fontSize: 15,
            color: Colors.teal,
            fontWeight: FontWeight.w700,
           ),
          ),
          Row(
            children: <Widget>[
              //Image.asset(),
              //Image.asset(),
              //Image.asset(),
            ],
          )
        ],
      ),
    );
  }
}
