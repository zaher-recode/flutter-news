import 'package:flutter/material.dart';
import 'package:realbox/utilities/constants.dart';
import 'package:realbox/screens/news_feeder.dart';

class Source extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String source =
        ModalRoute.of(context).settings.arguments;

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
                    source,
                    style: kTextResults,
                  ),
                ],
              ),
            ),
//              SizedBox(height: 50.0,),

            Expanded(
              child: NewsFeeder(
                text: '$source News',
                url: '${kUrlTop}sources=$source$kApiKey',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
