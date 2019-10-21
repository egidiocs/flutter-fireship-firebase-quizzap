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
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                //shape: BoxShape.circle,
                //border: Border.all(width: 4, color: Colors.black),
                //boxShadow: [
                //  BoxShadow(offset: Offset(40, 40), color: Colors.purple),
                //  BoxShadow(offset: Offset(20, 20), color: Colors.pink),
                //],
                gradient: RadialGradient(colors: [Colors.yellow, Colors.pink])),
          ),
        ),
      ),
    );
  }
}
