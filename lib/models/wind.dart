import 'package:json_annotation/json_annotation.dart';

part 'wind.g.dart';

@JsonSerializable()
class Wind {
  @JsonKey(name: 'speed')
  double speed;
  @JsonKey(name: 'deg')
  num deg;
  @JsonKey(name: 'gust')
  double gust;

  Wind();

  factory Wind.fromJson(Map<String, dynamic> json) =>
      _$WindFromJson(json);

  Map<String, dynamic> toJson() => _$WindToJson(this);
}