import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          textTheme: TextTheme(
              body1: TextStyle(color: Colors.red.shade100, fontSize: 30),
              headline: TextStyle(color: Colors.blue.shade100, fontSize: 70))),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white, size: 30),
            title: Row(
              children: <Widget>[Icon(Icons.apps), Text('MyApp')],
            )),
        body: Center(
          child: Text(
            'Hello World',
            style: Theme.of(context).textTheme.body1,
          ),
        ));
  }
}
