import 'package:flutter/material.dart';
import 'package:papb/Screens/Main/components/body.dart';
import 'package:papb/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: kPrimaryColor,
        animationDuration: Duration(milliseconds: 300),
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.notifications, size: 30, color: Colors.white),
          Icon(Icons.location_on, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      // appBar: AppBar(
      //   title: Text("Welcome"),
      //   actions: [
      //     Container(
      //       margin: const EdgeInsets.all(10.0),
      //       child: CircleAvatar(
      //         backgroundColor: Colors.pink.shade100,
      //         child: const Text('SA'),
      //       ),
      //     )
      //   ],
      // ),
      body: Body(),
    );
  }
}
