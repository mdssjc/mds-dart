import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherApiClient {
  static const baseUrl = 'www.metaweather.com';
  static const baseApi = 'api/location/search';

  Future<int> getLocationId(String city) async {
    final locationUrl = Uri.https(baseUrl, baseApi, {'query': city});

    final locationResponse = await http.get(locationUrl);
    if (locationResponse.statusCode != 200) {
      throw Exception('Error getting locationId for city: $city');
    }
    final locationJson = jsonDecode(locationResponse.body) as List;
    print(locationJson);
    return locationJson.first['woeid'];
  }
}
