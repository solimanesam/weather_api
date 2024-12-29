import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/core/constance/constance.dart';
import 'package:weather_app/weather/data/models/weather_model.dart';
import 'package:http/http.dart' as http;

abstract class RemoteWeather {
  Future<WeatherModel?> getWeatherByCityName(String cityname);
}

class RemoteWeatherImpl implements RemoteWeather {
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityname) async {
    try {
      Response response =
          await http.get(Uri.parse('$baseUrl/weather?q=egypt&appid=$appid'));
      var responsebody = jsonDecode(response.body);
      return WeatherModel.fromjson(responsebody);
    } catch (e) {
      return null;
    }
  }
}
