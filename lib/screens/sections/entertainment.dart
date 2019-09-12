import 'package:flutter/material.dart';
import 'package:realbox/utilities/constants.dart';

class Entertainment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(51.0, 22.0, 0, 28.0),
        child: Text(
          'Entertainment News',
          style: kTextTitle,
        ),
      ),
    );
  }
}