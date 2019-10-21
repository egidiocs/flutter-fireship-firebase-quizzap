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
        body: GridView.count(
          crossAxisCount: 4,
          scrollDirection: Axis.vertical,
          children: _cards(),
        ),
      ),
    );
  }
}

List<Widget> _cards() {
  return [1, 2, 3, 4, 5, 6, 7, 8, 9]
      .map((v) => Container(
            color: Colors.blue,
            margin: EdgeInsets.all(1),
            child: Center(
              child: Text(
                '$v',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ))
      .toList();
}
