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
          child: Icon(Icons.cake),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.arrow_forward),
        ),
        drawer: Drawer(),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(title: Text('foo'), icon: Icon(Icons.call)),
          BottomNavigationBarItem(title: Text('bar'), icon: Icon(Icons.cached))
        ]),
      ),
    );
  }
}
