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
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 100,
                  child: Text(
                    'Hello World this is too long',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.display3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
