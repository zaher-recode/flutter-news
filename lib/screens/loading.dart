import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:realbox/utilities/constants.dart';
import 'package:realbox/src/location.dart';
import 'package:realbox/src/networker.dart';
import 'package:realbox/screens/index.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    Networker locationNetworker = Networker(
        'http://api.geonames.org/countryCodeJSON?lat=${location.latitude}&lng=${location.longitude}&username=moh1990');
    var countryData = await locationNetworker.getData();
    String url =
        '$kUrlTop$kCountryEquals${countryData['countryCode'].toLowerCase()}$kApiKey';
    Networker newsNetworker = Networker(url);
    var newsData = await newsNetworker.getData();
    // NamedRoute with args
    Navigator.of(context).pushNamed('/index', arguments: {
      'country': countryData['countryCode'].toLowerCase(),
      'localNews': newsData,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/logo.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SpinKitWave(
                color: Colors.amberAccent,
                size: 50.0,
              ),
            ),
            Text(
              'Bringing the world to you',
              style: kTextSplash,
            ),
          ],
        ),
      ),
    );
  }
}
