import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:taxi_app/screeens/profile_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ProfilePage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              icon: Icon(LineAwesomeIcons.map), label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(LineAwesomeIcons.user), label: "My Profile"),
        ],
      ),
    );
  }
}
