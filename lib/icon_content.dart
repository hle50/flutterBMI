import 'package:flutter/material.dart';
import './constants.dart';


class IconContent extends StatelessWidget {

  IconContent({@required this.name, @required this.icon});

  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          name,
          style: kTextStyle,
        ),
      ],
    );
  }
}