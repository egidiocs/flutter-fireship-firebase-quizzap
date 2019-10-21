import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("myApp"),
            backgroundColor: Colors.amber,
          ),
          body: Container(
            color: Colors.amberAccent,
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(Icons.cake, color: Colors.black, size: 50),
                Icon(Icons.cake, color: Colors.black, size: 100),
                Icon(Icons.cake, color: Colors.black, size: 150),
                Icon(Icons.cake, color: Colors.black, size: 200),
              ],
            ),
          )),
    );
  }
}
