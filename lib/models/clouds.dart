import 'package:json_annotation/json_annotation.dart';

part 'clouds.g.dart';

@JsonSerializable()
class Clouds {
  @JsonKey(name: 'all')
  num all;

  Clouds();

  factory Clouds.fromJson(Map<String, dynamic> json) =>
      _$CloudsFromJson(json);

  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}