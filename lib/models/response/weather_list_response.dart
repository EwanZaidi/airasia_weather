import 'package:airasia_weather/models/coord.dart';
import 'package:airasia_weather/models/main.dart';
import 'package:airasia_weather/models/response/weather_response.dart';
import 'package:airasia_weather/models/weather.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_list_response.g.dart';

@JsonSerializable()
class WeatherListResponse {
  @JsonKey(name: 'cod')
  String cod;
  @JsonKey(name: 'message')
  num message;
  @JsonKey(name: 'cnt')
  num cnt;
  @JsonKey(name: 'list')
  List<WeatherResponse> list;

  WeatherListResponse();

  factory WeatherListResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherListResponseToJson(this);
}
