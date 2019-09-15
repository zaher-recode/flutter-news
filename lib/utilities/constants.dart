import 'package:flutter/material.dart';

// colors
const Color kColorDarkGrey = Color(0xFF555555);
const Color kColorGrey = Color(0xFF707070);
const Color kColorLightGrey = Color(0xFFD6D6D6);
const Color kColorOffWhite = Color(0XFFF7F7F7);
const Color kColorYellow = Color(0xFFEFCB56);
//API NEWS
const String kApiKey ='&apiKey=0793fd58c3384ef19ee95aada34b1ae0'; 
const String kCountryEquals = 'country=';
const String kSourceEquals = 'source=';
const String kQueryEquals = 'q=';
const String kUrlTop = 'https://newsapi.org/v2/top-headlines?pageSize=100&';
const String kUrlAll = 'https://newsapi.org/v2/everything?pageSize=100&';

// Section URLS

// styles
const kTextSplash = TextStyle(
  color: kColorDarkGrey,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
  fontSize: 26.0,
);
const kTextTab = TextStyle(
  color: kColorGrey,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
  fontSize: 20.0,
);
const kTextTitle = TextStyle(
  color: kColorGrey,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  fontSize: 25.0,
);
const kTextSubTitle = TextStyle(
  color: kColorDarkGrey,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  fontSize: 20.0,
);
const kTextBody = TextStyle(
  color: kColorDarkGrey,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  fontSize: 16.0,
);
const kTextSearch = TextStyle(
  color: kColorDarkGrey,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  fontSize: 25.0,
);
const kTextResults = TextStyle(
  color: kColorDarkGrey,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
  fontSize: 25.0,
);
const kTextItalic = TextStyle(
  fontStyle: FontStyle.italic,
  color: kColorGrey
);
const kSearchDecoration = InputDecoration(
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
  filled: true,
  fillColor: Colors.white,
  hintText: 'Search The News',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  icon: Icon(
    Icons.search,
    color: Colors.white,
    size: 30.0,
  ),
);
