import 'package:weather_app/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
      super.id, super.cityname, super.main, super.description, super.pressure);
      factory WeatherModel.fromjson(Map <String,dynamic> Json)=>
      WeatherModel(
        Json['id'],
        Json['name'],
        Json['weather'][0]["main"],
        Json['weather'][0]["description"],
        Json['main'][0]["pressure"],

      );
}
