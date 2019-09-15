import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:realbox/src/article_model.dart';
import 'package:realbox/utilities/constants.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:url_launcher/url_launcher.dart';

class Show extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ArticleModel article = ModalRoute.of(context).settings.arguments;
    final replacedContent= article.content.replaceAll(RegExp(r'( [\+[\d]*. chars])'), '');
    _readMore() async {
      final url = article.url;
      print(url);
      if (await canLaunch(url)) {
        await launch(url,);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      // resizeToAvoidBottomInset: false,
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
                      child: GestureDetector(
                        onTap: (){
                          if(article.sourceId == null){
                            return;
                          }else{
                            Navigator.of(context).pushReplacementNamed(
                              '/results',
                              arguments: {
                                'arg': article.source,
                                'text': article.source,
                                'url':
                                    '${kUrlTop}sources=${article.sourceId}$kApiKey',
                              },
                            );
                          }
                          
                          },
                        child:  Text(
                        article.source,
                        style: kTextResults,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              
              child: Column(
                children: <Widget>[
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
                                style: kTextItalic,
                              ),
                              Text(
                                'By: ${article.author}',
                                style: kTextItalic,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                           Image.network(
                                article.urlToImage,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                               Expanded(
                            child: Container(),
                          ),
                          Text(
                            replacedContent,
                            style: kTextBody,
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              RaisedButton(
                                onPressed: _readMore,
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
            )
          ],
        ),
      ),
    );
  }
}
