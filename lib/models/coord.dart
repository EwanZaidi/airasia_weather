import 'package:json_annotation/json_annotation.dart';

part 'coord.g.dart';

@JsonSerializable()
class Coord {
  @JsonKey(name: 'lat')
  num label;
  @JsonKey(name: 'lon')
  num value;

  Coord();

  factory Coord.fromJson(Map<String, dynamic> json) =>
      _$CoordFromJson(json);

  Map<String, dynamic> toJson() => _$CoordToJson(this);
}