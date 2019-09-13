import 'package:flutter/material.dart';
import 'package:realbox/src/article_model.dart';

import 'package:realbox/utilities/constants.dart';
import 'package:realbox/src/article_list.dart';
import 'package:realbox/src/networker.dart';

class NewsFeeder extends StatefulWidget {
  final url;
  final text;
  NewsFeeder({this.url, this.text});
  
  @override
  _NewsFeederState createState() => _NewsFeederState();
}

class _NewsFeederState extends State<NewsFeeder> {

  String titleText;
  String newsUrl;
  var _newsData;
  List<ArticleModel> articles = [];
  @override
  void initState() {
    super.initState();
    titleText = widget.text;
    newsUrl = widget.url;
    if(_newsData == null){
      _getNews();
    }
  }
@override
  void setState(fn) {
    if(mounted){
      super.setState(fn);
    }
  }
  void _refresh(data) {
    setState(() {
      _newsData = data;
    });
  }

  Future<void> _getNews() async {
    //String url = '$kUrlTop$kCountryEquals${Location.country}&category=technology$kApiKey';
    Networker newsNetworker = Networker(newsUrl);
    _newsData = await newsNetworker.getData();
    _refresh(_newsData);
    print(_newsData['totalResults']);
    for (int i = 0; i < (_newsData['articles']).length; i++) {
      articles.add(ArticleModel.fromJson(_newsData['articles'][i]));
    }
  }

  @override
  Widget build(BuildContext context) {
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
          child: AtricleList(articles) ,
        ),

      ],
    );
  }
}
