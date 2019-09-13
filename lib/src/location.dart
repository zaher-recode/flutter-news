import 'package:geolocator/geolocator.dart';
import 'package:realbox/src/networker.dart';

class Location {
  double latitude;
  double longitude;
  static String country, countryName;
  Future<void> _getCurrentLocation() async {
    Position position;
    try {
      position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
    } catch (e) {
      print(e);
    }
    // defaulting to kl in case no GPS was given;
    latitude = position.latitude ?? 3.1390 ;
    longitude = position.longitude ?? 101.6869;
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
