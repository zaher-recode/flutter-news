import 'package:flutter/material.dart';
import 'package:realbox/src/article_model.dart';

import 'package:realbox/utilities/constants.dart';
import 'package:realbox/src/location.dart';
import 'package:realbox/src/article_list.dart';
import 'package:realbox/src/networker.dart';

class Local extends StatefulWidget {
  @override
  _LocalState createState() => _LocalState();
}

class _LocalState extends State<Local> {
  var _newsData;
  List<ArticleModel> articles = [];
  @override
  void initState() {
    super.initState();
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
    String url = '$kUrlTop$kCountryEquals${Location.country}$kApiKey';
    Networker newsNetworker = Networker(url);
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
            'Local News in ${Location.countryName}',
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
