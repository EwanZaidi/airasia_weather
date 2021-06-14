// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return WeatherResponse()
    ..timezone = json['timezone'] as num
    ..id = json['id'] as num
    ..name = json['name'] as String
    ..cod = json['cod'] as num
    ..dt = json['dt'] as num
    ..dtTxt = json['dt_txt'] as String
    ..visibility = json['visibility'] as num
    ..base = json['base'] as String
    ..coord = json['coord'] == null
        ? null
        : Coord.fromJson(json['coord'] as Map<String, dynamic>)
    ..weathers = (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..main = json['main'] == null
        ? null
        : Main.fromJson(json['main'] as Map<String, dynamic>);
}

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
      'dt': instance.dt,
      'dt_txt': instance.dtTxt,
      'visibility': instance.visibility,
      'base': instance.base,
      'coord': instance.coord,
      'weather': instance.weathers,
      'main': instance.main,
    };
