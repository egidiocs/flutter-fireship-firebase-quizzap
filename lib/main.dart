import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.lightGreen,
          textTheme: TextTheme(
              body1: TextStyle(color: Colors.red, fontSize: 30),
              headline: TextStyle(color: Colors.blue, fontSize: 70))),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            'Hello World',
            style: Theme.of(context).textTheme.headline,
          ),
        ));
  }
}
