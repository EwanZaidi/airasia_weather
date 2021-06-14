import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'main')
  String main;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'icon')
  String icon;

  Weather();

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}