import 'package:flutter/material.dart';


class Show extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Show Title",
        ),
        Image.network('https://i.ibb.co/Rzn3kVG/logo.png'),
        Text("this is the show body text")
      ],
    );
  }
}