import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:realbox/utilities/constants.dart';
import 'package:realbox/src/location.dart';
import 'package:realbox/src/networker.dart';

class Science extends StatefulWidget {
  @override
  _ScienceState createState() => _ScienceState();
}

class _ScienceState extends State<Science> {
  var _scienceNewsData;

  @override
  void initState() {
    super.initState();
    if(_scienceNewsData == null){
      _getNews();
    }
    
  }
@override
  void setState(fn) {
    if(mounted){
      super.setState(fn);
    }
  }
  void refresh(data) {
    setState(() {
      _scienceNewsData = data;
    });
  }

  Future<void> _getNews() async {
    String url = '$kUrlTop$kCountryEquals${Location.country}&category=science$kApiKey';
    Networker localNewsNetworker = Networker(url);
    _scienceNewsData = await localNewsNetworker.getData();
    refresh(_scienceNewsData);
  }

  @override
  Widget build(BuildContext context) {
    print(_scienceNewsData);
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(51.0, 22.0, 0, 28.0),
        child: Text(
          'Science News',
          style: kTextTitle,
        ),
      ),
    );
  }
}
