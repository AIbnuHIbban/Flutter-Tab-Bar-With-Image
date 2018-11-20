import 'package:flutter/material.dart';

import './computer.dart' as computer;
import './smartphone.dart' as smartphone;
import './sound.dart' as sound;
import './shop.dart' as shop;

void main() {
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.lightBlue,
        title: Center(
          child: Text("Electronics"),
        ),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: Icon(Icons.computer), text: "Komputer",),
            new Tab(icon: Icon(Icons.smartphone), text: "Phone",),
            new Tab(icon: Icon(Icons.surround_sound), text: "Sound",),
            new Tab(icon: Icon(Icons.shopping_cart), text: "Shop",),
          ],
        ),
      ),

      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new computer.Computer(),
          new smartphone.Smartphone(),
          new sound.Sound(),
          new shop.Shop(),
        ],
      ),

      bottomNavigationBar: new Material(
        color: Colors.grey[200],
        child: new TabBar(
          labelPadding: EdgeInsets.all(5),
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: Icon(Icons.computer, color: Colors.black26, size: 25,)),
            new Tab(icon: Icon(Icons.smartphone, color: Colors.black26, size: 25,)),
            new Tab(icon: Icon(Icons.surround_sound, color: Colors.black26, size: 25,)),
            new Tab(icon: Icon(Icons.shopping_cart, color: Colors.black26, size: 25,)),
          ],
        ),
      ),
    );
  }
}
