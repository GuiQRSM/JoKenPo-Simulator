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
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child:Text(
                "O desafiador",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.teal,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            GestureDetector(
              child: Image.asset(
                "images/padrao.png",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "$_text",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.teal,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  "images/pedra.png",
                  height: 90,
                ),
                Image.asset(
                  "images/papel.png",
                  height: 90,
                ),
                Image.asset(
                  "images/tesoura.png",
                  height: 90,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
