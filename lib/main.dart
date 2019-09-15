import 'package:flutter/material.dart';
import 'package:realbox/screens/loading.dart';
import 'package:realbox/screens/index.dart';
import 'package:realbox/screens/show.dart';
import 'package:realbox/screens/search.dart';
import 'package:realbox/screens/results.dart';
import 'package:realbox/screens/source.dart';
// import 'package:realbox/screens/sections/tech.dart';
// import 'package:realbox/screens/sections/business.dart';
// import 'package:realbox/screens/sections/entertainment.dart';
// import 'package:realbox/screens/sections/general.dart';
// import 'package:realbox/screens/sections/local.dart';
// import 'package:realbox/screens/sections/science.dart';
// import 'package:realbox/screens/sections/sports.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        '/index': (context) => Index(), // working with args
        '/show': (context) => Show(),
        '/search': (context) => Search(),
        '/results': (context) => Results(),
        '/source': (context) => Source(),
        // '/sections/tech': (context) => Tech(),
        // '/sections/business': (context) => Business(),
        // '/sections/entertainment': (context) => Entertainment(),
        // '/sections/general': (context) => General(),
        // '/sections/local': (context) => Local(),
        // '/sections/science': (context) => Science(),
        // '/sections/sports': (context) => Sports(),

      },
    );
  }
}