import 'package:flutter/material.dart';
import 'package:realbox/utilities/constants.dart';
import 'package:realbox/src/location.dart';
import 'package:realbox/screens/news_feeder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Recode News",
            style: kTextTitle,
          ),
          leading: Image.asset('images/logo.png'),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              },
              child: Icon(
                FontAwesomeIcons.search,
                color: kColorGrey,
              ),
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
              Tab(icon: Icon(FontAwesomeIcons.heartbeat), text: 'Health'),
              Tab(icon: Icon(FontAwesomeIcons.laptop), text: 'Technology'),
              Tab(icon: Icon(FontAwesomeIcons.chartBar), text: 'Business'),
              Tab(icon: Icon(FontAwesomeIcons.futbol), text: 'Sports'),
              Tab(icon: Icon(FontAwesomeIcons.film), text: 'Entertainment'),
              Tab(icon: Icon(FontAwesomeIcons.atom), text: 'Science'),
              Tab(
                  icon: Icon(FontAwesomeIcons.globeEurope),
                  text: 'Nouvelles Françaises'),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(FontAwesomeIcons.globeEurope),
                title: Text('French'),
                onTap: () {
                  NewsFeeder(
                      text: 'News in French',
                      url: '$kUrlTop${kCountryEquals}fr$kApiKey');
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              NewsFeeder(
                  text: 'Local News in ${Location.countryName}',
                  url: '$kUrlTop$kCountryEquals${Location.country}$kApiKey'),
              NewsFeeder(
                  text: 'Health News',
                  url:
                      '$kUrlTop$kCountryEquals${Location.country}&category=health$kApiKey'),
              NewsFeeder(
                  text: 'Technlogy News',
                  url:
                      '$kUrlTop$kCountryEquals${Location.country}&category=technology$kApiKey'),
              NewsFeeder(
                  text: 'Business News',
                  url:
                      '$kUrlTop$kCountryEquals${Location.country}&category=business$kApiKey'),
              NewsFeeder(
                  text: 'Sports News',
                  url:
                      '$kUrlTop$kCountryEquals${Location.country}&category=sports$kApiKey'),
              NewsFeeder(
                  text: 'Entertainment News',
                  url:
                      '$kUrlTop$kCountryEquals${Location.country}&category=entertainment$kApiKey'),
              NewsFeeder(
                  text: 'Science News',
                  url:
                      '$kUrlTop$kCountryEquals${Location.country}&category=science$kApiKey'),
              NewsFeeder(
                  text: 'Nouvelles Françaises',
                  url: '$kUrlTop${kCountryEquals}fr$kApiKey'),
            ],
          ),
        ),
      ),
    );
  }
}
