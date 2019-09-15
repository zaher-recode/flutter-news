import 'package:geolocator/geolocator.dart';
import 'package:realbox/src/networker.dart';

class Location {
  double latitude = 40.7128;
  double longitude = -74.0060;
  static String country, countryName;
  Future<void> _getCurrentLocation() async {
    Position position;
    try {
      position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
    } catch (e) {
      print(e);
    }
    // defaulting to US NY in case no GPS was given;
    try {
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }

  Future<String> getContry() async {
    await _getCurrentLocation();
    Networker locationNetworker = Networker(
        'http://api.geonames.org/countryCodeJSON?lat=$latitude&lng=$longitude&username=moh1990');
    var countryData = await locationNetworker.getData();

    country = countryData['countryCode'].toLowerCase();
    countryName = countryData['countryName'];
    return country;
  }
}
