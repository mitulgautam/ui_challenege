import 'dart:math';

import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  final friendList = ['M', 'I', 'T', 'U', 'L', 'T', 'A', 'N', 'Y', 'A'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'About',
              style: TextStyle(
                  fontFamily: 'Google',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            MaterialButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Text(
                    'See All',
                    style: TextStyle(fontSize: 16.0, color: Colors.lightBlue),
                  ),
                  Container(
                    width: 8.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16.0,
                    color: Colors.lightBlue,
                  )
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 8.0),
          child: Text(
            'Inset essential content to prevent clipping. In general, content should be centered and symmetrically inset so it looks great in..',
            style: TextStyle(
                fontFamily: 'Google',
                color: Colors.black38,
                fontSize: 16.0,
                wordSpacing: 4.0,
                letterSpacing: 1.0),
          ),
        ),
        Container(
          height: 16.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Friends',
              style: TextStyle(
                  fontFamily: 'Google',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            MaterialButton(
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Text(
                    'See All',
                    style: TextStyle(fontSize: 16.0, color: Colors.lightBlue),
                  ),
                  Container(
                    width: 8.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16.0,
                    color: Colors.lightBlue,
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 108.0,
          child: ListView.builder(
            itemCount: friendList.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) => _friends(
                friendList[index],
                Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                    .withOpacity(1.0)),
          ),
        )
      ],
    );
  }

  Widget _friends(String text, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        minRadius: 32.0,
        child: Text(text),
        backgroundColor: color,
      ),
    );
  }
}
