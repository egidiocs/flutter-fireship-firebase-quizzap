import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My Cool App'),
          ),
          body: Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.amberAccent, shape: BoxShape.circle),
            ),
          )),
    );
  }
}
