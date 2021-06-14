import 'package:airasia_weather/models/coord.dart';
import 'package:airasia_weather/models/main.dart';
import 'package:airasia_weather/models/weather.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  @JsonKey(name: 'timezone')
  num timezone;
  @JsonKey(name: 'id')
  num id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'cod')
  num cod;
  @JsonKey(name: 'dt')
  num dt;
  @JsonKey(name: 'dt_txt')
  String dtTxt;
  @JsonKey(name: 'visibility')
  num visibility;
  @JsonKey(name: 'base')
  String base;
  @JsonKey(name: 'coord')
  Coord coord;
  @JsonKey(name: 'weather')
  List<Weather> weathers;
  @JsonKey(name: 'main')
  Main main;

  WeatherResponse();

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}
