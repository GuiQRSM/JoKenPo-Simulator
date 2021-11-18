import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Gamejkp extends StatefulWidget {
  const Gamejkp({Key? key}) : super(key: key);

  @override
  _GamejkpState createState() => _GamejkpState();
}

class _GamejkpState extends State<Gamejkp> {

  var _text = "Resultado!";

  var _appImage = AssetImage("images/padrao.png");

  void _selectionApp(String comandUSer) {

    var options = ["pedra", "papel", "tesoura"];
    var random = Random().nextInt(3);
    var jokenApp = options[random];

    print("Jogada do App: " + jokenApp);
    print("Opção do usuario: " + comandUSer);

  }

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
           Image(image: this._appImage),
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
                GestureDetector(
                  onTap: () => _selectionApp("pedra"),
                 child: Image.asset(
                    "images/pedra.png",
                    height: 95,
                  ),
                ),
                GestureDetector(
                  onTap: () => _selectionApp("papel"),
                  child: Image.asset(
                    "images/papel.png",
                    height: 95,
                  ),
                ),
                GestureDetector(
                  onTap: () => _selectionApp("tesoura"),
                  child:  Image.asset(
                    "images/tesoura.png",
                    height: 95,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
