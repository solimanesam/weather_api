import 'package:weather_app/weather/domain/entities/weather.dart';
import 'package:weather_app/weather/domain/repositories/weather_repository.dart';

class WeatherUsecase {
  final WeatherRepository weatherRepository;

  WeatherUsecase(this.weatherRepository);

 Future<Weather> call(String cityname)async{
 return await weatherRepository.getWeatherByCityName(cityname);
 }
  
}