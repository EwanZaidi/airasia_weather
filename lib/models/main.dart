import 'package:json_annotation/json_annotation.dart';

part 'main.g.dart';

@JsonSerializable()
class Main {
  @JsonKey(name: 'temp')
  num temp;
  @JsonKey(name: 'feels_like')
  num feelsLike;
  @JsonKey(name: 'temp_min')
  num tempMin;
  @JsonKey(name: 'temp_max')
  num tempMax;
  @JsonKey(name: 'pressure')
  num pressure;
  @JsonKey(name: 'humidity')
  num humidity;

  Main();

  factory Main.fromJson(Map<String, dynamic> json) =>
      _$MainFromJson(json);

  Map<String, dynamic> toJson() => _$MainToJson(this);
}