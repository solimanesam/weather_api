import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/weather/data/data_sources/remote_weather.dart';
import 'package:weather_app/weather/data/repositories/weather_repository_impl.dart';
import 'package:weather_app/weather/domain/entities/weather.dart';
import 'package:weather_app/weather/domain/repositories/weather_repository.dart';
import 'package:weather_app/weather/domain/usecases/weather_usecase.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());
  Future <Weather> getWeatherByCityNam() async {
   RemoteWeather remoteWeather = RemoteWeatherImpl();
  WeatherRepository weatherRepository = WeatherRepositoryImpl(remoteWeather);
  // ignore: non_constant_identifier_names
 return await WeatherUsecase(weatherRepository).call('Egypt');
   }
}
