import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:realbox/utilities/constants.dart';
import 'package:realbox/src/location.dart';

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
    // get country from gps location
    Location location = Location();
    await location.getContry();
    ////////
    // this loading was supposed to get news and show it later but changed the design.
    ////////
    // String url = '$kUrlTop$kCountryEquals$country$kApiKey';
    // Networker newsNetworker = Networker(url);
    // var newsData = await newsNetworker.getData();
    // NamedRoute with args
    Navigator.of(context).pushReplacementNamed(
      '/index',
      // arguments: {
      //   // 'country': country,
      //   'localNews': newsData,
      // },
    );
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
