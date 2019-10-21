import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("myApp"),
          backgroundColor: Colors.amber,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amberAccent,
          child: Icon(Icons.add_box),
          onPressed: () => _controller.animateTo(_controller.offset + 10000,
              curve: Curves.easeIn, duration: Duration(milliseconds: 500)),
        ),
        body: ListView.builder(
          controller: _controller,
          itemBuilder: (context, idx) {
            return Container(
              color: Colors.blue,
              margin: EdgeInsets.all(10),
              height: 100,
              child: Center(
                child: Text(
                  '$idx',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            );
          },
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
