import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomeScreen(),
        '/slideshow': (context) => SlideshowScreen()
      },
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('push'),
              color: Colors.green,
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SlideshowScreen(name: 'Jeff'))
                // );

                //  Navigator.pushNamed(
                //     context,
                //     '/slideshow'
                //   );

                Navigator.pushNamed(context, '/slideshow');
              },
            ),
            FlatButton(
              child: Text('push replacement'),
              color: Colors.blue,
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SlideshowScreen(name: 'Jeff'))
                // );

                //  Navigator.pushNamed(
                //     context,
                //     '/slideshow'
                //   );

                Navigator.pushReplacementNamed(context, '/slideshow');
              },
            )
          ],
        ),
      ),
    );
  }
}

class SlideshowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SlideshowScreen'),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('home'),
              color: Colors.green,
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SlideshowScreen(name: 'Jeff'))
                // );

                //  Navigator.pushNamed(
                //     context,
                //     '/slideshow'
                //   );
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                } else {
                  Navigator.pushReplacementNamed(context, '/home');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
