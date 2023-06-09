import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/model/weather_model.dart';
class WeatherApiClient {
  Future<Weather>?getCurrentWeather(String?location) async{
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=f3b10f1c03709bb47fc316a2d179d277&units=metric");
    var response = await http.get(endpoint);
    var body =jsonDecode(response.body);
    print(Weather.fromJson(body).cityname);
    return Weather.fromJson(body);
  }
}