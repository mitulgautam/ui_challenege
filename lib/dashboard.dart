import 'package:flutter/material.dart';
import 'package:ui_challenege/profileFront.dart';

import 'bottomFront.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/background.jpg',
                  height: 2 * size.height / 3,
                  fit: BoxFit.cover,
                ),
                Front()
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 8.0, right: 8.0),
              padding: EdgeInsets.all(8.0),
              child: Bottom(),
            )
          ],
        ),
      ),
    );
  }
}
