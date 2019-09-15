import 'package:flutter/material.dart';
import 'package:realbox/src/article_model.dart';

import 'package:realbox/utilities/constants.dart';
import 'package:realbox/src/article_list.dart';
import 'package:realbox/src/networker.dart';

class NewsFeeder extends StatefulWidget {
  final url;
  final text;
  NewsFeeder({@required this.url, @required this.text});

  @override
  _NewsFeederState createState() => _NewsFeederState();
}

class _NewsFeederState extends State<NewsFeeder> {
  String titleText;
  String newsUrl;
  bool _noResults = false;
  bool _noSource = false;
  var _newsData;
  List<ArticleModel> articles = [];
  @override
  void initState() {
    super.initState();
    titleText = widget.text;
    newsUrl = widget.url;
    if (_newsData == null) {
      _getNews();
    }
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void _refresh(data) {
    setState(() {
      _newsData = data;
    });
  }

  Future<void> _getNews() async {
    Networker newsNetworker = Networker(newsUrl);
    _newsData = await newsNetworker.getData();
    _refresh(_newsData);
    if (_newsData == null) {
      _noSource = true;
    } else if (_newsData['totalResults'] == 0) {
      _noResults = true;
    } else {
      for (int i = 0; i < (_newsData['articles']).length; i++) {
        articles.add(ArticleModel.fromJson(_newsData['articles'][i]));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_noResults) {
      return Center(
        child: Text(
          'SORRY! No Results Were Found.',
          style: kTextTitle,
        ),
      );
    }
    if (_noSource) {
      return Center(
        child: Text(
          'SORRY! Source Couldn\'t be Found.',
          style: kTextTitle,
        ),
      );
    }
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 12.0, 0, 8.0),
          child: Text(
            titleText,
            style: kTextTitle,
          ),
        ),
        Expanded(
          child: AtricleList(articles),
        ),
      ],
    );
  }
}
