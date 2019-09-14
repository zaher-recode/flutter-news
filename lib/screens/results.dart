import 'package:flutter/material.dart';
import 'package:realbox/utilities/constants.dart';
import 'package:realbox/screens/news_feeder.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> routeArgs =
        ModalRoute.of(context).settings.arguments;
    final searchTerm = routeArgs['input'].toUpperCase();
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
                    'Results',
                    style: kTextResults,
                  ),
                ],
              ),
            ),
//              SizedBox(height: 50.0,),

            Expanded(
              child: NewsFeeder(
                text: '$searchTerm News',
                url: '$kUrlAll$kQueryEquals%27$searchTerm%27&language=en&sortBy=publishedAt$kApiKey',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
