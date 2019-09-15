import 'package:flutter/material.dart';
import 'package:realbox/screens/loading.dart';
import 'package:realbox/screens/index.dart';
import 'package:realbox/screens/show.dart';
import 'package:realbox/screens/search.dart';
import 'package:realbox/screens/results.dart';


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


      },
    );
  }
}