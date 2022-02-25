// ignore_for_file: non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/Model/current.dart';
import 'package:weather_app/Model/daily.dart';
import 'package:weather_app/Model/temp.dart';
import 'package:weather_app/Model/weather.dart';

final _apikey = 'appid=9a57018343c0ced3ee3700b2ef7a3b04';
final _apiparametre = 'data/2.5/onecall?lat=34.686667&lon=-1.911389&';
final _apiBaseURL = 'https://api.openweathermap.org/';

final _CompleteUrl = _apiBaseURL + _apiparametre + _apikey;

fetchdaily() async {
  http.Response response = await http.get(Uri.parse(_CompleteUrl));
  if (response.statusCode == 200) {
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data['daily'][0]['temp']['day'].toString());
  } else {
    throw Exception('Impossi akhoya');
  }
}

Future<List<Daily>> getDaily() async {
  Map<String, dynamic> data = await fetchAllData();
  List<Daily> _daily = [];
  for (int i = 0; i < 7; i++) {
    Daily daily = Daily(
        humidity: data['daily'][i]['humidity'],
        temp: await getTemp(i),
        windSpeed: data['daily'][i]['wind_speed'],
        pop: data['daily'][i]['pop'].toDouble(),
        rain: data['daily'][i]['rain'],
        weather: await getweather('daily', i));
    _daily.add(daily);
  }

  return _daily;
}

Future<Temp> getTemp(int i) async {
  Map<String, dynamic> data = await fetchAllData();

  Temp current = Temp(day: data['daily'][i]['temp']['day']);
  return current;
}

Future<Current> getCurrent() async {
  Map<String, dynamic> data = await fetchAllData();

  Current current = Current(
      humidity: data['current']['humidity'],
      temp: data['current']['temp'],
      windSpeed: data['current']['wind_speed'],
      weather: await getweather('current', 1));
  return current;
}

Future<List<Weather>> getweather(String datafrom, int i) async {
  Map<String, dynamic> data = await fetchAllData();
  List<Weather> _weather = [];
  Weather weather = Weather(
    id: data[datafrom][i]['weather'][0]['id'],
    main: data[datafrom][i]['weather'][0]['main'].toString(),
  );
  _weather.add(weather);
  return _weather;
}

Future<Map<String, dynamic>> fetchAllData() async {
  http.Response response = await http.get(Uri.parse(_CompleteUrl));
  if (response.statusCode == 200) {
    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  } else {
    throw Exception('Impossi akhoya');
  }
}
/*
Future<WeatherAllData> fetchAll() async {
  final response =
      await http.get(Uri.parse(_apiBaseURL + _apiparametre + _apikey));

  if (response.statusCode == 200) {
    print('done');

    return WeatherAllData.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}

Future<Current> fetchWeather() async {
  final response = await http.get(Uri.parse(_CompleteUrl));

  if (response.statusCode == 200) {
    print('done');

    return Current.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
*/