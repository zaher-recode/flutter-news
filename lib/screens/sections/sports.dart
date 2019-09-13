import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:realbox/utilities/constants.dart';
import 'package:realbox/src/location.dart';
import 'package:realbox/src/networker.dart';

class Sports extends StatefulWidget {
  @override
  _SportsState createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  var _sportsNewsData;

  @override
  void initState() {
    super.initState();
    _getNews();
  }
@override
  void setState(fn) {
    if(mounted){
      super.setState(fn);
    }
  }
  void refresh(data) {
    setState(() {
      if(_sportsNewsData == null){
      _getNews();
      }
    });
  }

  Future<void> _getNews() async {
    String url = '$kUrlTop$kCountryEquals${Location.country}&category=sports$kApiKey';
    Networker localNewsNetworker = Networker(url);
    _sportsNewsData = await localNewsNetworker.getData();
    refresh(_sportsNewsData);
  }

  @override
  Widget build(BuildContext context) {
    print(_sportsNewsData);
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(51.0, 22.0, 0, 28.0),
        child: Text(
          'Sports News',
          style: kTextTitle,
        ),
      ),
    );
  }
}
