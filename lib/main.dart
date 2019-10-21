import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: CoolBox(),
      )),
    );
  }
}

class CoolBox extends StatefulWidget {
  const CoolBox({
    Key key,
  }) : super(key: key);

  @override
  _CoolBoxState createState() => _CoolBoxState();
}

class _CoolBoxState extends State<CoolBox> {
  double width = 100;
  double height = 100;
  Color color = Colors.green;
  double a = 1;
  String text;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.linear,
        color: color,
        width: width,
        height: height,
        child: FlatButton(
          child: Text('Random $text'),
          onPressed: () {
            setState(() {
              width = Random().nextDouble() * 400;
              height = Random().nextDouble() * 400;

              int r = Random().nextInt(255);
              int b = Random().nextInt(255);
              int g = Random().nextInt(255);
              a = Random().nextDouble();

              text = a.toString();
              color = Color.fromRGBO(r, b, g, a);
            });
          },
        ));
  }
}
