import 'package:flutter/material.dart';
import 'package:realbox/utilities/constants.dart';
import 'package:realbox/screens/news_feeder.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> routeArgs =
        ModalRoute.of(context).settings.arguments;
    final String arg = routeArgs['arg'];
    final String url = routeArgs['url'];
    final String text = routeArgs['text'];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 30.0,
                      color: kColorDarkGrey,
                    ),
                  ),
                  Text(
                    text,
                    style: kTextResults,
                  ),
                ],
              ),
            ),
            Expanded(
              child: NewsFeeder(
                text: '$arg News',
                url: url,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
