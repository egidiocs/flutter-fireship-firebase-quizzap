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
          body: SizedBox(
            child: Stack(
              children: <Widget>[
                Icon(Icons.camera, color: Colors.black, size: 100),
                Align(
                  alignment: Alignment.center,
                  child: Icon(Icons.camera, color: Colors.pink, size: 100),
                ),
                Positioned(
                  bottom: 0,
                  child: Icon(Icons.camera, color: Colors.cyan, size: 100),
                )
              ],
            ),
          )),
    );
  }
}
