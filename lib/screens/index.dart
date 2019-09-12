import 'package:flutter/material.dart';
import 'package:realbox/utilities/constants.dart';
import 'package:realbox/src/location.dart';
import 'package:realbox/src/networker.dart';
import 'package:realbox/screens/sections/business.dart';
import 'package:realbox/screens/sections/entertainment.dart';
import 'package:realbox/screens/sections/general.dart';
import 'package:realbox/screens/sections/science.dart';
import 'package:realbox/screens/sections/sports.dart';
import 'package:realbox/screens/sections/tech.dart';
import 'package:realbox/screens/sections/local.dart';


import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Index extends StatelessWidget {
  final data;
  Index(this.data);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Recode News",
            style: kTextTab,
          ),
          leading: Image.asset('images/logo.png'),
          actions: <Widget>[
            Icon(
              FontAwesomeIcons.search,
              color: kColorGrey,
            ),
          ],
          bottom: TabBar(
            indicatorColor: kColorYellow, // indicator line for selected tab
            indicatorWeight: 4, // size of indicator line
            labelColor: kColorGrey, // for text icons in tabs
            isScrollable:
                true, // make it scrollable and not crambed in one page.

            tabs: [
              Tab(icon: Icon(FontAwesomeIcons.home), text: 'Local'),
              Tab(icon: Icon(FontAwesomeIcons.newspaper), text: 'General'),
              Tab(icon: Icon(FontAwesomeIcons.laptop), text: 'Technology'),
              Tab(icon: Icon(FontAwesomeIcons.chartBar), text: 'Business'),
              Tab(icon: Icon(FontAwesomeIcons.futbol), text: 'Sports'),
              Tab(icon: Icon(FontAwesomeIcons.film), text: 'Entertainment'),
              Tab(icon: Icon(FontAwesomeIcons.atom), text: 'Science'),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              Local(),
              General(),
              Tech(),
              Business(),
              Sports(),
              Entertainment(),
              Science(),
            ],
          ),
        ),
      ),
    );
  }
}
