import 'package:flutter/material.dart';
import 'package:realbox/utilities/constants.dart';

// NOT DONE YET

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    String input;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                    color: kColorGrey,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (value) {
                    input = value;
                  },
                  autofocus: true,
                  autocorrect: true,
                  style: kTextSubTitle,
                  decoration: kSearchDecoration,
                  onSubmitted: (String str){
                    if (str != '') {
                    Navigator.of(context).pushReplacementNamed(
                      '/results',
                      arguments: {
                        'input': str,
                      },
                    );
                    }
                  },
                ),
              ),
              RaisedButton(
                onPressed: () {
                  if (input != null) {
                    Navigator.of(context).pushReplacementNamed(
                      '/results',
                      arguments: {
                        'input': input,
                      },
                    );
                  }
                },
                child: Text(
                  'Search News',
                  style: kTextSearch,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
