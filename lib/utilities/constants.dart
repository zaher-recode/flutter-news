import 'package:flutter/material.dart';

// colors
const kColorDarkGrey = Color(0xFF555555);
const kColorGrey = Color(0xFF707070);
const kColorLightGrey = Color(0xFFD6D6D6);
const kColorOffWhite = Color(0XFFF7F7F7);
const kColorYellow = Color(0xFFEFCB56);
//API NEWS
const kApiKey ='&apiKey=0793fd58c3384ef19ee95aada34b1ae0'; 
const kCountryEquals = 'country=';
const kSourceEquals = 'source=';
const kQueryEquals = 'q=';
const kUrlTop = 'https://newsapi.org/v2/top-headlines?';
const kUrlAll = 'https://newsapi.org/v2/everything?';
// API Country
// const geoUrl = 'http://api.geonames.org/countryCodeJSON?lat=$lot&lng=$lon&username=moh1990';
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
  fontWeight: FontWeight.w700,
  fontSize: 35.0,
);
const kTextSubTitle = TextStyle(
  color: kColorDarkGrey,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
  fontSize: 20.0,
);
const kTextBody = TextStyle(
  color: kColorDarkGrey,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
  fontSize: 16.0,
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
    Icons.public,
    color: Colors.white,
  ),
);
