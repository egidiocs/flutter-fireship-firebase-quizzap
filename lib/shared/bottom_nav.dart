import 'package:flutter/material.dart';
import '../services/auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';

class AppBottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.graduationCap, size: 20),
            title: Text('Topics')),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bolt, size: 20),
            title: Text('About')),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userCircle, size: 20),
            title: Text('Profile')),
        BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app, size: 20),
            title: Text('Profile')),
      ].toList(),
      fixedColor: Colors.deepPurple[200],
      onTap: (int idx) async {
        switch (idx)  {
          case 0:
          // do nuttin
            break;
          case 1:
            Navigator.pushNamed(context, '/about');
            break;
          case 2:
            Navigator.pushNamed(context, '/profile');
            break;
          case 3:
            await AuthService().signOut();
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (route) => false);
            break;
        }
      },
    );
  }
}