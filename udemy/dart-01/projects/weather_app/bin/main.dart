import 'weather_api_client.dart';

Future<void> main(List<String> arguments) async {
  if (arguments.length != 1) {
    print('Syntax: dart bin/main.dart <city>');
    return;
  }

  final city = arguments.first;
  final api = WeatherApiClient();
  final weather = await api.getWeather(city);
  print(weather);
}
