import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("myApp"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () => print('tapped!'),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
