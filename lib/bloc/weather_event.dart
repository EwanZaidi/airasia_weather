import 'package:equatable/equatable.dart';

abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class GetWeather extends WeatherEvent {
  final String city;

  GetWeather({this.city});
}

class GetWeatherList extends WeatherEvent {
  final List<String> cities;

  GetWeatherList({this.cities});
}

class GetWeatherUsingLocation extends WeatherEvent {
  final String lat;
  final String lng;

  GetWeatherUsingLocation({this.lat, this.lng});
}

class ResetWeather extends WeatherEvent {}