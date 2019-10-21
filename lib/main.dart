import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "widget.title",
            style: TextStyle(color: Colors.amberAccent),
          ),
        ),
        body: AwesomePage(),
      ),
    );
  }
}

class AwesomePage extends StatelessWidget {
  const AwesomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Hello World"),
      ),
    );
  }
}
