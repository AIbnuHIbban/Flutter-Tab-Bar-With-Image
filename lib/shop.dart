import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: EdgeInsets.all(20),),
            new Text("SHOP", style: TextStyle(fontSize: 30),),
            new Padding(padding: EdgeInsets.all(20),),
            new Image(image: NetworkImage("https://www.fm104.ie/getmedia/6107b28a-40db-4759-8a84-db85ac6a1545/lush.jpg.aspx?width=1800&height=1013&ext=.jpg"),width: 200,)
          ],
        ),
      ),
    );
  }
}