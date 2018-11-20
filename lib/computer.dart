import 'package:flutter/material.dart';

class Computer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: EdgeInsets.all(20),),
            new Text("COMPUTER", style: TextStyle(fontSize: 30),),
            new Padding(padding: EdgeInsets.all(20),),
            new Image.asset("img/computer.png", width: 200,)
          ],
        ),
      ),
    );
  }
}