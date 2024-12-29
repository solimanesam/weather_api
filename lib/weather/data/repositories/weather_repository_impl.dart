import 'package:weather_app/weather/data/data_sources/remote_weather.dart';
import 'package:weather_app/weather/domain/entities/weather.dart';
import 'package:weather_app/weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final RemoteWeather remoteWeather;

  WeatherRepositoryImpl(this.remoteWeather);
  @override
  Future<Weather> getWeatherByCityName(String cityname) async{
  return (await remoteWeather.getWeatherByCityName(cityname))!;
  }
}