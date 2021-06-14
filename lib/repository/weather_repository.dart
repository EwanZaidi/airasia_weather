

import 'package:airasia_weather/functions/Api.dart';
import 'package:airasia_weather/models/response/weather_list_response.dart';
import 'package:airasia_weather/models/response/weather_response.dart';

abstract class BaseWeatherRepository {
  Future<dynamic> getCurrentWeather(String city);
  Future<dynamic> getWeatherByLocation(String lat, String lng);
}

class WeatherRepository extends BaseWeatherRepository {
  WeatherRepository();

  @override
  Future<dynamic> getCurrentWeather(String city) async {
    try {
      var response = await Api.getCurrentWeatherByCity(city);
      return WeatherResponse.fromJson(response);
    } catch (err) {
      return err.toString();
    }
  }

  @override
  Future<dynamic> getWeatherByLocation(String lat, String lng) async {
    try {
      var response = await Api.getWeatherByLocation(lat, lng);
      return WeatherListResponse.fromJson(response);
    } catch (err) {
      return err.toString();
    }
  }

}
