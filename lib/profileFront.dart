import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class Front extends StatelessWidget {
  final avatar =
      "https://lh3.googleusercontent.com/IjhiOT8G99SroAOJFTxmiLjZjL4o8RQzHN_H5LH-tuNPYvAjwhXfgzLCoO2UWb2OSrtcM32h-0tMcRr6DQiOf0j6TYyDXs24pT-HOLLrQnqq2kxz8wllA2_Fllfwkog0uMlnyyev_UBZ5iQG619bhjRWw1LyI2JSEQfgZRg15_cvvdUyK2HlPPk7c_8-_HPmX3cLQsFOCCCkvVHBrc41IfW28rzmr4qW9orZu-_-tIquAUImbjPXTJJ7JqAZTSwyrFwH9cIaOrpmzs6g6E0mM7uwvQCK_912-2ryR2HcjU1SukFlaEZvZK8dyQfLolKUhYmYe7y-RKal3K6GF4A3AguPBuOiuSSkDwe5EhKCbjHaXE-YkBpiFqluAf0Swcf5sBBR6REChAMtCmpbBvr42qnLSvQfz8d32Kbh5HIlyTgkpBRviU1qWeX4QsOlXBCBYLt3_5n1j8ZZWiiYSmevBrpuzH99kCYO89HHYZSFwVT3O5m49zp1BK9tFHG94cGPkT9Il9tq4XW3J_HtyDJx_Xx7DsjpbZYig1A7Uf9txItDQDonCgUzUaDAXUsE6YOYHmTGX4jeqvZVjRkEf-b9-FONkBVbp1mE6YV719oigPMwbUVbjJocH7KPHm64PBi9ln4YE3FD5HSwaHM87Vsl2OkpeQ3iXHD3=s691-no";

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black54,
      height: 2 * size.height / 3,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0,top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 16.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.black54,
            child: ClipOval(child: Image.asset('assets/avatar.jpg')),
            maxRadius: size.width / 6,
          ),
          Container(
            height: 16.0,
          ),
          Text(
            "Target Gadget",
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Google',
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            "New Delhi, ND",
            style: TextStyle(
                fontSize: 16.0, fontFamily: 'Google', color: Colors.white),
          ),
          Container(
            height: 64.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 64.0, right: 64.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _hCard(Icons.notifications_none, 'Alerts', 3),
                _hCard(Icons.favorite_border, 'Places', 12),
                _hCard(Icons.image, 'Shots', 47),
                _hCard(Icons.link, 'Friends', 25)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _hCard(IconData icon, String text, int count) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 40.0,
        ),
        Container(
          height: 8.0,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12.0, color: Colors.white, fontFamily: 'Google'),
        ),
        Container(
          height: 4.0,
        ),
        Text(
          count.toString(),
          style: TextStyle(
              fontSize: 14.0,
              color: Colors.white,
              fontFamily: 'Google',
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
