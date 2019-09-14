import 'package:flutter/material.dart';
import 'package:realbox/src/article_model.dart';
import 'package:realbox/utilities/constants.dart';
import 'package:timeago/timeago.dart' as timeago;

class Show extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ArticleModel article = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: kColorYellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Text(
                        article.source,
                        style: kTextResults,
                      ),
                    ),
                  ],
                ),
              ),
            ),
//              SizedBox(height: 50.0,),

            Card(
                child: Column(
              children: <Widget>[
                Text(
                  article.title,
                  style: kTextTitle,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        timeago.format(article.publishedAt),
                        style: kTextBody,
                      ),
                      Text(
                        'By: ${article.author}',
                        style: kTextBody,
                      ),
                    ],
                  ),
                ),
              ],
            )),
            Expanded(
              child: Card(
                child: Column(
                  children: <Widget>[
                    Image.network(article.urlToImage),
                    Text(
                      article.content,
                      style: kTextSubTitle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {},
                          child: Text('Read More'),
                          color: kColorYellow,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
