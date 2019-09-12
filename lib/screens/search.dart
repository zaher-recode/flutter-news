import 'package:flutter/material.dart';
import 'package:realbox/utilities/constants.dart';

// NOT DONE YET

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    String input;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.png'),
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
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (value){ input = value;},
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                  decoration: kSearchDecoration,
                ),
              ),
              FlatButton(
                onPressed: () { 
                  Navigator.pop(context, input);},
                child: Text(
                  'Search News',
                  style: kTextSubTitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}