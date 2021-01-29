import 'package:http/http.dart' as http;

class WeatherApiClient {
  static const baseUrl = 'https://www.metaweather.com/api';

  Future<int> getLocationId(String city) async {
    final locationUrl = '$baseUrl/location/search/?query=$city';
    final locationResponse = await http.get(locationUrl);
  }
}
