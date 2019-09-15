import 'package:realbox/utilities/constants.dart';
import 'package:realbox/src/article_model.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class AtricleList extends StatelessWidget {
  final List<ArticleModel> articles;
  AtricleList(this.articles);

  Widget build(context) {
    return ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/show',
                arguments: articles[index]),
            child: Container(
                margin: const EdgeInsets.fromLTRB(21.0, 31.0, 26.0, 0.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: kColorLightGrey,
                      offset: Offset(1.0, 3.0),
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                    )
                  ],
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Stack(
                        alignment: AlignmentDirectional.topStart,
                        fit: StackFit.passthrough,
                        children: <Widget>[
                          Stack(
                            alignment: AlignmentDirectional.bottomStart,
                            fit: StackFit.passthrough,
                            children: <Widget>[
                              Image.network(
                                '${articles[index].urlToImage}',
                                height: 170.0,
                                fit: BoxFit.cover,
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, bottom: 3.0),
                                  child: Text(
                                    timeago.format(articles[index].publishedAt),
                                    style: TextStyle(
                                      backgroundColor: kColorYellow,
                                      fontFamily: 'Roboto',
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                articles[index].source,
                                style: TextStyle(
                                  backgroundColor: kColorLightGrey,
                                  fontFamily: 'Roboto',
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 8.0, 14.0, 10.0),
                        child: Text(
                          '${articles[index].title}',
                          style: kTextSubTitle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 8, 14.0, 10.0),
                        child: Text(
                          '${articles[index].description}',
                          style: kTextBody,
                        ),
                      ),
                    ],
                  ),
                )),
          );
        });
  }
}
